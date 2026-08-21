package com.google.android.gms.internal.ads;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface zzwb extends IInterface {
    String getVersionString();

    void initialize();

    void setAppMuted(boolean z);

    void setAppVolume(float f2);

    void zza(zzafu zzafuVar);

    void zza(zzajx zzajxVar);

    void zza(zzyd zzydVar);

    void zzb(String str, IObjectWrapper iObjectWrapper);

    void zzby(String str);

    void zzbz(String str);

    void zzc(IObjectWrapper iObjectWrapper, String str);

    float zzos();

    boolean zzot();

    List<zzafr> zzou();
}
