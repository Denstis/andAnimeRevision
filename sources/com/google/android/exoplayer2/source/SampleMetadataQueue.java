package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes.dex */
final class SampleMetadataQueue {
    private static final int SAMPLE_CAPACITY_INCREMENT = 1000;
    private int absoluteFirstIndex;
    private int capacity = SAMPLE_CAPACITY_INCREMENT;
    private TrackOutput.CryptoData[] cryptoDatas;
    private int[] flags;
    private Format[] formats;
    private boolean isLastSampleQueued;
    private long largestDiscardedTimestampUs;
    private long largestQueuedTimestampUs;
    private int length;
    private long[] offsets;
    private int readPosition;
    private int relativeFirstIndex;
    private int[] sizes;
    private int[] sourceIds;
    private long[] timesUs;
    private Format upstreamFormat;
    private boolean upstreamFormatRequired;
    private boolean upstreamKeyframeRequired;
    private int upstreamSourceId;

    public static final class SampleExtrasHolder {
        public TrackOutput.CryptoData cryptoData;
        public long offset;
        public int size;
    }

    public SampleMetadataQueue() {
        int i2 = this.capacity;
        this.sourceIds = new int[i2];
        this.offsets = new long[i2];
        this.timesUs = new long[i2];
        this.flags = new int[i2];
        this.sizes = new int[i2];
        this.cryptoDatas = new TrackOutput.CryptoData[i2];
        this.formats = new Format[i2];
        this.largestDiscardedTimestampUs = Long.MIN_VALUE;
        this.largestQueuedTimestampUs = Long.MIN_VALUE;
        this.upstreamFormatRequired = true;
        this.upstreamKeyframeRequired = true;
    }

