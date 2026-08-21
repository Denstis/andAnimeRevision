package com.google.android.exoplayer2.video;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.NalUnitUtil;
import com.google.android.exoplayer2.util.ParsableByteArray;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HevcConfig {
    public final List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;

    private HevcConfig(List<byte[]> list, int i2) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i2;
    }

    public static HevcConfig parse(ParsableByteArray parsableByteArray) throws ParserException {
        try {
            parsableByteArray.skipBytes(21);
            int unsignedByte = parsableByteArray.readUnsignedByte() & 3;
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition();
            int i2 = 0;
            int i3 = 0;
            while (i2 < unsignedByte2) {
                parsableByteArray.skipBytes(1);
                int unsignedShort = parsableByteArray.readUnsignedShort();
                int i4 = i3;
                for (int i5 = 0; i5 < unsignedShort; i5++) {
                    int unsignedShort2 = parsableByteArray.readUnsignedShort();
                    i4 += unsignedShort2 + 4;
                    parsableByteArray.skipBytes(unsignedShort2);
                }
                i2++;
                i3 = i4;
            }
            parsableByteArray.setPosition(position);
            byte[] bArr = new byte[i3];
            int i6 = 0;
            int i7 = 0;
            while (i6 < unsignedByte2) {
                parsableByteArray.skipBytes(1);
                int unsignedShort3 = parsableByteArray.readUnsignedShort();
                int i8 = i7;
                for (int i9 = 0; i9 < unsignedShort3; i9++) {
                    int unsignedShort4 = parsableByteArray.readUnsignedShort();
                    System.arraycopy(NalUnitUtil.NAL_START_CODE, 0, bArr, i8, NalUnitUtil.NAL_START_CODE.length);
                    int length = i8 + NalUnitUtil.NAL_START_CODE.length;
                    System.arraycopy(parsableByteArray.data, parsableByteArray.getPosition(), bArr, length, unsignedShort4);
                    i8 = length + unsignedShort4;
                    parsableByteArray.skipBytes(unsignedShort4);
                }
                i6++;
                i7 = i8;
            }
            return new HevcConfig(i3 == 0 ? null : Collections.singletonList(bArr), unsignedByte + 1);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new ParserException("Error parsing HEVC config", e2);
        }
    }
}
