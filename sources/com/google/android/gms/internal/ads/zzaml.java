package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
final class zzaml implements MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> {
    private final /* synthetic */ zzakd zzdew;
    private final /* synthetic */ zzalr zzdey;

    zzaml(zzami zzamiVar, zzalr zzalrVar, zzakd zzakdVar) {
        this.zzdey = zzalrVar;
        this.zzdew = zzakdVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final MediationBannerAdCallback onSuccess(MediationBannerAd mediationBannerAd) {
        if (mediationBannerAd != null) {
            try {
                this.zzdey.zzab(ObjectWrapper.wrap(mediationBannerAd.getView()));
            } catch (RemoteException e2) {
                zzaxi.zzc("", e2);
            }
            return new zzamo(this.zzdew);
        }
        zzaxi.zzeu("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.zzdey.zzdg("Adapter returned null.");
            return null;
        } catch (RemoteException e3) {
            zzaxi.zzc("", e3);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.zzdey.zzdg(str);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }
}
