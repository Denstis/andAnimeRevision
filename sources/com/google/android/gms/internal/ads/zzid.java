package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzid implements zzhu {
    private final /* synthetic */ zzib zzakv;

    private zzid(zzib zzibVar) {
        this.zzakv = zzibVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhu
    public final void zzc(int i2, long j2, long j3) {
        this.zzakv.zzako.zzb(i2, j2, j3);
        zzib.zza(i2, j2, j3);
    }

    @Override // com.google.android.gms.internal.ads.zzhu
    public final void zzdx() {
        zzib.zzfn();
        zzib.zza(this.zzakv, true);
    }

    @Override // com.google.android.gms.internal.ads.zzhu
    public final void zzq(int i2) {
        this.zzakv.zzako.zzr(i2);
        zzib.zzq(i2);
    }
}
