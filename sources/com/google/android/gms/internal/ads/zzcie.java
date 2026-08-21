package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcie implements zzcge<zzcwm, zzchk> {
    private final zzchm zzfsy;

    public zzcie(zzchm zzchmVar) {
        this.zzfsy = zzchmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcge
    public final zzcgf<zzcwm, zzchk> zzd(String str, JSONObject jSONObject) throws zzcwh {
        zzcwm zzcwmVarZze = this.zzfsy.zze(str, jSONObject);
        if (zzcwmVarZze == null) {
            return null;
        }
        return new zzcgf<>(zzcwmVarZze, new zzchk(), str);
    }
}
