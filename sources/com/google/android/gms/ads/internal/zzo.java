package com.google.android.gms.ads.internal;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.internal.ads.zzaxl;
import com.google.android.gms.internal.ads.zztx;
import com.google.android.gms.internal.ads.zzuv;
import com.google.android.gms.internal.ads.zzza;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
final class zzo {
    private final String zzbls;
    private final Map<String, String> zzblt = new TreeMap();
    private String zzblu;
    private String zzblv;

    public zzo(String str) {
        this.zzbls = str;
    }

    public final String getQuery() {
        return this.zzblu;
    }

    public final void zza(zztx zztxVar, zzaxl zzaxlVar) {
        this.zzblu = zztxVar.zzccc.zzblu;
        Bundle bundle = zztxVar.zzcce;
        Bundle bundle2 = bundle != null ? bundle.getBundle(AdMobAdapter.class.getName()) : null;
        if (bundle2 == null) {
            return;
        }
        String str = (String) zzuv.zzon().zzd(zzza.zzcpe);
        for (String str2 : bundle2.keySet()) {
            if (str.equals(str2)) {
                this.zzblv = bundle2.getString(str2);
            } else if (str2.startsWith("csa_")) {
                this.zzblt.put(str2.substring(4), bundle2.getString(str2));
            }
        }
        this.zzblt.put("SDKVersion", zzaxlVar.zzblz);
    }

    public final String zzjz() {
        return this.zzblv;
    }

    public final String zzka() {
        return this.zzbls;
    }

    public final Map<String, String> zzkb() {
        return this.zzblt;
    }
}
