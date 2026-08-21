package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public interface zzvl extends IInterface {
    void destroy();

    Bundle getAdMetadata();

    String getAdUnitId();

    String getMediationAdapterClassName();

    zzwr getVideoController();

    boolean isLoading();

    boolean isReady();

    void pause();

    void resume();

    void setImmersiveMode(boolean z);

    void setManualImpressionsEnabled(boolean z);

    void setUserId(String str);

    void showInterstitial();

    void stopLoading();

    void zza(zzaah zzaahVar);

    void zza(zzant zzantVar);

    void zza(zzanz zzanzVar, String str);

    void zza(zzaqi zzaqiVar);

    void zza(zzqx zzqxVar);

    void zza(zzua zzuaVar);

    void zza(zzuf zzufVar);

    void zza(zzux zzuxVar);

    void zza(zzuy zzuyVar);

    void zza(zzvo zzvoVar);

    void zza(zzvt zzvtVar);

    void zza(zzvz zzvzVar);

    void zza(zzwx zzwxVar);

    void zza(zzyj zzyjVar);

    boolean zza(zztx zztxVar);

    void zzbm(String str);

    IObjectWrapper zzjr();

    void zzjs();

    zzua zzjt();

    String zzju();

    zzvt zzjv();

    zzuy zzjw();
}
