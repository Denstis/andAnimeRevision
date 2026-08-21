package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class zzckw implements com.google.android.gms.ads.internal.zze {
    private final zzbqw zzfdp;
    private final zzbni zzfjm;
    private final zzbmv zzfjn;
    private final zzbhk zzfjo;
    private final zzbqv zzfjq;
    private AtomicBoolean zzgar = new AtomicBoolean(false);

    zzckw(zzbmv zzbmvVar, zzbni zzbniVar, zzbqw zzbqwVar, zzbqv zzbqvVar, zzbhk zzbhkVar) {
        this.zzfjn = zzbmvVar;
        this.zzfjm = zzbniVar;
        this.zzfdp = zzbqwVar;
        this.zzfjq = zzbqvVar;
        this.zzfjo = zzbhkVar;
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final synchronized void zzg(View view) {
        if (this.zzgar.compareAndSet(false, true)) {
            this.zzfjo.onAdImpression();
            this.zzfjq.zzq(view);
        }
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjl() {
        if (this.zzgar.get()) {
            this.zzfjn.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjm() {
        if (this.zzgar.get()) {
            this.zzfjm.onAdImpression();
            this.zzfdp.zzagq();
        }
    }
}
