package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzami extends zzamc {
    private MediationRewardedAd zzddz;
    private final RtbAdapter zzdes;
    private MediationInterstitialAd zzdet;
    private String zzdeu = "";

    public zzami(RtbAdapter rtbAdapter) {
        this.zzdes = rtbAdapter;
    }

    private static String zza(String str, zztx zztxVar) {
        String str2 = zztxVar.zzabl;
        try {
            return new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException unused) {
            return str2;
        }
    }

    private static boolean zzc(zztx zztxVar) {
        if (zztxVar.zzcca) {
            return true;
        }
        zzuv.zzoj();
        return zzawy.zzwj();
    }

    private final Bundle zzd(zztx zztxVar) {
        Bundle bundle;
        Bundle bundle2 = zztxVar.zzcce;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.zzdes.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    private static Bundle zzdj(String str) throws RemoteException {
        String strValueOf = String.valueOf(str);
        zzaxi.zzeu(strValueOf.length() != 0 ? "Server parameters: ".concat(strValueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str == null) {
                return bundle;
            }
            JSONObject jSONObject = new JSONObject(str);
            Bundle bundle2 = new Bundle();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                bundle2.putString(next, jSONObject.getString(next));
            }
            return bundle2;
        } catch (JSONException e2) {
            zzaxi.zzc("", e2);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final zzwr getVideoController() {
        MediationExtrasReceiver mediationExtrasReceiver = this.zzdes;
        if (!(mediationExtrasReceiver instanceof com.google.android.gms.ads.mediation.zza)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.zza) mediationExtrasReceiver).getVideoController();
        } catch (Throwable th) {
            zzaxi.zzc("", th);
            return null;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzua zzuaVar, zzame zzameVar) throws RemoteException {
        AdFormat adFormat;
        try {
            zzamp zzampVar = new zzamp(this, zzameVar);
            RtbAdapter rtbAdapter = this.zzdes;
            byte b2 = -1;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        b2 = 0;
                    }
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        b2 = 3;
                    }
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        b2 = 2;
                    }
                    break;
                case 604727084:
                    if (str.equals("interstitial")) {
                        b2 = 1;
                    }
                    break;
            }
            if (b2 == 0) {
                adFormat = AdFormat.BANNER;
            } else if (b2 == 1) {
                adFormat = AdFormat.INTERSTITIAL;
            } else if (b2 == 2) {
                adFormat = AdFormat.REWARDED;
            } else {
                if (b2 != 3) {
                    throw new IllegalArgumentException("Internal Error");
                }
                adFormat = AdFormat.NATIVE;
            }
            MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(mediationConfiguration);
            rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList, bundle, com.google.android.gms.ads.zzb.zza(zzuaVar.width, zzuaVar.height, zzuaVar.zzabd)), zzampVar);
        } catch (Throwable th) {
            zzaxi.zzc("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(String str, String str2, zztx zztxVar, IObjectWrapper iObjectWrapper, zzalr zzalrVar, zzakd zzakdVar, zzua zzuaVar) throws RemoteException {
        try {
            this.zzdes.loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzdj(str2), zzd(zztxVar), zzc(zztxVar), zztxVar.zzng, zztxVar.zzabj, zztxVar.zzabk, zza(str2, zztxVar), com.google.android.gms.ads.zzb.zza(zzuaVar.width, zzuaVar.height, zzuaVar.zzabd), this.zzdeu), new zzaml(this, zzalrVar, zzakdVar));
        } catch (Throwable th) {
            zzaxi.zzc("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(String str, String str2, zztx zztxVar, IObjectWrapper iObjectWrapper, zzals zzalsVar, zzakd zzakdVar) throws RemoteException {
        try {
            this.zzdes.loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzdj(str2), zzd(zztxVar), zzc(zztxVar), zztxVar.zzng, zztxVar.zzabj, zztxVar.zzabk, zza(str2, zztxVar), this.zzdeu), new zzamk(this, zzalsVar, zzakdVar));
        } catch (Throwable th) {
            zzaxi.zzc("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(String str, String str2, zztx zztxVar, IObjectWrapper iObjectWrapper, zzalx zzalxVar, zzakd zzakdVar) throws RemoteException {
        try {
            this.zzdes.loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzdj(str2), zzd(zztxVar), zzc(zztxVar), zztxVar.zzng, zztxVar.zzabj, zztxVar.zzabk, zza(str2, zztxVar), this.zzdeu), new zzamm(this, zzalxVar, zzakdVar));
        } catch (Throwable th) {
            zzaxi.zzc("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(String str, String str2, zztx zztxVar, IObjectWrapper iObjectWrapper, zzaly zzalyVar, zzakd zzakdVar) throws RemoteException {
        try {
            this.zzdes.loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, zzdj(str2), zzd(zztxVar), zzc(zztxVar), zztxVar.zzng, zztxVar.zzabj, zztxVar.zzabk, zza(str2, zztxVar), this.zzdeu), new zzamn(this, zzalyVar, zzakdVar));
        } catch (Throwable th) {
            zzaxi.zzc("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zza(String[] strArr, Bundle[] bundleArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final boolean zzac(IObjectWrapper iObjectWrapper) {
        MediationInterstitialAd mediationInterstitialAd = this.zzdet;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzaxi.zzc("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final boolean zzad(IObjectWrapper iObjectWrapper) {
        MediationRewardedAd mediationRewardedAd = this.zzddz;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzaxi.zzc("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zzdh(String str) {
        this.zzdeu = str;
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final void zzr(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final zzamr zzsg() {
        return zzamr.zza(this.zzdes.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzamd
    public final zzamr zzsh() {
        return zzamr.zza(this.zzdes.getSDKVersionInfo());
    }
}
