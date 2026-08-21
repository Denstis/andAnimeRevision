package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzaew implements zzaez {
    private final /* synthetic */ zzaxv zzcyd;

    zzaew(zzaex zzaexVar, zzaxv zzaxvVar) {
        this.zzcyd = zzaxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaez
    public final void onFailure(String str) {
        this.zzcyd.setException(new zzaim(str));
    }

    @Override // com.google.android.gms.internal.ads.zzaez
    public final void zzc(JSONObject jSONObject) {
        this.zzcyd.set(jSONObject);
    }
}
