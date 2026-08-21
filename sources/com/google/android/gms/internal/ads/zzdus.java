package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class zzdus {
    protected volatile int zzhrh = -1;

    public static final byte[] zzb(zzdus zzdusVar) {
        byte[] bArr = new byte[zzdusVar.zzazu()];
        try {
            zzduj zzdujVarZzp = zzduj.zzp(bArr, 0, bArr.length);
            zzdusVar.zza(zzdujVarZzp);
            zzdujVarZzp.zzayv();
            return bArr;
        } catch (IOException e2) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e2);
        }
    }

    public String toString() {
        return zzdur.zza(this);
    }

    public void zza(zzduj zzdujVar) {
    }

    public final int zzazu() {
        int iZznx = zznx();
        this.zzhrh = iZznx;
        return iZznx;
    }

    @Override // 
    /* JADX INFO: renamed from: zzbci, reason: merged with bridge method [inline-methods] */
    public zzdus clone() {
        return (zzdus) super.clone();
    }

    protected int zznx() {
        return 0;
    }
}
