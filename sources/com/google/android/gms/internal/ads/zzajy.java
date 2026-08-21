package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface zzajy extends IInterface {
    void destroy();

    Bundle getInterstitialAdapterInfo();

    zzwr getVideoController();

    boolean isInitialized();

    void pause();

    void resume();

    void setImmersiveMode(boolean z);

    void showInterstitial();

    void showVideo();

    void zza(IObjectWrapper iObjectWrapper, zzaft zzaftVar, List<zzagb> list);

    void zza(IObjectWrapper iObjectWrapper, zzaqp zzaqpVar, List<String> list);

    void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, zzakd zzakdVar);

    void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, zzaqp zzaqpVar, String str2);

    void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, String str2, zzakd zzakdVar);

    void zza(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, String str2, zzakd zzakdVar, zzaay zzaayVar, List<String> list);

    void zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, zztx zztxVar, String str, zzakd zzakdVar);

    void zza(IObjectWrapper iObjectWrapper, zzua zzuaVar, zztx zztxVar, String str, String str2, zzakd zzakdVar);

    void zza(zztx zztxVar, String str);

    void zza(zztx zztxVar, String str, String str2);

    void zzb(IObjectWrapper iObjectWrapper, zztx zztxVar, String str, zzakd zzakdVar);

    IObjectWrapper zzro();

    zzakg zzrp();

    zzakl zzrq();

    Bundle zzrr();

    Bundle zzrs();

    boolean zzrt();

    zzace zzru();

    zzakm zzrv();

    void zzw(IObjectWrapper iObjectWrapper);

    void zzx(IObjectWrapper iObjectWrapper);
}
