package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class zzbrs extends zzbkk {
    private final WeakReference<zzbbw> zzfif;
    private final zzbqi zzfig;
    private final zzbsu zzfih;
    private final zzble zzfii;
    private final zzczf zzfij;
    private boolean zzfik;
    private final Context zzlk;

    zzbrs(zzbkn zzbknVar, Context context, zzbbw zzbbwVar, zzbqi zzbqiVar, zzbsu zzbsuVar, zzble zzbleVar, zzczf zzczfVar) {
        super(zzbknVar);
        this.zzfik = false;
        this.zzlk = context;
        this.zzfif = new WeakReference<>(zzbbwVar);
        this.zzfig = zzbqiVar;
        this.zzfih = zzbsuVar;
        this.zzfii = zzbleVar;
        this.zzfij = zzczfVar;
    }

    public final void finalize() throws Throwable {
        try {
            zzbbw zzbbwVar = this.zzfif.get();
            if (((Boolean) zzuv.zzon().zzd(zzza.zzctv)).booleanValue()) {
                if (!this.zzfik && zzbbwVar != null) {
                    zzddl zzddlVar = zzaxn.zzdwm;
                    zzbbwVar.getClass();
                    zzddlVar.execute(zzbrv.zzh(zzbbwVar));
                }
            } else if (zzbbwVar != null) {
                zzbbwVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean isClosed() {
        return this.zzfii.isClosed();
    }

    public final boolean zzags() {
        if (((Boolean) zzuv.zzon().zzd(zzza.zzcjt)).booleanValue()) {
            com.google.android.gms.ads.internal.zzq.zzkj();
            if (zzaul.zzau(this.zzlk)) {
                zzaxi.zzeu("It is not recommended to show an interstitial when app is not in foreground.");
                if (((Boolean) zzuv.zzon().zzd(zzza.zzcju)).booleanValue()) {
                    this.zzfij.zzgl(this.zzfbd.zzgkb.zzgjy.zzbzn);
                }
                return false;
            }
        }
        return !this.zzfik;
    }

    public final void zzay(boolean z) {
        this.zzfig.zzagn();
        this.zzfih.zza(z, this.zzlk);
        this.zzfik = true;
    }
}
