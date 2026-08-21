package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzon {
    public final List<byte[]> zzafe;
    public final int zzaqq;

    private zzon(List<byte[]> list, int i2) {
        this.zzafe = list;
        this.zzaqq = i2;
    }

    public static zzon zzh(zzoc zzocVar) throws zzgv {
        try {
            zzocVar.zzbh(21);
            int unsignedByte = zzocVar.readUnsignedByte() & 3;
            int unsignedByte2 = zzocVar.readUnsignedByte();
            int position = zzocVar.getPosition();
            int i2 = 0;
            int i3 = 0;
            while (i2 < unsignedByte2) {
                zzocVar.zzbh(1);
                int unsignedShort = zzocVar.readUnsignedShort();
                int i4 = i3;
                for (int i5 = 0; i5 < unsignedShort; i5++) {
                    int unsignedShort2 = zzocVar.readUnsignedShort();
                    i4 += unsignedShort2 + 4;
                    zzocVar.zzbh(unsignedShort2);
                }
                i2++;
                i3 = i4;
            }
            zzocVar.zzbg(position);
            byte[] bArr = new byte[i3];
            int i6 = 0;
            int i7 = 0;
            while (i6 < unsignedByte2) {
                zzocVar.zzbh(1);
                int unsignedShort3 = zzocVar.readUnsignedShort();
                int i8 = i7;
                for (int i9 = 0; i9 < unsignedShort3; i9++) {
                    int unsignedShort4 = zzocVar.readUnsignedShort();
                    System.arraycopy(zznx.zzbfz, 0, bArr, i8, zznx.zzbfz.length);
                    int length = i8 + zznx.zzbfz.length;
                    System.arraycopy(zzocVar.data, zzocVar.getPosition(), bArr, length, unsignedShort4);
                    i8 = length + unsignedShort4;
                    zzocVar.zzbh(unsignedShort4);
                }
                i6++;
                i7 = i8;
            }
            return new zzon(i3 == 0 ? null : Collections.singletonList(bArr), unsignedByte + 1);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new zzgv("Error parsing HEVC config", e2);
        }
    }
}
