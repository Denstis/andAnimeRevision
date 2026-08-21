package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzctc implements zzcrr<JSONObject> {
    private String zzghh;
    private String zzghi;

    public zzctc(String str, String str2) {
        this.zzghh = str;
        this.zzghi = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject jSONObjectZzb = zzawg.zzb(jSONObject, "pii");
            jSONObjectZzb.put("doritos", this.zzghh);
            jSONObjectZzb.put("doritos_v2", this.zzghi);
        } catch (JSONException unused) {
            zzaug.zzdy("Failed putting doritos string.");
        }
    }
}
