package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzckk implements zzcge<zzamd, zzchk> {
    private final zzclp zzgae;

    public zzckk(zzclp zzclpVar) {
        this.zzgae = zzclpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcge
    public final zzcgf<zzamd, zzchk> zzd(String str, JSONObject jSONObject) {
        zzamd zzamdVarZzgc = this.zzgae.zzgc(str);
        if (zzamdVarZzgc == null) {
            return null;
        }
        return new zzcgf<>(zzamdVarZzgc, new zzchk(), str);
    }
}
