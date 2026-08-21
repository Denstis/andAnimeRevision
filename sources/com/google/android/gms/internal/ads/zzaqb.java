package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public interface zzaqb extends IInterface {
    void destroy();

    Bundle getAdMetadata();

    String getMediationAdapterClassName();

    boolean isLoaded();

    void pause();

    void resume();

    void setAppPackageName(String str);

    void setCustomData(String str);

    void setImmersiveMode(boolean z);

    void setUserId(String str);

    void show();

    void zza(zzapz zzapzVar);

    void zza(zzaqi zzaqiVar);

    void zza(zzaqo zzaqoVar);

    void zza(zzvo zzvoVar);

    void zzm(IObjectWrapper iObjectWrapper);

    void zzn(IObjectWrapper iObjectWrapper);

    void zzo(IObjectWrapper iObjectWrapper);

    void zzp(IObjectWrapper iObjectWrapper);

    boolean zzpl();
}
