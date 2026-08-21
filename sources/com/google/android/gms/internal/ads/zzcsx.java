package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzcsx implements zzcru<zzcrr<JSONObject>> {
    private final JSONObject zzghe;

    zzcsx(Context context) {
        this.zzghe = zzapq.zzy(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcru
    public final zzddi<zzcrr<JSONObject>> zzalv() {
        return zzdcy.zzah(new zzcrr(this) { // from class: com.google.android.gms.internal.ads.zzcta
            private final zzcsx zzghf;

            {
                this.zzghf = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcrr
            public final void zzr(Object obj) {
                this.zzghf.zzo((JSONObject) obj);
            }
        });
    }

    final /* synthetic */ void zzo(JSONObject jSONObject) {
        try {
            jSONObject.put("gms_sdk_env", this.zzghe);
        } catch (JSONException unused) {
            zzaug.zzdy("Failed putting version constants.");
        }
    }
}
