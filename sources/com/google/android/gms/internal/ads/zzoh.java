package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzoh {
    private final int height;
    private final int width;
    public final List<byte[]> zzafe;
    public final int zzaqq;
    public final float zzbgk;

    private zzoh(List<byte[]> list, int i2, int i3, int i4, float f2) {
        this.zzafe = list;
        this.zzaqq = i2;
        this.width = i3;
        this.height = i4;
        this.zzbgk = f2;
    }

    public static zzoh zzf(zzoc zzocVar) {
        int i2;
        int i3;
        float f2;
        try {
            zzocVar.zzbh(4);
            int unsignedByte = (zzocVar.readUnsignedByte() & 3) + 1;
            if (unsignedByte == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int unsignedByte2 = zzocVar.readUnsignedByte() & 31;
            for (int i4 = 0; i4 < unsignedByte2; i4++) {
                arrayList.add(zzg(zzocVar));
            }
            int unsignedByte3 = zzocVar.readUnsignedByte();
            for (int i5 = 0; i5 < unsignedByte3; i5++) {
                arrayList.add(zzg(zzocVar));
            }
            if (unsignedByte2 > 0) {
                zzoa zzoaVarZzd = zznx.zzd((byte[]) arrayList.get(0), unsignedByte, ((byte[]) arrayList.get(0)).length);
                int i6 = zzoaVarZzd.width;
                int i7 = zzoaVarZzd.height;
                f2 = zzoaVarZzd.zzbgk;
                i2 = i6;
                i3 = i7;
            } else {
                i2 = -1;
                i3 = -1;
                f2 = 1.0f;
            }
            return new zzoh(arrayList, unsignedByte, i2, i3, f2);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new zzgv("Error parsing AVC config", e2);
        }
    }

    private static byte[] zzg(zzoc zzocVar) {
        int unsignedShort = zzocVar.readUnsignedShort();
        int position = zzocVar.getPosition();
        zzocVar.zzbh(unsignedShort);
        return zznu.zzc(zzocVar.data, position, unsignedShort);
    }
}
