package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;

/* JADX INFO: loaded from: classes.dex */
public final class zzala<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> implements MediationBannerListener, MediationInterstitialListener {
    private final zzakd zzdea;

    public zzala(zzakd zzakdVar) {
        this.zzdea = zzakdVar;
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzaxi.zzdv("Adapter called onClick.");
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zze("#008 Must be called on the main UI thread.", null);
            zzawy.zzzb.post(new zzald(this));
        } else {
            try {
                this.zzdea.onAdClicked();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzaxi.zzdv("Adapter called onDismissScreen.");
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zzeu("#008 Must be called on the main UI thread.");
            zzawy.zzzb.post(new zzale(this));
        } else {
            try {
                this.zzdea.onAdClosed();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzaxi.zzdv("Adapter called onDismissScreen.");
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zze("#008 Must be called on the main UI thread.", null);
            zzawy.zzzb.post(new zzall(this));
        } else {
            try {
                this.zzdea.onAdClosed();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, AdRequest.ErrorCode errorCode) {
        String strValueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error. ");
        sb.append(strValueOf);
        zzaxi.zzdv(sb.toString());
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zze("#008 Must be called on the main UI thread.", null);
            zzawy.zzzb.post(new zzalh(this, errorCode));
        } else {
            try {
                this.zzdea.onAdFailedToLoad(zzalm.zza(errorCode));
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, AdRequest.ErrorCode errorCode) {
        String strValueOf = String.valueOf(errorCode);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(strValueOf);
        sb.append(".");
        zzaxi.zzdv(sb.toString());
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zze("#008 Must be called on the main UI thread.", null);
            zzawy.zzzb.post(new zzalk(this, errorCode));
        } else {
            try {
                this.zzdea.onAdFailedToLoad(zzalm.zza(errorCode));
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzaxi.zzdv("Adapter called onLeaveApplication.");
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zze("#008 Must be called on the main UI thread.", null);
            zzawy.zzzb.post(new zzalg(this));
        } else {
            try {
                this.zzdea.onAdLeftApplication();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzaxi.zzdv("Adapter called onLeaveApplication.");
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zze("#008 Must be called on the main UI thread.", null);
            zzawy.zzzb.post(new zzaln(this));
        } else {
            try {
                this.zzdea.onAdLeftApplication();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzaxi.zzdv("Adapter called onPresentScreen.");
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zze("#008 Must be called on the main UI thread.", null);
            zzawy.zzzb.post(new zzalj(this));
        } else {
            try {
                this.zzdea.onAdOpened();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzaxi.zzdv("Adapter called onPresentScreen.");
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zze("#008 Must be called on the main UI thread.", null);
            zzawy.zzzb.post(new zzalc(this));
        } else {
            try {
                this.zzdea.onAdOpened();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationBannerListener
    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzaxi.zzdv("Adapter called onReceivedAd.");
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zze("#008 Must be called on the main UI thread.", null);
            zzawy.zzzb.post(new zzali(this));
        } else {
            try {
                this.zzdea.onAdLoaded();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialListener
    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzaxi.zzdv("Adapter called onReceivedAd.");
        zzuv.zzoj();
        if (!zzawy.zzwk()) {
            zzaxi.zze("#008 Must be called on the main UI thread.", null);
            zzawy.zzzb.post(new zzalf(this));
        } else {
            try {
                this.zzdea.onAdLoaded();
            } catch (RemoteException e2) {
                zzaxi.zze("#007 Could not call remote method.", e2);
            }
        }
    }
}
