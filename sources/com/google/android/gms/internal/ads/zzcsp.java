package com.google.android.gms.internal.ads;

import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcsp implements zzcrr<JSONObject> {
    private final JSONObject zzggx;

    public zzcsp(JSONObject jSONObject) {
        this.zzggx = jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            JSONObject jSONObjectZzb = zzawg.zzb(jSONObject, "content_info");
            JSONObject jSONObject2 = this.zzggx;
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectZzb.put(next, jSONObject2.get(next));
            }
        } catch (JSONException unused) {
            zzaug.zzdy("Failed putting app indexing json.");
        }
    }
}
