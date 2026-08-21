package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;

/* JADX INFO: loaded from: classes.dex */
final class zzamm implements MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> {
    private final /* synthetic */ zzakd zzdew;
    private final /* synthetic */ zzalx zzdez;

    zzamm(zzami zzamiVar, zzalx zzalxVar, zzakd zzakdVar) {
        this.zzdez = zzalxVar;
        this.zzdew = zzakdVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final MediationNativeAdCallback onSuccess(UnifiedNativeAdMapper unifiedNativeAdMapper) {
        if (unifiedNativeAdMapper != null) {
            try {
                this.zzdez.zza(new zzalo(unifiedNativeAdMapper));
            } catch (RemoteException e2) {
                zzaxi.zzc("", e2);
            }
            return new zzamo(this.zzdew);
        }
        zzaxi.zzeu("Adapter incorrectly returned a null ad. The onFailure() callback should be called if an adapter fails to load an ad.");
        try {
            this.zzdez.zzdg("Adapter returned null.");
            return null;
        } catch (RemoteException e3) {
            zzaxi.zzc("", e3);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.zzdez.zzdg(str);
        } catch (RemoteException e2) {
            zzaxi.zzc("", e2);
        }
    }
}
