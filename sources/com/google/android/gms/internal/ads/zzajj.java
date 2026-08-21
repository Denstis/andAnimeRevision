package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzajj<I, O> implements zzdcj<I, O> {
    private final zzair<O> zzdbe;
    private final zzaiq<I> zzdbf;
    private final String zzdbg;
    private final zzddi<zzail> zzdbl;

    zzajj(zzddi<zzail> zzddiVar, String str, zzaiq<I> zzaiqVar, zzair<O> zzairVar) {
        this.zzdbl = zzddiVar;
        this.zzdbg = str;
        this.zzdbf = zzaiqVar;
        this.zzdbe = zzairVar;
    }

    final /* synthetic */ zzddi zza(Object obj, zzail zzailVar) throws JSONException {
        zzaxv zzaxvVar = new zzaxv();
        com.google.android.gms.ads.internal.zzq.zzkj();
        String strZzvm = zzaul.zzvm();
        zzaea.zzcxs.zza(strZzvm, new zzajl(this, zzaxvVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(TtmlNode.ATTR_ID, strZzvm);
        jSONObject.put("args", this.zzdbf.zzj(obj));
        zzailVar.zza(this.zzdbg, jSONObject);
        return zzaxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final zzddi<O> zzf(final I i2) {
        return zzdcy.zzb(this.zzdbl, new zzdcj(this, i2) { // from class: com.google.android.gms.internal.ads.zzaji
            private final zzajj zzdbo;
            private final Object zzdbp;

            {
                this.zzdbo = this;
                this.zzdbp = i2;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzdbo.zza(this.zzdbp, (zzail) obj);
            }
        }, zzaxn.zzdwn);
    }
}
