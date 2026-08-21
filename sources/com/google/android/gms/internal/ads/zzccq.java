package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class zzccq implements zzdcz<String> {
    final /* synthetic */ zzccj zzfth;

    zzccq(zzccj zzccjVar) {
        this.zzfth = zzccjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final /* synthetic */ void onSuccess(String str) {
        final String str2 = str;
        synchronized (this) {
            zzccj.zza(this.zzfth, true);
            this.zzfth.zza("com.google.android.gms.ads.MobileAds", true, "", (int) (com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime() - this.zzfth.zzfsv));
            this.zzfth.executor.execute(new Runnable(this, str2) { // from class: com.google.android.gms.internal.ads.zzcct
                private final String zzcyz;
                private final zzccq zzftm;

                {
                    this.zzftm = this;
                    this.zzcyz = str2;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzccq zzccqVar = this.zzftm;
                    zzccqVar.zzfth.zzga(this.zzcyz);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzb(Throwable th) {
        synchronized (this) {
            zzccj.zza(this.zzfth, true);
            this.zzfth.zza("com.google.android.gms.ads.MobileAds", false, "Internal Error.", (int) (com.google.android.gms.ads.internal.zzq.zzkq().elapsedRealtime() - this.zzfth.zzfsv));
            this.zzfth.zzfsw.setException(new Exception());
        }
    }
}
