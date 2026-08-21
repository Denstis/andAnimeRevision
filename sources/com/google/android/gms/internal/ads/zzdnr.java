package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzdnr implements zzdec {
    private final zzdof zzhdr;
    private final zzdet zzhds;
    private final int zzhdt;

    public zzdnr(zzdof zzdofVar, zzdet zzdetVar, int i2) {
        this.zzhdr = zzdofVar;
        this.zzhds = zzdetVar;
        this.zzhdt = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdec
    public final byte[] zzc(byte[] bArr, byte[] bArr2) {
        byte[] bArrZzo = this.zzhdr.zzo(bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return zzdmn.zza(bArrZzo, this.zzhds.zzk(zzdmn.zza(bArr2, bArrZzo, Arrays.copyOf(ByteBuffer.allocate(8).putLong(((long) bArr2.length) * 8).array(), 8))));
    }
}
