package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzccs extends zzafs {
    private final /* synthetic */ zzccj zzfth;
    private final /* synthetic */ Object zzfti;
    private final /* synthetic */ String zzftj;
    private final /* synthetic */ long zzftk;
    private final /* synthetic */ zzaxv zzftl;

    zzccs(zzccj zzccjVar, Object obj, String str, long j2, zzaxv zzaxvVar) {
        this.zzfth = zzccjVar;
        this.zzfti = obj;
        this.zzftj = str;
        this.zzftk = j2;
        this.zzftl = zzaxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaft
    public final void onInitializationFailed(String str) {
        synchronized (this.zzfti) {
            this.zzfth.zza(this.zzftj, false, str, (int) (com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime() - this.zzftk));
            this.zzfth.zzfsz.zzr(this.zzftj, "error");
            this.zzftl.set(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaft
    public final void onInitializationSucceeded() {
        synchronized (this.zzfti) {
            this.zzfth.zza(this.zzftj, true, "", (int) (com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime() - this.zzftk));
            this.zzfth.zzfsz.zzfz(this.zzftj);
            this.zzftl.set(true);
        }
    }
}
