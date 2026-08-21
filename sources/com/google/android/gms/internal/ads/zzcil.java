package com.google.android.gms.internal.ads;

import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzcil implements zzdcj {
    static final zzdcj zzbkv = new zzcil();

    private zzcil() {
    }

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final zzddi zzf(Object obj) throws zzaim {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean(FirebaseAnalytics.Param.SUCCESS)) {
            return zzdcy.zzah(jSONObject.getJSONObject("json").getJSONArray("ads"));
        }
        throw new zzaim("process json failed");
    }
}
