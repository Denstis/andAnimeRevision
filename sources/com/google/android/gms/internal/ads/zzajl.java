package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzajl implements zzaez {
    private final zzaxv<O> zzdbn;
    private final /* synthetic */ zzajj zzdbq;

    public zzajl(zzajj zzajjVar, zzaxv<O> zzaxvVar) {
        this.zzdbq = zzajjVar;
        this.zzdbn = zzaxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaez
    public final void onFailure(String str) {
        try {
            if (str == null) {
                this.zzdbn.setException(new zzaim());
            } else {
                this.zzdbn.setException(new zzaim(str));
            }
        } catch (IllegalStateException unused) {
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.gms.internal.ads.zzaez
    public final void zzc(JSONObject jSONObject) {
        try {
            this.zzdbn.set((O) this.zzdbq.zzdbe.zzd(jSONObject));
        } catch (IllegalStateException unused) {
        } catch (JSONException e2) {
            this.zzdbn.setException(e2);
        }
    }
}
