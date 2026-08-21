package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcjv implements zzcge<zzcwm, zzchn> {
    private final zzchm zzfsy;
    private final Map<String, zzcgf<zzcwm, zzchn>> zzfzq = new HashMap();

    public zzcjv(zzchm zzchmVar) {
        this.zzfsy = zzchmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcge
    public final zzcgf<zzcwm, zzchn> zzd(String str, JSONObject jSONObject) {
        synchronized (this) {
            zzcgf<zzcwm, zzchn> zzcgfVar = this.zzfzq.get(str);
            if (zzcgfVar == null) {
                zzcwm zzcwmVarZze = this.zzfsy.zze(str, jSONObject);
                if (zzcwmVarZze == null) {
                    return null;
                }
                zzcgfVar = new zzcgf<>(zzcwmVarZze, new zzchn(), str);
                this.zzfzq.put(str, zzcgfVar);
            }
            return zzcgfVar;
        }
    }
}
