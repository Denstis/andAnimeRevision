package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzbhb implements zzbnm {
    private final zzcwm zzfbf;

    public zzbhb(zzcwm zzcwmVar) {
        this.zzfbf = zzcwmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnm
    public final void zzbu(Context context) {
        try {
            this.zzfbf.pause();
        } catch (zzcwh e2) {
            zzaxi.zzd("Cannot invoke onPause for the mediation adapter.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnm
    public final void zzbv(Context context) {
        try {
            this.zzfbf.resume();
            if (context != null) {
                this.zzfbf.onContextChanged(context);
            }
        } catch (zzcwh e2) {
            zzaxi.zzd("Cannot invoke onResume for the mediation adapter.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnm
    public final void zzbw(Context context) {
        try {
            this.zzfbf.destroy();
        } catch (zzcwh e2) {
            zzaxi.zzd("Cannot invoke onDestroy for the mediation adapter.", e2);
        }
    }
}
