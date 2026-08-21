package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.doubleclick.CustomRenderedAd;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzaad implements CustomRenderedAd {
    private final zzaac zzcux;

    public zzaad(zzaac zzaacVar) {
        this.zzcux = zzaacVar;
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final String getBaseUrl() {
        try {
            return this.zzcux.zzqb();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final String getContent() {
        try {
            return this.zzcux.getContent();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final void onAdRendered(View view) {
        try {
            this.zzcux.zzs(view != null ? ObjectWrapper.wrap(view) : null);
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final void recordClick() {
        try {
            this.zzcux.recordClick();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }

    @Override // com.google.android.gms.ads.doubleclick.CustomRenderedAd
    public final void recordImpression() {
        try {
            this.zzcux.recordImpression();
        } catch (RemoteException e2) {
            zzaxi.zze("#007 Could not call remote method.", e2);
        }
    }
}