    private long discardSamples(int i2) {
        this.largestDiscardedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(i2));
        this.length -= i2;
        this.absoluteFirstIndex += i2;
        this.relativeFirstIndex += i2;
        int i3 = this.relativeFirstIndex;
        int i4 = this.capacity;
        if (i3 >= i4) {
            this.relativeFirstIndex = i3 - i4;
        }
        this.readPosition -= i2;
        if (this.readPosition < 0) {
            this.readPosition = 0;
        }
        if (this.length != 0) {
            return this.offsets[this.relativeFirstIndex];
        }
        int i5 = this.relativeFirstIndex;
        if (i5 == 0) {
            i5 = this.capacity;
        }
        int i6 = i5 - 1;
        return this.offsets[i6] + ((long) this.sizes[i6]);
    }

    private int findSampleBefore(int i2, int i3, long j2, boolean z) {
        int i4 = i2;
        int i5 = -1;
        for (int i6 = 0; i6 < i3 && this.timesUs[i4] <= j2; i6++) {
            if (!z || (this.flags[i4] & 1) != 0) {
                i5 = i6;
            }
            i4++;
            if (i4 == this.capacity) {
                i4 = 0;
            }
        }
        return i5;
    }

    private long getLargestTimestamp(int i2) {
        long jMax = Long.MIN_VALUE;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int relativeIndex = getRelativeIndex(i2 - 1);
        for (int i3 = 0; i3 < i2; i3++) {
            jMax = Math.max(jMax, this.timesUs[relativeIndex]);
            if ((this.flags[relativeIndex] & 1) != 0) {
                break;
            }
            relativeIndex--;
            if (relativeIndex == -1) {
                relativeIndex = this.capacity - 1;
            }
        }
        return jMax;
    }

    private int getRelativeIndex(int i2) {
        int i3 = this.relativeFirstIndex + i2;
        int i4 = this.capacity;
        return i3 < i4 ? i3 : i3 - i4;
    }

    public synchronized int advanceTo(long j2, boolean z, boolean z2) {
        int relativeIndex = getRelativeIndex(this.readPosition);
        if (hasNextSample() && j2 >= this.timesUs[relativeIndex] && (j2 <= this.largestQueuedTimestampUs || z2)) {
            int iFindSampleBefore = findSampleBefore(relativeIndex, this.length - this.readPosition, j2, z);
            if (iFindSampleBefore == -1) {
                return -1;
            }
            this.readPosition += iFindSampleBefore;
            return iFindSampleBefore;
        }
        return -1;
    }

    public synchronized int advanceToEnd() {
        int i2;
        i2 = this.length - this.readPosition;
        this.readPosition = this.length;
        return i2;
    }

    public synchronized boolean attemptSplice(long j2) {
        if (this.length == 0) {
            return j2 > this.largestDiscardedTimestampUs;
        }
        if (Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(this.readPosition)) >= j2) {
            return false;
        }
        int i2 = this.length;
        int relativeIndex = getRelativeIndex(this.length - 1);
        while (i2 > this.readPosition && this.timesUs[relativeIndex] >= j2) {
            i2--;
            relativeIndex--;
            if (relativeIndex == -1) {
                relativeIndex = this.capacity - 1;
            }
        }
        discardUpstreamSamples(this.absoluteFirstIndex + i2);
        return true;
    }

    public synchronized void commitSample(long j2, int i2, long j3, int i3, TrackOutput.CryptoData cryptoData) {
        if (this.upstreamKeyframeRequired) {
            if ((i2 & 1) == 0) {
                return;
            } else {
                this.upstreamKeyframeRequired = false;
            }
        }
        Assertions.checkState(!this.upstreamFormatRequired);
        this.isLastSampleQueued = (536870912 & i2) != 0;
        this.largestQueuedTimestampUs = Math.max(this.largestQueuedTimestampUs, j2);
        int relativeIndex = getRelativeIndex(this.length);
        this.timesUs[relativeIndex] = j2;
        this.offsets[relativeIndex] = j3;
        this.sizes[relativeIndex] = i3;
        this.flags[relativeIndex] = i2;
        this.cryptoDatas[relativeIndex] = cryptoData;
        this.formats[relativeIndex] = this.upstreamFormat;
        this.sourceIds[relativeIndex] = this.upstreamSourceId;
        this.length++;
        if (this.length == this.capacity) {
            int i4 = this.capacity + SAMPLE_CAPACITY_INCREMENT;
            int[] iArr = new int[i4];
            long[] jArr = new long[i4];
            long[] jArr2 = new long[i4];
            int[] iArr2 = new int[i4];
            int[] iArr3 = new int[i4];
            TrackOutput.CryptoData[] cryptoDataArr = new TrackOutput.CryptoData[i4];
            Format[] formatArr = new Format[i4];
            int i5 = this.capacity - this.relativeFirstIndex;
            System.arraycopy(this.offsets, this.relativeFirstIndex, jArr, 0, i5);
            System.arraycopy(this.timesUs, this.relativeFirstIndex, jArr2, 0, i5);
            System.arraycopy(this.flags, this.relativeFirstIndex, iArr2, 0, i5);
            System.arraycopy(this.sizes, this.relativeFirstIndex, iArr3, 0, i5);
            System.arraycopy(this.cryptoDatas, this.relativeFirstIndex, cryptoDataArr, 0, i5);
            System.arraycopy(this.formats, this.relativeFirstIndex, formatArr, 0, i5);
            System.arraycopy(this.sourceIds, this.relativeFirstIndex, iArr, 0, i5);
            int i6 = this.relativeFirstIndex;
            System.arraycopy(this.offsets, 0, jArr, i5, i6);
            System.arraycopy(this.timesUs, 0, jArr2, i5, i6);
            System.arraycopy(this.flags, 0, iArr2, i5, i6);
            System.arraycopy(this.sizes, 0, iArr3, i5, i6);
            System.arraycopy(this.cryptoDatas, 0, cryptoDataArr, i5, i6);
            System.arraycopy(this.formats, 0, formatArr, i5, i6);
            System.arraycopy(this.sourceIds, 0, iArr, i5, i6);
            this.offsets = jArr;
            this.timesUs = jArr2;
            this.flags = iArr2;
            this.sizes = iArr3;
            this.cryptoDatas = cryptoDataArr;
            this.formats = formatArr;
            this.sourceIds = iArr;
            this.relativeFirstIndex = 0;
            this.length = this.capacity;
            this.capacity = i4;
        }
    }

    public synchronized long discardTo(long j2, boolean z, boolean z2) {
        if (this.length != 0 && j2 >= this.timesUs[this.relativeFirstIndex]) {
            int iFindSampleBefore = findSampleBefore(this.relativeFirstIndex, (!z2 || this.readPosition == this.length) ? this.length : this.readPosition + 1, j2, z);
            if (iFindSampleBefore == -1) {
                return -1L;
            }
            return discardSamples(iFindSampleBefore);
        }
        return -1L;
    }

    public synchronized long discardToEnd() {
        if (this.length == 0) {
            return -1L;
        }
        return discardSamples(this.length);
    }

    public synchronized long discardToRead() {
        if (this.readPosition == 0) {
            return -1L;
        }
        return discardSamples(this.readPosition);
    }

    public long discardUpstreamSamples(int i2) {
        int writeIndex = getWriteIndex() - i2;
        boolean z = false;
        Assertions.checkArgument(writeIndex >= 0 && writeIndex <= this.length - this.readPosition);
        this.length -= writeIndex;
        this.largestQueuedTimestampUs = Math.max(this.largestDiscardedTimestampUs, getLargestTimestamp(this.length));
        if (writeIndex == 0 && this.isLastSampleQueued) {
            z = true;
        }
        this.isLastSampleQueued = z;
        int i3 = this.length;
        if (i3 == 0) {
            return 0L;
        }
        int relativeIndex = getRelativeIndex(i3 - 1);
        return this.offsets[relativeIndex] + ((long) this.sizes[relativeIndex]);
    }

    public synchronized boolean format(Format format) {
        if (format == null) {
            this.upstreamFormatRequired = true;
            return false;
        }
        this.upstreamFormatRequired = false;
        if (Util.areEqual(format, this.upstreamFormat)) {
            return false;
        }
        this.upstreamFormat = format;
        return true;
    }

    public int getFirstIndex() {
        return this.absoluteFirstIndex;
    }

    public synchronized long getFirstTimestampUs() {
        return this.length == 0 ? Long.MIN_VALUE : this.timesUs[this.relativeFirstIndex];
    }

    public synchronized long getLargestQueuedTimestampUs() {
        return this.largestQueuedTimestampUs;
    }

    public int getReadIndex() {
        return this.absoluteFirstIndex + this.readPosition;
    }

    public synchronized Format getUpstreamFormat() {
        return this.upstreamFormatRequired ? null : this.upstreamFormat;
    }

    public int getWriteIndex() {
        return this.absoluteFirstIndex + this.length;
    }

    public synchronized boolean hasNextSample() {
        return this.readPosition != this.length;
    }

    public synchronized boolean isLastSampleQueued() {
        return this.isLastSampleQueued;
    }

    public int peekSourceId() {
        return hasNextSample() ? this.sourceIds[getRelativeIndex(this.readPosition)] : this.upstreamSourceId;
    }

    public synchronized int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, Format format, SampleExtrasHolder sampleExtrasHolder) {
        if (!hasNextSample()) {
            if (!z2 && !this.isLastSampleQueued) {
                if (this.upstreamFormat == null || (!z && this.upstreamFormat == format)) {
                    return -3;
                }
                formatHolder.format = this.upstreamFormat;
                return -5;
            }
            decoderInputBuffer.setFlags(4);
            return -4;
        }
        int relativeIndex = getRelativeIndex(this.readPosition);
        if (!z && this.formats[relativeIndex] == format) {
            if (decoderInputBuffer.isFlagsOnly()) {
                return -3;
            }
            decoderInputBuffer.timeUs = this.timesUs[relativeIndex];
            decoderInputBuffer.setFlags(this.flags[relativeIndex]);
            sampleExtrasHolder.size = this.sizes[relativeIndex];
            sampleExtrasHolder.offset = this.offsets[relativeIndex];
            sampleExtrasHolder.cryptoData = this.cryptoDatas[relativeIndex];
            this.readPosition++;
            return -4;
        }
        formatHolder.format = this.formats[relativeIndex];
        return -5;
    }

    public void reset(boolean z) {
        this.length = 0;
        this.absoluteFirstIndex = 0;
        this.relativeFirstIndex = 0;
        this.readPosition = 0;
        this.upstreamKeyframeRequired = true;
        this.largestDiscardedTimestampUs = Long.MIN_VALUE;
        this.largestQueuedTimestampUs = Long.MIN_VALUE;
        this.isLastSampleQueued = false;
        if (z) {
            this.upstreamFormat = null;
            this.upstreamFormatRequired = true;
        }
    }

    public synchronized void rewind() {
        this.readPosition = 0;
    }

    public synchronized boolean setReadPosition(int i2) {
        boolean z;
        if (this.absoluteFirstIndex > i2 || i2 > this.absoluteFirstIndex + this.length) {
            z = false;
        } else {
            this.readPosition = i2 - this.absoluteFirstIndex;
            z = true;
        }
        return z;
    }

    public void sourceId(int i2) {
        this.upstreamSourceId = i2;
    }
}
