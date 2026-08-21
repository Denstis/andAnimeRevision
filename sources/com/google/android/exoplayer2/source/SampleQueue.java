package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.decoder.CryptoInfo;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.SampleMetadataQueue;
import com.google.android.exoplayer2.upstream.Allocation;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.io.EOFException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class SampleQueue implements TrackOutput {
    public static final int ADVANCE_FAILED = -1;
    private static final int INITIAL_SCRATCH_SIZE = 32;
    private final int allocationLength;
    private final Allocator allocator;
    private Format downstreamFormat;
    private AllocationNode firstAllocationNode;
    private Format lastUnadjustedFormat;
    private boolean pendingFormatAdjustment;
    private boolean pendingSplice;
    private AllocationNode readAllocationNode;
    private long sampleOffsetUs;
    private long totalBytesWritten;
    private UpstreamFormatChangedListener upstreamFormatChangeListener;
    private AllocationNode writeAllocationNode;
    private final SampleMetadataQueue metadataQueue = new SampleMetadataQueue();
    private final SampleMetadataQueue.SampleExtrasHolder extrasHolder = new SampleMetadataQueue.SampleExtrasHolder();
    private final ParsableByteArray scratch = new ParsableByteArray(32);

    private static final class AllocationNode {
        public Allocation allocation;
        public final long endPosition;
        public AllocationNode next;
        public final long startPosition;
        public boolean wasInitialized;

        public AllocationNode(long j2, int i2) {
            this.startPosition = j2;
            this.endPosition = j2 + ((long) i2);
        }

        public AllocationNode clear() {
            this.allocation = null;
            AllocationNode allocationNode = this.next;
            this.next = null;
            return allocationNode;
        }

        public void initialize(Allocation allocation, AllocationNode allocationNode) {
            this.allocation = allocation;
            this.next = allocationNode;
            this.wasInitialized = true;
        }

        public int translateOffset(long j2) {
            return ((int) (j2 - this.startPosition)) + this.allocation.offset;
        }
    }

    public interface UpstreamFormatChangedListener {
        void onUpstreamFormatChanged(Format format);
    }

    public SampleQueue(Allocator allocator) {
        this.allocator = allocator;
        this.allocationLength = allocator.getIndividualAllocationLength();
        this.firstAllocationNode = new AllocationNode(0L, this.allocationLength);
        AllocationNode allocationNode = this.firstAllocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
    }

    private void advanceReadTo(long j2) {
        while (true) {
            AllocationNode allocationNode = this.readAllocationNode;
            if (j2 < allocationNode.endPosition) {
                return;
            } else {
                this.readAllocationNode = allocationNode.next;
            }
        }
    }

    private void clearAllocationNodes(AllocationNode allocationNode) {
        if (allocationNode.wasInitialized) {
            AllocationNode allocationNode2 = this.writeAllocationNode;
            boolean z = allocationNode2.wasInitialized;
            Allocation[] allocationArr = new Allocation[(z ? 1 : 0) + (((int) (allocationNode2.startPosition - allocationNode.startPosition)) / this.allocationLength)];
            for (int i2 = 0; i2 < allocationArr.length; i2++) {
                allocationArr[i2] = allocationNode.allocation;
                allocationNode = allocationNode.clear();
            }
            this.allocator.release(allocationArr);
        }
    }

    private void discardDownstreamTo(long j2) {
        AllocationNode allocationNode;
        if (j2 == -1) {
            return;
        }
        while (true) {
            allocationNode = this.firstAllocationNode;
            if (j2 < allocationNode.endPosition) {
                break;
            }
            this.allocator.release(allocationNode.allocation);
            this.firstAllocationNode = this.firstAllocationNode.clear();
        }
        if (this.readAllocationNode.startPosition < allocationNode.startPosition) {
            this.readAllocationNode = allocationNode;
        }
    }

    private static Format getAdjustedSampleFormat(Format format, long j2) {
        if (format == null) {
            return null;
        }
        if (j2 == 0) {
            return format;
        }
        long j3 = format.subsampleOffsetUs;
        return j3 != Long.MAX_VALUE ? format.copyWithSubsampleOffsetUs(j3 + j2) : format;
    }

    private void postAppend(int i2) {
        this.totalBytesWritten += (long) i2;
        long j2 = this.totalBytesWritten;
        AllocationNode allocationNode = this.writeAllocationNode;
        if (j2 == allocationNode.endPosition) {
            this.writeAllocationNode = allocationNode.next;
        }
    }

    private int preAppend(int i2) {
        AllocationNode allocationNode = this.writeAllocationNode;
        if (!allocationNode.wasInitialized) {
            allocationNode.initialize(this.allocator.allocate(), new AllocationNode(this.writeAllocationNode.endPosition, this.allocationLength));
        }
        return Math.min(i2, (int) (this.writeAllocationNode.endPosition - this.totalBytesWritten));
    }

    private void readData(long j2, ByteBuffer byteBuffer, int i2) {
        advanceReadTo(j2);
        while (i2 > 0) {
            int iMin = Math.min(i2, (int) (this.readAllocationNode.endPosition - j2));
            AllocationNode allocationNode = this.readAllocationNode;
            byteBuffer.put(allocationNode.allocation.data, allocationNode.translateOffset(j2), iMin);
            i2 -= iMin;
            j2 += (long) iMin;
            AllocationNode allocationNode2 = this.readAllocationNode;
            if (j2 == allocationNode2.endPosition) {
                this.readAllocationNode = allocationNode2.next;
            }
        }
    }

    private void readData(long j2, byte[] bArr, int i2) {
        advanceReadTo(j2);
        long j3 = j2;
        int i3 = i2;
        while (i3 > 0) {
            int iMin = Math.min(i3, (int) (this.readAllocationNode.endPosition - j3));
            AllocationNode allocationNode = this.readAllocationNode;
            System.arraycopy(allocationNode.allocation.data, allocationNode.translateOffset(j3), bArr, i2 - i3, iMin);
            i3 -= iMin;
            j3 += (long) iMin;
            AllocationNode allocationNode2 = this.readAllocationNode;
            if (j3 == allocationNode2.endPosition) {
                this.readAllocationNode = allocationNode2.next;
            }
        }
    }

    private void readEncryptionData(DecoderInputBuffer decoderInputBuffer, SampleMetadataQueue.SampleExtrasHolder sampleExtrasHolder) {
        int unsignedShort;
        long j2 = sampleExtrasHolder.offset;
        this.scratch.reset(1);
        readData(j2, this.scratch.data, 1);
        long j3 = j2 + 1;
        byte b2 = this.scratch.data[0];
        boolean z = (b2 & 128) != 0;
        int i2 = b2 & 127;
        CryptoInfo cryptoInfo = decoderInputBuffer.cryptoInfo;
        if (cryptoInfo.iv == null) {
            cryptoInfo.iv = new byte[16];
        }
        readData(j3, decoderInputBuffer.cryptoInfo.iv, i2);
        long j4 = j3 + ((long) i2);
        if (z) {
            this.scratch.reset(2);
            readData(j4, this.scratch.data, 2);
            j4 += 2;
            unsignedShort = this.scratch.readUnsignedShort();
        } else {
            unsignedShort = 1;
        }
        int[] iArr = decoderInputBuffer.cryptoInfo.numBytesOfClearData;
        if (iArr == null || iArr.length < unsignedShort) {
            iArr = new int[unsignedShort];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = decoderInputBuffer.cryptoInfo.numBytesOfEncryptedData;
        if (iArr3 == null || iArr3.length < unsignedShort) {
            iArr3 = new int[unsignedShort];
        }
        int[] iArr4 = iArr3;
        if (z) {
            int i3 = unsignedShort * 6;
            this.scratch.reset(i3);
            readData(j4, this.scratch.data, i3);
            j4 += (long) i3;
            this.scratch.setPosition(0);
            for (int i4 = 0; i4 < unsignedShort; i4++) {
                iArr2[i4] = this.scratch.readUnsignedShort();
                iArr4[i4] = this.scratch.readUnsignedIntToInt();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = sampleExtrasHolder.size - ((int) (j4 - sampleExtrasHolder.offset));
        }
        TrackOutput.CryptoData cryptoData = sampleExtrasHolder.cryptoData;
        CryptoInfo cryptoInfo2 = decoderInputBuffer.cryptoInfo;
        cryptoInfo2.set(unsignedShort, iArr2, iArr4, cryptoData.encryptionKey, cryptoInfo2.iv, cryptoData.cryptoMode, cryptoData.encryptedBlocks, cryptoData.clearBlocks);
        long j5 = sampleExtrasHolder.offset;
        int i5 = (int) (j4 - j5);
        sampleExtrasHolder.offset = j5 + ((long) i5);
        sampleExtrasHolder.size -= i5;
    }

    public int advanceTo(long j2, boolean z, boolean z2) {
        return this.metadataQueue.advanceTo(j2, z, z2);
    }

    public int advanceToEnd() {
        return this.metadataQueue.advanceToEnd();
    }

    public void discardTo(long j2, boolean z, boolean z2) {
        discardDownstreamTo(this.metadataQueue.discardTo(j2, z, z2));
    }

    public void discardToEnd() {
        discardDownstreamTo(this.metadataQueue.discardToEnd());
    }

    public void discardToRead() {
        discardDownstreamTo(this.metadataQueue.discardToRead());
    }

    public void discardUpstreamSamples(int i2) {
        this.totalBytesWritten = this.metadataQueue.discardUpstreamSamples(i2);
        long j2 = this.totalBytesWritten;
        if (j2 != 0) {
            AllocationNode allocationNode = this.firstAllocationNode;
            if (j2 != allocationNode.startPosition) {
                while (this.totalBytesWritten > allocationNode.endPosition) {
                    allocationNode = allocationNode.next;
                }
                AllocationNode allocationNode2 = allocationNode.next;
                clearAllocationNodes(allocationNode2);
                allocationNode.next = new AllocationNode(allocationNode.endPosition, this.allocationLength);
                this.writeAllocationNode = this.totalBytesWritten == allocationNode.endPosition ? allocationNode.next : allocationNode;
                if (this.readAllocationNode == allocationNode2) {
                    this.readAllocationNode = allocationNode.next;
                    return;
                }
                return;
            }
        }
        clearAllocationNodes(this.firstAllocationNode);
        this.firstAllocationNode = new AllocationNode(this.totalBytesWritten, this.allocationLength);
        AllocationNode allocationNode3 = this.firstAllocationNode;
        this.readAllocationNode = allocationNode3;
        this.writeAllocationNode = allocationNode3;
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public void format(Format format) {
        Format adjustedSampleFormat = getAdjustedSampleFormat(format, this.sampleOffsetUs);
        boolean z = this.metadataQueue.format(adjustedSampleFormat);
        this.lastUnadjustedFormat = format;
        this.pendingFormatAdjustment = false;
        UpstreamFormatChangedListener upstreamFormatChangedListener = this.upstreamFormatChangeListener;
        if (upstreamFormatChangedListener == null || !z) {
            return;
        }
        upstreamFormatChangedListener.onUpstreamFormatChanged(adjustedSampleFormat);
    }

    public int getFirstIndex() {
        return this.metadataQueue.getFirstIndex();
    }

    public long getFirstTimestampUs() {
        return this.metadataQueue.getFirstTimestampUs();
    }

    public long getLargestQueuedTimestampUs() {
        return this.metadataQueue.getLargestQueuedTimestampUs();
    }

    public int getReadIndex() {
        return this.metadataQueue.getReadIndex();
    }

    public Format getUpstreamFormat() {
        return this.metadataQueue.getUpstreamFormat();
    }

    public int getWriteIndex() {
        return this.metadataQueue.getWriteIndex();
    }

    public boolean hasNextSample() {
        return this.metadataQueue.hasNextSample();
    }

    public boolean isLastSampleQueued() {
        return this.metadataQueue.isLastSampleQueued();
    }

    public int peekSourceId() {
        return this.metadataQueue.peekSourceId();
    }

    public int read(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, boolean z, boolean z2, long j2) {
        int i2 = this.metadataQueue.read(formatHolder, decoderInputBuffer, z, z2, this.downstreamFormat, this.extrasHolder);
        if (i2 == -5) {
            this.downstreamFormat = formatHolder.format;
            return -5;
        }
        if (i2 != -4) {
            if (i2 == -3) {
                return -3;
            }
            throw new IllegalStateException();
        }
        if (!decoderInputBuffer.isEndOfStream()) {
            if (decoderInputBuffer.timeUs < j2) {
                decoderInputBuffer.addFlag(Integer.MIN_VALUE);
            }
            if (decoderInputBuffer.isEncrypted()) {
                readEncryptionData(decoderInputBuffer, this.extrasHolder);
            }
            decoderInputBuffer.ensureSpaceForWrite(this.extrasHolder.size);
            SampleMetadataQueue.SampleExtrasHolder sampleExtrasHolder = this.extrasHolder;
            readData(sampleExtrasHolder.offset, decoderInputBuffer.data, sampleExtrasHolder.size);
        }
        return -4;
    }

    public void reset() {
        reset(false);
    }

    public void reset(boolean z) {
        this.metadataQueue.reset(z);
        clearAllocationNodes(this.firstAllocationNode);
        this.firstAllocationNode = new AllocationNode(0L, this.allocationLength);
        AllocationNode allocationNode = this.firstAllocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
        this.totalBytesWritten = 0L;
        this.allocator.trim();
    }

    public void rewind() {
        this.metadataQueue.rewind();
        this.readAllocationNode = this.firstAllocationNode;
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public int sampleData(ExtractorInput extractorInput, int i2, boolean z) throws EOFException {
        int iPreAppend = preAppend(i2);
        AllocationNode allocationNode = this.writeAllocationNode;
        int i3 = extractorInput.read(allocationNode.allocation.data, allocationNode.translateOffset(this.totalBytesWritten), iPreAppend);
        if (i3 != -1) {
            postAppend(i3);
            return i3;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public void sampleData(ParsableByteArray parsableByteArray, int i2) {
        while (i2 > 0) {
            int iPreAppend = preAppend(i2);
            AllocationNode allocationNode = this.writeAllocationNode;
            parsableByteArray.readBytes(allocationNode.allocation.data, allocationNode.translateOffset(this.totalBytesWritten), iPreAppend);
            i2 -= iPreAppend;
            postAppend(iPreAppend);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.TrackOutput
    public void sampleMetadata(long j2, int i2, int i3, int i4, TrackOutput.CryptoData cryptoData) {
        if (this.pendingFormatAdjustment) {
            format(this.lastUnadjustedFormat);
        }
        long j3 = j2 + this.sampleOffsetUs;
        if (this.pendingSplice) {
            if ((i2 & 1) == 0 || !this.metadataQueue.attemptSplice(j3)) {
                return;
            } else {
                this.pendingSplice = false;
            }
        }
        this.metadataQueue.commitSample(j3, i2, (this.totalBytesWritten - ((long) i3)) - ((long) i4), i3, cryptoData);
    }

    public boolean setReadPosition(int i2) {
        return this.metadataQueue.setReadPosition(i2);
    }

    public void setSampleOffsetUs(long j2) {
        if (this.sampleOffsetUs != j2) {
            this.sampleOffsetUs = j2;
            this.pendingFormatAdjustment = true;
        }
    }

    public void setUpstreamFormatChangeListener(UpstreamFormatChangedListener upstreamFormatChangedListener) {
        this.upstreamFormatChangeListener = upstreamFormatChangedListener;
    }

    public void sourceId(int i2) {
        this.metadataQueue.sourceId(i2);
    }

    public void splice() {
        this.pendingSplice = true;
    }
}
