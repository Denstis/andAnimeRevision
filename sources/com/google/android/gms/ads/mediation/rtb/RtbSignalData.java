package com.google.android.gms.ads.mediation.rtb;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RtbSignalData {
    private final Bundle zzcce;
    private final AdSize zzdg;
    private final List<MediationConfiguration> zzejs;
    private final Context zzlk;

    public RtbSignalData(Context context, List<MediationConfiguration> list, Bundle bundle, AdSize adSize) {
        this.zzlk = context;
        this.zzejs = list;
        this.zzcce = bundle;
        this.zzdg = adSize;
    }

    public AdSize getAdSize() {
        return this.zzdg;
    }

    @Deprecated
    public MediationConfiguration getConfiguration() {
        List<MediationConfiguration> list = this.zzejs;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.zzejs.get(0);
    }

    public List<MediationConfiguration> getConfigurations() {
        return this.zzejs;
    }

    public Context getContext() {
        return this.zzlk;
    }

    public Bundle getNetworkExtras() {
        return this.zzcce;
    }
}
