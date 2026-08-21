package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultExtractorInput implements ExtractorInput {
    private static final int PEEK_MAX_FREE_SPACE = 524288;
    private static final int PEEK_MIN_FREE_SPACE_AFTER_RESIZE = 65536;
    private static final int SCRATCH_SPACE_SIZE = 4096;
    private final DataSource dataSource;
    private int peekBufferLength;
    private int peekBufferPosition;
    private long position;
    private final long streamLength;
    private byte[] peekBuffer = new byte[65536];
    private final byte[] scratchSpace = new byte[4096];

    public DefaultExtractorInput(DataSource dataSource, long j2, long j3) {
        this.dataSource = dataSource;
        this.position = j2;
        this.streamLength = j3;
    }

    private void commitBytesRead(int i2) {
        if (i2 != -1) {
            this.position += (long) i2;
        }
    }

    private void ensureSpaceForPeek(int i2) {
        int i3 = this.peekBufferPosition + i2;
        byte[] bArr = this.peekBuffer;
        if (i3 > bArr.length) {
            this.peekBuffer = Arrays.copyOf(this.peekBuffer, Util.constrainValue(bArr.length * 2, 65536 + i3, i3 + PEEK_MAX_FREE_SPACE));
        }
    }

    private int readFromDataSource(byte[] bArr, int i2, int i3, int i4, boolean z) throws InterruptedException, EOFException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int i5 = this.dataSource.read(bArr, i2 + i4, i3 - i4);
        if (i5 != -1) {
            return i4 + i5;
        }
        if (i4 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    private int readFromPeekBuffer(byte[] bArr, int i2, int i3) {
        int i4 = this.peekBufferLength;
        if (i4 == 0) {
            return 0;
        }
        int iMin = Math.min(i4, i3);
        System.arraycopy(this.peekBuffer, 0, bArr, i2, iMin);
        updatePeekBuffer(iMin);
        return iMin;
    }

    private int skipFromPeekBuffer(int i2) {
        int iMin = Math.min(this.peekBufferLength, i2);
        updatePeekBuffer(iMin);
        return iMin;
    }

    private void updatePeekBuffer(int i2) {
        this.peekBufferLength -= i2;
        this.peekBufferPosition = 0;
        byte[] bArr = this.peekBuffer;
        int i3 = this.peekBufferLength;
        if (i3 < bArr.length - PEEK_MAX_FREE_SPACE) {
            bArr = new byte[i3 + 65536];
        }
        System.arraycopy(this.peekBuffer, i2, bArr, 0, this.peekBufferLength);
        this.peekBuffer = bArr;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void advancePeekPosition(int i2) throws InterruptedException, EOFException {
        advancePeekPosition(i2, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean advancePeekPosition(int i2, boolean z) throws InterruptedException, EOFException {
        ensureSpaceForPeek(i2);
        int fromDataSource = this.peekBufferLength - this.peekBufferPosition;
        while (fromDataSource < i2) {
            fromDataSource = readFromDataSource(this.peekBuffer, this.peekBufferPosition, i2, fromDataSource, z);
            if (fromDataSource == -1) {
                return false;
            }
            this.peekBufferLength = this.peekBufferPosition + fromDataSource;
        }
        this.peekBufferPosition += i2;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public long getLength() {
        return this.streamLength;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public long getPeekPosition() {
        return this.position + ((long) this.peekBufferPosition);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public long getPosition() {
        return this.position;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void peekFully(byte[] bArr, int i2, int i3) {
        peekFully(bArr, i2, i3, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean peekFully(byte[] bArr, int i2, int i3, boolean z) {
        if (!advancePeekPosition(i3, z)) {
            return false;
        }
        System.arraycopy(this.peekBuffer, this.peekBufferPosition - i3, bArr, i2, i3);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public int read(byte[] bArr, int i2, int i3) throws InterruptedException, EOFException {
        int fromPeekBuffer = readFromPeekBuffer(bArr, i2, i3);
        if (fromPeekBuffer == 0) {
            fromPeekBuffer = readFromDataSource(bArr, i2, i3, 0, true);
        }
        commitBytesRead(fromPeekBuffer);
        return fromPeekBuffer;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void readFully(byte[] bArr, int i2, int i3) throws InterruptedException, EOFException {
        readFully(bArr, i2, i3, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean readFully(byte[] bArr, int i2, int i3, boolean z) throws InterruptedException, EOFException {
        int fromPeekBuffer = readFromPeekBuffer(bArr, i2, i3);
        while (fromPeekBuffer < i3 && fromPeekBuffer != -1) {
            fromPeekBuffer = readFromDataSource(bArr, i2, i3, fromPeekBuffer, z);
        }
        commitBytesRead(fromPeekBuffer);
        return fromPeekBuffer != -1;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void resetPeekPosition() {
        this.peekBufferPosition = 0;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends java.lang.Throwable */
    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public <E extends Throwable> void setRetryPosition(long j2, E e2) throws E {
        Assertions.checkArgument(j2 >= 0);
        this.position = j2;
        throw e2;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public int skip(int i2) throws InterruptedException, EOFException {
        int iSkipFromPeekBuffer = skipFromPeekBuffer(i2);
        if (iSkipFromPeekBuffer == 0) {
            byte[] bArr = this.scratchSpace;
            iSkipFromPeekBuffer = readFromDataSource(bArr, 0, Math.min(i2, bArr.length), 0, true);
        }
        commitBytesRead(iSkipFromPeekBuffer);
        return iSkipFromPeekBuffer;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public void skipFully(int i2) throws InterruptedException, EOFException {
        skipFully(i2, false);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorInput
    public boolean skipFully(int i2, boolean z) throws InterruptedException, EOFException {
        int iSkipFromPeekBuffer = skipFromPeekBuffer(i2);
        while (iSkipFromPeekBuffer < i2 && iSkipFromPeekBuffer != -1) {
            iSkipFromPeekBuffer = readFromDataSource(this.scratchSpace, -iSkipFromPeekBuffer, Math.min(i2, this.scratchSpace.length + iSkipFromPeekBuffer), iSkipFromPeekBuffer, z);
        }
        commitBytesRead(iSkipFromPeekBuffer);
        return iSkipFromPeekBuffer != -1;
    }
}
