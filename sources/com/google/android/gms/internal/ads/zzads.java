package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.PublisherAdView;

/* JADX INFO: loaded from: classes.dex */
final class zzads implements Runnable {
    private final /* synthetic */ PublisherAdView zzcww;
    private final /* synthetic */ zzvl zzcwx;
    private final /* synthetic */ zzadt zzcwy;

    zzads(zzadt zzadtVar, PublisherAdView publisherAdView, zzvl zzvlVar) {
        this.zzcwy = zzadtVar;
        this.zzcww = publisherAdView;
        this.zzcwx = zzvlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzcww.zza(this.zzcwx)) {
            this.zzcwy.zzcwz.onPublisherAdViewLoaded(this.zzcww);
        } else {
            zzaxi.zzeu("Could not bind.");
        }
    }
}
