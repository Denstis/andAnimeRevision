package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzcgu implements zzbkl {
    private final zzcwm zzfxq;

    private zzcgu(zzcwm zzcwmVar) {
        this.zzfxq = zzcwmVar;
    }

    static zzbkl zza(zzcwm zzcwmVar) {
        return new zzcgu(zzcwmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbkl
    public final zzwr getVideoController() {
        return this.zzfxq.getVideoController();
    }
}
