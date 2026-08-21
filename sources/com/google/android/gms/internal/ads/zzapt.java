package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzapt implements zzapi {
    private zzaip<JSONObject, JSONObject> zzdnr;
    private zzaip<JSONObject, JSONObject> zzdns;

    public zzapt(Context context) {
        zzaix zzaixVarZza = com.google.android.gms.ads.internal.zzq.zzkw().zza(context, zzaxl.zzwo());
        zzait<JSONObject> zzaitVar = zzais.zzday;
        this.zzdns = zzaixVarZza.zza("google.afma.request.getAdDictionary", zzaitVar, zzaitVar);
        zzaix zzaixVarZza2 = com.google.android.gms.ads.internal.zzq.zzkw().zza(context, zzaxl.zzwo());
        zzait<JSONObject> zzaitVar2 = zzais.zzday;
        this.zzdnr = zzaixVarZza2.zza("google.afma.sdkConstants.getSdkConstants", zzaitVar2, zzaitVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzapi
    public final zzaip<JSONObject, JSONObject> zztc() {
        return this.zzdnr;
    }
}
