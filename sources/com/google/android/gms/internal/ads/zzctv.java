package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzctv implements zzcrr {
    static final zzcrr zzggf = new zzctv();

    private zzctv() {
    }

    @Override // com.google.android.gms.internal.ads.zzcrr
    public final void zzr(Object obj) {
        try {
            ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", 12451009);
        } catch (JSONException unused) {
        }
    }
}
