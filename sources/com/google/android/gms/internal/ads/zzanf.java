package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzanf {
    private final boolean zzdgh;
    private final boolean zzdgi;
    private final boolean zzdgj;
    private final boolean zzdgk;
    private final boolean zzdgl;

    private zzanf(zzanh zzanhVar) {
        this.zzdgh = zzanhVar.zzdgh;
        this.zzdgi = zzanhVar.zzdgi;
        this.zzdgj = zzanhVar.zzdgj;
        this.zzdgk = zzanhVar.zzdgk;
        this.zzdgl = zzanhVar.zzdgl;
    }

    public final JSONObject toJson() {
        try {
            return new JSONObject().put("sms", this.zzdgh).put("tel", this.zzdgi).put("calendar", this.zzdgj).put("storePicture", this.zzdgk).put("inlineVideo", this.zzdgl);
        } catch (JSONException e2) {
            zzaxi.zzc("Error occured while obtaining the MRAID capabilities.", e2);
            return null;
        }
    }
}
