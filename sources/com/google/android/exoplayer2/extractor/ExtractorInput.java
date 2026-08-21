package com.google.android.exoplayer2.extractor;

/* JADX INFO: loaded from: classes.dex */
public interface ExtractorInput {
    void advancePeekPosition(int i2);

    boolean advancePeekPosition(int i2, boolean z);

    long getLength();

    long getPeekPosition();

    long getPosition();

    void peekFully(byte[] bArr, int i2, int i3);

    boolean peekFully(byte[] bArr, int i2, int i3, boolean z);

    int read(byte[] bArr, int i2, int i3);

    void readFully(byte[] bArr, int i2, int i3);

    boolean readFully(byte[] bArr, int i2, int i3, boolean z);

    void resetPeekPosition();

    <E extends Throwable> void setRetryPosition(long j2, E e2);

    int skip(int i2);

    void skipFully(int i2);

    boolean skipFully(int i2, boolean z);
}
