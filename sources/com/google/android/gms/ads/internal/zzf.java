package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzdcj;
import com.google.android.gms.internal.ads.zzdcy;
import com.google.android.gms.internal.ads.zzddi;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzf implements zzdcj {
    static final zzdcj zzbkv = new zzf();

    private zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final zzddi zzf(Object obj) throws JSONException {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optBoolean("isSuccessful", false)) {
            zzq.zzkn().zzuh().zzeb(jSONObject.getString("appSettingsJson"));
        }
        return zzdcy.zzah(null);
    }
}
