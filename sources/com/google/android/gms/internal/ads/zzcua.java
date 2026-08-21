package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcua implements zzcrr<JSONObject> {
    private final Map<String, Object> zzghs;

    public zzcua(Map<String, Object> map) {
        this.zzghs = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        try {
            jSONObject.put("video_decoders", com.google.android.gms.ads.internal.zzq.zzkj().zzi(this.zzghs));
        } catch (JSONException e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            zzaug.zzdy(strValueOf.length() != 0 ? "Could not encode video decoder properties: ".concat(strValueOf) : new String("Could not encode video decoder properties: "));
        }
    }
}
