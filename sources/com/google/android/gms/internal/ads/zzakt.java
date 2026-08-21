package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzakt extends zzakb {
    private final Object zzddv;
    private zzaku zzddw;
    private zzaqp zzddx;
    private IObjectWrapper zzddy;
    private MediationRewardedAd zzddz;

    public zzakt(Adapter adapter) {
        this.zzddv = adapter;
    }

    public zzakt(MediationAdapter mediationAdapter) {
        this.zzddv = mediationAdapter;
    }

    private final Bundle zza(String str, zztx zztxVar, String str2) throws RemoteException {
        Bundle bundle;
        String strValueOf = String.valueOf(str);
        zzaxi.zzdv(strValueOf.length() != 0 ? "Server parameters: ".concat(strValueOf) : new String("Server parameters: "));
        try {
            Bundle bundle2 = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                bundle = new Bundle();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    bundle.putString(next, jSONObject.getString(next));
                }
            } else {
                bundle = bundle2;
            }
            if (this.zzddv instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zztxVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zztxVar.zzabj);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            zzaxi.zzc("", th);
            throw new RemoteException();
        }
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

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void destroy() throws RemoteException {
        Object obj = this.zzddv;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onDestroy();
            } catch (Throwable th) {
                zzaxi.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final Bundle getInterstitialAdapterInfo() {
        Object obj = this.zzddv;
        if (obj instanceof zzbej) {
            return ((zzbej) obj).getInterstitialAdapterInfo();
        }
        String canonicalName = zzbej.class.getCanonicalName();
        String canonicalName2 = this.zzddv.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzaxi.zzeu(sb.toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final zzwr getVideoController() {
        Object obj = this.zzddv;
        if (!(obj instanceof com.google.android.gms.ads.mediation.zza)) {
            return null;
        }
        try {
            return ((com.google.android.gms.ads.mediation.zza) obj).getVideoController();
        } catch (Throwable th) {
            zzaxi.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final boolean isInitialized() throws RemoteException {
        Object obj = this.zzddv;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzaxi.zzdv("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.zzddv).isInitialized();
            } catch (Throwable th) {
                zzaxi.zzc("", th);
                throw new RemoteException();
            }
        }
        if (obj instanceof Adapter) {
            return this.zzddx != null;
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = this.zzddv.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        zzaxi.zzeu(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void pause() throws RemoteException {
        Object obj = this.zzddv;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onPause();
            } catch (Throwable th) {
                zzaxi.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void resume() throws RemoteException {
        Object obj = this.zzddv;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onResume();
            } catch (Throwable th) {
                zzaxi.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void setImmersiveMode(boolean z) {
        Object obj = this.zzddv;
        if (obj instanceof OnImmersiveModeUpdatedListener) {
            try {
                ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
                return;
            } catch (Throwable th) {
                zzaxi.zzc("", th);
                return;
            }
        }
        String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
        String canonicalName2 = this.zzddv.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzaxi.zzeu(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void showInterstitial() throws RemoteException {
        if (this.zzddv instanceof MediationInterstitialAdapter) {
            zzaxi.zzdv("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.zzddv).showInterstitial();
                return;
            } catch (Throwable th) {
                zzaxi.zzc("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
        String canonicalName2 = this.zzddv.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzaxi.zzeu(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void showVideo() throws RemoteException {
        Object obj = this.zzddv;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzaxi.zzdv("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.zzddv).showVideo();
                return;
            } catch (Throwable th) {
                zzaxi.zzc("", th);
                throw new RemoteException();
            }
        }
        if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.zzddz;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(this.zzddy));
                return;
            } else {
                zzaxi.zzes("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = this.zzddv.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        zzaxi.zzeu(sb.toString());
        throw new RemoteException();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zzaft zzaftVar, List<zzagb> list) throws RemoteException {
        AdFormat adFormat;
        if (!(this.zzddv instanceof Adapter)) {
            throw new RemoteException();
        }
        zzakv zzakvVar = new zzakv(this, zzaftVar);
        ArrayList arrayList = new ArrayList();
        for (zzagb zzagbVar : list) {
            String str = zzagbVar.zzcys;
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
                    throw new RemoteException();
                }
                adFormat = AdFormat.NATIVE;
            }
            arrayList.add(new MediationConfiguration(adFormat, zzagbVar.extras));
        }
        ((Adapter) this.zzddv).initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzakvVar, arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zzaqp zzaqpVar, List<String> list) throws RemoteException {
        if (!(this.zzddv instanceof InitializableMediationRewardedVideoAdAdapter)) {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzddv.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzaxi.zzeu(sb.toString());
            throw new RemoteException();
        }
        zzaxi.zzdv("Initialize rewarded video adapter.");
        try {
            InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.zzddv;
            ArrayList arrayList = new ArrayList();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(zza(it.next(), (zztx) null, (String) null));
            }
            initializableMediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzaqu(zzaqpVar), arrayList);
        } catch (Throwable th) {
            zzaxi.zzd("Could not initialize rewarded video adapter.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, zzakd zzakdVar) throws RemoteException {
        zza(iObjectWrapper, zztxVar, str, (String) null, zzakdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, zzaqp zzaqpVar, String str2) throws RemoteException {
        zzakq zzakqVar;
        Bundle bundle;
        Object obj = this.zzddv;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzaxi.zzdv("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzddv;
                Bundle bundleZza = zza(str2, zztxVar, (String) null);
                if (zztxVar != null) {
                    zzakq zzakqVar2 = new zzakq(zztxVar.zzcbx == -1 ? null : new Date(zztxVar.zzcbx), zztxVar.zzcby, zztxVar.zzcbz != null ? new HashSet(zztxVar.zzcbz) : null, zztxVar.zzng, zzc(zztxVar), zztxVar.zzabj, zztxVar.zzccj, zztxVar.zzabk, zza(str2, zztxVar));
                    bundle = zztxVar.zzcce != null ? zztxVar.zzcce.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
                    zzakqVar = zzakqVar2;
                } else {
                    zzakqVar = null;
                    bundle = null;
                }
                mediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzakqVar, str, new zzaqu(zzaqpVar), bundleZza, bundle);
                return;
            } catch (Throwable th) {
                zzaxi.zzc("", th);
                throw new RemoteException();
            }
        }
        if (obj instanceof Adapter) {
            this.zzddy = iObjectWrapper;
            this.zzddx = zzaqpVar;
            zzaqpVar.zzai(ObjectWrapper.wrap(obj));
            return;
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = this.zzddv.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        zzaxi.zzeu(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, String str2, zzakd zzakdVar) throws RemoteException {
        if (!(this.zzddv instanceof MediationInterstitialAdapter)) {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzddv.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzaxi.zzeu(sb.toString());
            throw new RemoteException();
        }
        zzaxi.zzdv("Requesting interstitial ad from adapter.");
        try {
            MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.zzddv;
            mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzaku(zzakdVar), zza(str, zztxVar, str2), new zzakq(zztxVar.zzcbx == -1 ? null : new Date(zztxVar.zzcbx), zztxVar.zzcby, zztxVar.zzcbz != null ? new HashSet(zztxVar.zzcbz) : null, zztxVar.zzng, zzc(zztxVar), zztxVar.zzabj, zztxVar.zzccj, zztxVar.zzabk, zza(str, zztxVar)), zztxVar.zzcce != null ? zztxVar.zzcce.getBundle(mediationInterstitialAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            zzaxi.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, String str2, zzakd zzakdVar, zzaay zzaayVar, List<String> list) throws RemoteException {
        Object obj = this.zzddv;
        if (!(obj instanceof MediationNativeAdapter)) {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzddv.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzaxi.zzeu(sb.toString());
            throw new RemoteException();
        }
        try {
            MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
            zzaky zzakyVar = new zzaky(zztxVar.zzcbx == -1 ? null : new Date(zztxVar.zzcbx), zztxVar.zzcby, zztxVar.zzcbz != null ? new HashSet(zztxVar.zzcbz) : null, zztxVar.zzng, zzc(zztxVar), zztxVar.zzabj, zzaayVar, list, zztxVar.zzccj, zztxVar.zzabk, zza(str, zztxVar));
            Bundle bundle = zztxVar.zzcce != null ? zztxVar.zzcce.getBundle(mediationNativeAdapter.getClass().getName()) : null;
            this.zzddw = new zzaku(zzakdVar);
            mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.unwrap(iObjectWrapper), this.zzddw, zza(str, zztxVar, str2), zzakyVar, bundle);
        } catch (Throwable th) {
            zzaxi.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, zztx zztxVar, String str, zzakd zzakdVar) throws RemoteException {
        zza(iObjectWrapper, zzuaVar, zztxVar, str, null, zzakdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, zztx zztxVar, String str, String str2, zzakd zzakdVar) throws RemoteException {
        if (!(this.zzddv instanceof MediationBannerAdapter)) {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.zzddv.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzaxi.zzeu(sb.toString());
            throw new RemoteException();
        }
        zzaxi.zzdv("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zzddv;
            mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzaku(zzakdVar), zza(str, zztxVar, str2), com.google.android.gms.ads.zzb.zza(zzuaVar.width, zzuaVar.height, zzuaVar.zzabd), new zzakq(zztxVar.zzcbx == -1 ? null : new Date(zztxVar.zzcbx), zztxVar.zzcby, zztxVar.zzcbz != null ? new HashSet(zztxVar.zzcbz) : null, zztxVar.zzng, zzc(zztxVar), zztxVar.zzabj, zztxVar.zzccj, zztxVar.zzabk, zza(str, zztxVar)), zztxVar.zzcce != null ? zztxVar.zzcce.getBundle(mediationBannerAdapter.getClass().getName()) : null);
        } catch (Throwable th) {
            zzaxi.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(zztx zztxVar, String str) throws RemoteException {
        zza(zztxVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zza(zztx zztxVar, String str, String str2) throws RemoteException {
        Object obj = this.zzddv;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzaxi.zzdv("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.zzddv;
                mediationRewardedVideoAdAdapter.loadAd(new zzakq(zztxVar.zzcbx == -1 ? null : new Date(zztxVar.zzcbx), zztxVar.zzcby, zztxVar.zzcbz != null ? new HashSet(zztxVar.zzcbz) : null, zztxVar.zzng, zzc(zztxVar), zztxVar.zzabj, zztxVar.zzccj, zztxVar.zzabk, zza(str, zztxVar)), zza(str, zztxVar, str2), zztxVar.zzcce != null ? zztxVar.zzcce.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null);
                return;
            } catch (Throwable th) {
                zzaxi.zzc("", th);
                throw new RemoteException();
            }
        }
        if (obj instanceof Adapter) {
            zzb(this.zzddy, zztxVar, str, new zzakx((Adapter) obj, this.zzddx));
            return;
        }
        String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
        String canonicalName2 = Adapter.class.getCanonicalName();
        String canonicalName3 = this.zzddv.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
        sb.append(canonicalName);
        sb.append(" or ");
        sb.append(canonicalName2);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName3);
        zzaxi.zzeu(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzb(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, zzakd zzakdVar) throws RemoteException {
        Bundle bundle;
        if (!(this.zzddv instanceof Adapter)) {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.zzddv.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzaxi.zzeu(sb.toString());
            throw new RemoteException();
        }
        zzaxi.zzdv("Requesting rewarded ad from adapter.");
        try {
            Adapter adapter = (Adapter) this.zzddv;
            zzaks zzaksVar = new zzaks(this, zzakdVar, adapter);
            Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
            Bundle bundleZza = zza(str, zztxVar, (String) null);
            if (zztxVar.zzcce == null || (bundle = zztxVar.zzcce.getBundle(this.zzddv.getClass().getName())) == null) {
                bundle = new Bundle();
            }
            adapter.loadRewardedAd(new MediationRewardedAdConfiguration(context, "", bundleZza, bundle, zzc(zztxVar), zztxVar.zzng, zztxVar.zzabj, zztxVar.zzabk, zza(str, zztxVar), ""), zzaksVar);
        } catch (Exception e2) {
            zzaxi.zzc("", e2);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final IObjectWrapper zzro() throws RemoteException {
        Object obj = this.zzddv;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return ObjectWrapper.wrap(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                zzaxi.zzc("", th);
                throw new RemoteException();
            }
        }
        String canonicalName = MediationBannerAdapter.class.getCanonicalName();
        String canonicalName2 = this.zzddv.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzaxi.zzeu(sb.toString());
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final zzakg zzrp() {
        NativeAdMapper nativeAdMapperZzsa = this.zzddw.zzsa();
        if (nativeAdMapperZzsa instanceof NativeAppInstallAdMapper) {
            return new zzakw((NativeAppInstallAdMapper) nativeAdMapperZzsa);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final zzakl zzrq() {
        NativeAdMapper nativeAdMapperZzsa = this.zzddw.zzsa();
        if (nativeAdMapperZzsa instanceof NativeContentAdMapper) {
            return new zzakz((NativeContentAdMapper) nativeAdMapperZzsa);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final Bundle zzrr() {
        Object obj = this.zzddv;
        if (obj instanceof zzbeh) {
            return ((zzbeh) obj).zzrr();
        }
        String canonicalName = zzbeh.class.getCanonicalName();
        String canonicalName2 = this.zzddv.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzaxi.zzeu(sb.toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final Bundle zzrs() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final boolean zzrt() {
        return this.zzddv instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final zzace zzru() {
        NativeCustomTemplateAd nativeCustomTemplateAdZzsc = this.zzddw.zzsc();
        if (nativeCustomTemplateAdZzsc instanceof zzacj) {
            return ((zzacj) nativeCustomTemplateAdZzsc).zzqv();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final zzakm zzrv() {
        UnifiedNativeAdMapper unifiedNativeAdMapperZzsb = this.zzddw.zzsb();
        if (unifiedNativeAdMapperZzsb != null) {
            return new zzalo(unifiedNativeAdMapperZzsb);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzw(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        Object obj = this.zzddv;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajy
    public final void zzx(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.zzddv instanceof Adapter) {
            zzaxi.zzdv("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.zzddz;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
                return;
            } else {
                zzaxi.zzes("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        }
        String canonicalName = Adapter.class.getCanonicalName();
        String canonicalName2 = this.zzddv.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzaxi.zzeu(sb.toString());
        throw new RemoteException();
    }
}
