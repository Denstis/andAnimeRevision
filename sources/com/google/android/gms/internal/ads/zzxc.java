package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzxc {
    private static final Object lock = new Object();
    private static zzxc zzces;
    private zzwb zzcet;
    private RewardedVideoAd zzceu;
    private RequestConfiguration zzcev = new RequestConfiguration.Builder().build();
    private InitializationStatus zzcew;

    private zzxc() {
    }

    private final void zza(RequestConfiguration requestConfiguration) {
        try {
            this.zzcet.zza(new zzyd(requestConfiguration));
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to set request configuration parcel.", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InitializationStatus zzb(List<zzafr> list) {
        HashMap map = new HashMap();
        for (zzafr zzafrVar : list) {
            map.put(zzafrVar.zzcyn, new zzafz(zzafrVar.zzcyo ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzafrVar.description, zzafrVar.zzcyp));
        }
        return new zzafy(map);
    }

    public static zzxc zzph() {
        zzxc zzxcVar;
        synchronized (lock) {
            if (zzces == null) {
                zzces = new zzxc();
            }
            zzxcVar = zzces;
        }
        return zzxcVar;
    }

    private final boolean zzpi() {
        try {
            return this.zzcet.getVersionString().endsWith("0");
        } catch (RemoteException unused) {
            zzaxi.zzes("Unable to get version string.");
            return true;
        }
    }

    public final InitializationStatus getInitializationStatus() {
        Preconditions.checkState(this.zzcet != null, "MobileAds.initialize() must be called prior to getting initialization status.");
        try {
            return this.zzcew != null ? this.zzcew : zzb(this.zzcet.zzou());
        } catch (RemoteException unused) {
            zzaxi.zzes("Unable to get Initialization status.");
            return null;
        }
    }

    public final RequestConfiguration getRequestConfiguration() {
        return this.zzcev;
    }

    public final RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        synchronized (lock) {
            if (this.zzceu != null) {
                return this.zzceu;
            }
            this.zzceu = new zzaqq(context, new zzut(zzuv.zzok(), context, new zzaju()).zzd(context, false));
            return this.zzceu;
        }
    }

    public final String getVersionString() {
        Preconditions.checkState(this.zzcet != null, "MobileAds.initialize() must be called prior to getting version string.");
        try {
            return this.zzcet.getVersionString();
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to get version string.", e2);
            return "";
        }
    }

    public final void openDebugMenu(Context context, String str) {
        Preconditions.checkState(this.zzcet != null, "MobileAds.initialize() must be called prior to opening debug menu.");
        try {
            this.zzcet.zzc(ObjectWrapper.wrap(context), str);
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to open debug menu.", e2);
        }
    }

    public final void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        try {
            this.zzcet.zzbz(cls.getCanonicalName());
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to register RtbAdapter", e2);
        }
    }

    public final void setAppMuted(boolean z) {
        Preconditions.checkState(this.zzcet != null, "MobileAds.initialize() must be called prior to setting app muted state.");
        try {
            this.zzcet.setAppMuted(z);
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to set app mute state.", e2);
        }
    }

    public final void setAppVolume(float f2) {
        Preconditions.checkArgument(0.0f <= f2 && f2 <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        Preconditions.checkState(this.zzcet != null, "MobileAds.initialize() must be called prior to setting the app volume.");
        try {
            this.zzcet.setAppVolume(f2);
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to set app volume.", e2);
        }
    }

    public final void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        Preconditions.checkArgument(requestConfiguration != null, "Null passed to setRequestConfiguration.");
        RequestConfiguration requestConfiguration2 = this.zzcev;
        this.zzcev = requestConfiguration;
        if (this.zzcet == null) {
            return;
        }
        if (requestConfiguration2.getTagForChildDirectedTreatment() == requestConfiguration.getTagForChildDirectedTreatment() && requestConfiguration2.getTagForUnderAgeOfConsent() == requestConfiguration.getTagForUnderAgeOfConsent()) {
            return;
        }
        zza(requestConfiguration);
    }

    public final void zza(final Context context, String str, zzxl zzxlVar, final OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (lock) {
            if (this.zzcet != null) {
                return;
            }
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null.");
            }
            try {
                zzajp.zzrn().zzc(context, str);
                boolean z = false;
                this.zzcet = new zzuo(zzuv.zzok(), context).zzd(context, false);
                if (onInitializationCompleteListener != null) {
                    this.zzcet.zza(new zzxj(this, onInitializationCompleteListener, null));
                }
                this.zzcet.zza(new zzaju());
                this.zzcet.initialize();
                this.zzcet.zzb(str, ObjectWrapper.wrap(new Runnable(this, context) { // from class: com.google.android.gms.internal.ads.zzxf
                    private final zzxc zzcez;
                    private final Context zzcfb;

                    {
                        this.zzcez = this;
                        this.zzcfb = context;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzcez.getRewardedVideoAdInstance(this.zzcfb);
                    }
                }));
                if (this.zzcev.getTagForChildDirectedTreatment() != -1 || this.zzcev.getTagForUnderAgeOfConsent() != -1) {
                    zza(this.zzcev);
                }
                zzza.initialize(context);
                if (!((Boolean) zzuv.zzon().zzd(zzza.zzcqx)).booleanValue()) {
                    if (((Boolean) zzuv.zzon().zzd(zzza.zzcrf)).booleanValue()) {
                        z = true;
                    }
                }
                if (!z || zzpi()) {
                    zzaxi.zzes("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                    this.zzcew = new InitializationStatus(this) { // from class: com.google.android.gms.internal.ads.zzxh
                        private final zzxc zzcez;

                        {
                            this.zzcez = this;
                        }

                        @Override // com.google.android.gms.ads.initialization.InitializationStatus
                        public final Map getAdapterStatusMap() {
                            zzxc zzxcVar = this.zzcez;
                            HashMap map = new HashMap();
                            map.put("com.google.android.gms.ads.MobileAds", new zzxg(zzxcVar));
                            return map;
                        }
                    };
                    if (onInitializationCompleteListener != null) {
                        zzawy.zzzb.post(new Runnable(this, onInitializationCompleteListener) { // from class: com.google.android.gms.internal.ads.zzxe
                            private final zzxc zzcez;
                            private final OnInitializationCompleteListener zzcfa;

                            {
                                this.zzcez = this;
                                this.zzcfa = onInitializationCompleteListener;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zzcez.zza(this.zzcfa);
                            }
                        });
                    }
                }
            } catch (RemoteException e2) {
                zzaxi.zzd("MobileAdsSettingManager initialization failed", e2);
            }
        }
    }

    final /* synthetic */ void zza(OnInitializationCompleteListener onInitializationCompleteListener) {
        onInitializationCompleteListener.onInitializationComplete(this.zzcew);
    }

    public final float zzos() {
        zzwb zzwbVar = this.zzcet;
        if (zzwbVar == null) {
            return 1.0f;
        }
        try {
            return zzwbVar.zzos();
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to get app volume.", e2);
            return 1.0f;
        }
    }

    public final boolean zzot() {
        zzwb zzwbVar = this.zzcet;
        if (zzwbVar == null) {
            return false;
        }
        try {
            return zzwbVar.zzot();
        } catch (RemoteException e2) {
            zzaxi.zzc("Unable to get app mute state.", e2);
            return false;
        }
    }
}
