package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.ExtractorInput;

/* JADX INFO: loaded from: classes.dex */
final class VarintReader {
    private static final int STATE_BEGIN_READING = 0;
    private static final int STATE_READ_CONTENTS = 1;
    private static final long[] VARINT_LENGTH_MASKS = {128, 64, 32, 16, 8, 4, 2, 1};
    private int length;
    private final byte[] scratch = new byte[8];
    private int state;

    public static long assembleVarint(byte[] bArr, int i2, boolean z) {
        long j2 = ((long) bArr[0]) & 255;
        if (z) {
            j2 &= VARINT_LENGTH_MASKS[i2 - 1] ^ (-1);
        }
        for (int i3 = 1; i3 < i2; i3++) {
            j2 = (j2 << 8) | (((long) bArr[i3]) & 255);
        }
        return j2;
    }

    public static int parseUnsignedVarintLength(int i2) {
        long j2;
        int i3 = 0;
        do {
            long[] jArr = VARINT_LENGTH_MASKS;
            if (i3 >= jArr.length) {
                return -1;
            }
            j2 = jArr[i3] & ((long) i2);
            i3++;
        } while (j2 == 0);
        return i3;
    }

    public int getLastLength() {
        return this.length;
    }

    public long readUnsignedVarint(ExtractorInput extractorInput, boolean z, boolean z2, int i2) {
        if (this.state == 0) {
            if (!extractorInput.readFully(this.scratch, 0, 1, z)) {
                return -1L;
            }
            this.length = parseUnsignedVarintLength(this.scratch[0] & 255);
            if (this.length == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.state = 1;
        }
        int i3 = this.length;
        if (i3 > i2) {
            this.state = 0;
            return -2L;
        }
        if (i3 != 1) {
            extractorInput.readFully(this.scratch, 1, i3 - 1);
        }
        this.state = 0;
        return assembleVarint(this.scratch, this.length, z2);
    }

    public void reset() {
        this.state = 0;
        this.length = 0;
    }
}
