package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class zzcep implements zzcxn {
    static final zzcxn zzftu = new zzcep();

    private zzcep() {
    }

    @Override // com.google.android.gms.internal.ads.zzcxn
    public final Object apply(Object obj) {
        JSONObject jSONObject = (JSONObject) obj;
        zzaug.zzdy("Ad request signals:");
        zzaug.zzdy(jSONObject.toString(2));
        return jSONObject;
    }
}
