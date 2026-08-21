package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class zzdfm implements zzdec {
    private static final byte[] zzgtg = new byte[0];
    private final zzdjt zzgth;
    private final zzdec zzgti;

    public zzdfm(zzdjt zzdjtVar, zzdec zzdecVar) {
        this.zzgth = zzdjtVar;
        this.zzgti = zzdecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdec
    public final byte[] zzc(byte[] bArr, byte[] bArr2) {
        byte[] byteArray = zzdey.zzb(this.zzgth).toByteArray();
        byte[] bArrZzc = this.zzgti.zzc(byteArray, zzgtg);
        byte[] bArrZzc2 = ((zzdec) zzdey.zza(this.zzgth.zzatu(), byteArray, zzdec.class)).zzc(bArr, bArr2);
        return ByteBuffer.allocate(bArrZzc.length + 4 + bArrZzc2.length).putInt(bArrZzc.length).put(bArrZzc).put(bArrZzc2).array();
    }
}
