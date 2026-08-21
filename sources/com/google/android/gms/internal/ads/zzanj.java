package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class zzanj {
    private final zzbbw zzczi;
    private final String zzdgr;

    public zzanj(zzbbw zzbbwVar) {
        this(zzbbwVar, "");
    }

    public zzanj(zzbbw zzbbwVar, String str) {
        this.zzczi = zzbbwVar;
        this.zzdgr = str;
    }

    public final void zza(int i2, int i3, int i4, int i5, float f2, int i6) {
        try {
            this.zzczi.zzb("onScreenInfoChanged", new JSONObject().put("width", i2).put("height", i3).put("maxSizeWidth", i4).put("maxSizeHeight", i5).put("density", f2).put("rotation", i6));
        } catch (JSONException e2) {
            zzaxi.zzc("Error occurred while obtaining screen information.", e2);
        }
    }

    public final void zzb(int i2, int i3, int i4, int i5) {
        try {
            this.zzczi.zzb("onSizeChanged", new JSONObject().put("x", i2).put("y", i3).put("width", i4).put("height", i5));
        } catch (JSONException e2) {
            zzaxi.zzc("Error occurred while dispatching size change.", e2);
        }
    }

    public final void zzc(int i2, int i3, int i4, int i5) {
        try {
            this.zzczi.zzb("onDefaultPositionReceived", new JSONObject().put("x", i2).put("y", i3).put("width", i4).put("height", i5));
        } catch (JSONException e2) {
            zzaxi.zzc("Error occurred while dispatching default position.", e2);
        }
    }

    public final void zzdn(String str) {
        try {
            JSONObject jSONObjectPut = new JSONObject().put("message", str).put("action", this.zzdgr);
            if (this.zzczi != null) {
                this.zzczi.zzb("onError", jSONObjectPut);
            }
        } catch (JSONException e2) {
            zzaxi.zzc("Error occurred while dispatching error event.", e2);
        }
    }

    public final void zzdo(String str) {
        try {
            this.zzczi.zzb("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e2) {
            zzaxi.zzc("Error occurred while dispatching ready Event.", e2);
        }
    }

    public final void zzdp(String str) {
        try {
            this.zzczi.zzb("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e2) {
            zzaxi.zzc("Error occurred while dispatching state change.", e2);
        }
    }
}
