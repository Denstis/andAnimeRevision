package com.google.android.gms.internal.ads;

import android.location.Location;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcth implements zzcrr<JSONObject> {
    private final Location zzng;

    public zzcth(Location location) {
        this.zzng = location;
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final /* synthetic */ void zzr(JSONObject jSONObject) {
        JSONObject jSONObject2 = jSONObject;
        try {
            if (this.zzng != null) {
                JSONObject jSONObject3 = new JSONObject();
                Float fValueOf = Float.valueOf(this.zzng.getAccuracy() * 1000.0f);
                Long lValueOf = Long.valueOf(this.zzng.getTime() * 1000);
                Long lValueOf2 = Long.valueOf((long) (this.zzng.getLatitude() * 1.0E7d));
                Long lValueOf3 = Long.valueOf((long) (this.zzng.getLongitude() * 1.0E7d));
                jSONObject3.put("radius", fValueOf);
                jSONObject3.put("lat", lValueOf2);
                jSONObject3.put("long", lValueOf3);
                jSONObject3.put("time", lValueOf);
                jSONObject2.put("uule", jSONObject3);
            }
        } catch (JSONException e2) {
            zzaug.zza("Failed adding location to the request JSON.", e2);
        }
    }
}
