package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzcer implements zzcxn {
    static final zzcxn zzftu = new zzcer();

    private zzcer() {
    }

    @Override // com.google.android.gms.internal.ads.zzcxn
    public final Object apply(Object obj) throws zzcek {
        JSONObject jSONObject = (JSONObject) obj;
        if (jSONObject.optInt("error_code") == 6) {
            return zzais.zzdaz.zzd(jSONObject.getJSONObject("response"));
        }
        throw new zzcek(jSONObject.getString("error_reason"), jSONObject.optInt("error_code", 0));
    }
}
