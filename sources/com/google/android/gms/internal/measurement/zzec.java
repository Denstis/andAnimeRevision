package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class zzec {
    private final zzen zza;
    private final byte[] zzb;

    private zzec(int i2) {
        this.zzb = new byte[i2];
        this.zza = zzen.zza(this.zzb);
    }

    /* synthetic */ zzec(int i2, zzdx zzdxVar) {
        this(i2);
    }

    public final zzdu zza() {
        this.zza.zzb();
        return new zzee(this.zzb);
    }

    public final zzen zzb() {
        return this.zza;
    }
}
