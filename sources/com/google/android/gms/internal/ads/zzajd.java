package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class zzajd implements zzaez {
    private final /* synthetic */ zzaiy zzdbj;
    private final zzaia zzdbm;
    private final zzaxv<O> zzdbn;

    public zzajd(zzaiy zzaiyVar, zzaia zzaiaVar, zzaxv<O> zzaxvVar) {
        this.zzdbj = zzaiyVar;
        this.zzdbm = zzaiaVar;
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
        } catch (Throwable th) {
            this.zzdbm.release();
            throw th;
        }
        this.zzdbm.release();
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // com.google.android.gms.internal.ads.zzaez
    public final void zzc(JSONObject jSONObject) {
        try {
            try {
                this.zzdbn.set((O) this.zzdbj.zzdbe.zzd(jSONObject));
            } catch (IllegalStateException unused) {
            } catch (JSONException e2) {
                this.zzdbn.setException(e2);
            }
        } finally {
            this.zzdbm.release();
        }
    }
}
