package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzcdw {
    private final Executor executor;
    private final zzcwe zzfga;
    private final zzaxl zzfut;
    private final Context zzlk;

    public zzcdw(Context context, zzaxl zzaxlVar, zzcwe zzcweVar, Executor executor) {
        this.zzlk = context;
        this.zzfut = zzaxlVar;
        this.zzfga = zzcweVar;
        this.executor = executor;
    }

    public final zzddi<zzcvz> zzaki() {
        zzaix zzaixVarZzb = com.google.android.gms.ads.internal.zzq.zzkw().zzb(this.zzlk, this.zzfut);
        zzait<JSONObject> zzaitVar = zzais.zzday;
        final zzaip zzaipVarZza = zzaixVarZzb.zza("google.afma.response.normalize", zzaitVar, zzaitVar);
        final zztr zztrVar = this.zzfga.zzgkg.zzcck;
        return zzdcy.zzb(zzdcy.zzb(zzdcy.zzb(zzdcy.zzah(""), new zzdcj(this, zztrVar) { // from class: com.google.android.gms.internal.ads.zzcdz
            private final zzcdw zzfuv;
            private final zztr zzfuw;

            {
                this.zzfuv = this;
                this.zzfuw = zztrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) throws JSONException {
                zztr zztrVar2 = this.zzfuw;
                String str = zztrVar2.zzcbt;
                String str2 = zztrVar2.zzcbu;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("headers", new JSONObject());
                jSONObject3.put(TtmlNode.TAG_BODY, str);
                jSONObject2.put("base_url", "");
                jSONObject2.put("signals", new JSONObject(str2));
                jSONObject.put("request", jSONObject2);
                jSONObject.put("response", jSONObject3);
                jSONObject.put("flags", new JSONObject());
                return zzdcy.zzah(jSONObject);
            }
        }, this.executor), new zzdcj(zzaipVarZza) { // from class: com.google.android.gms.internal.ads.zzcdy
            private final zzaip zzfuu;

            {
                this.zzfuu = zzaipVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfuu.zzi((JSONObject) obj);
            }
        }, this.executor), new zzdcj(this) { // from class: com.google.android.gms.internal.ads.zzceb
            private final zzcdw zzfuv;

            {
                this.zzfuv = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfuv.zzn((JSONObject) obj);
            }
        }, this.executor);
    }

    final /* synthetic */ zzddi zzn(JSONObject jSONObject) {
        return zzdcy.zzah(new zzcvz(new zzcvy(this.zzfga), zzcvx.zza(new StringReader(jSONObject.toString()))));
    }
}
