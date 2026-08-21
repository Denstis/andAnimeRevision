package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzaiy<I, O> implements zzaip<I, O> {
    private final zzahn zzdbd;
    private final zzair<O> zzdbe;
    private final zzaiq<I> zzdbf;
    private final String zzdbg;

    zzaiy(zzahn zzahnVar, String str, zzaiq<I> zzaiqVar, zzair<O> zzairVar) {
        this.zzdbd = zzahnVar;
        this.zzdbg = str;
        this.zzdbf = zzaiqVar;
        this.zzdbe = zzairVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzaia zzaiaVar, zzail zzailVar, I i2, zzaxv<O> zzaxvVar) {
        try {
            com.google.android.gms.ads.internal.zzq.zzkj();
            String strZzvm = zzaul.zzvm();
            zzaea.zzcxs.zza(strZzvm, new zzajd(this, zzaiaVar, zzaxvVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(TtmlNode.ATTR_ID, strZzvm);
            jSONObject.put("args", this.zzdbf.zzj(i2));
            zzailVar.zza(this.zzdbg, jSONObject);
        } catch (Exception e2) {
            try {
                zzaxvVar.setException(e2);
                zzaxi.zzc("Unable to invokeJavascript", e2);
            } finally {
                zzaiaVar.release();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final zzddi<O> zzf(I i2) {
        return zzi(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final zzddi<O> zzi(I i2) {
        zzaxv zzaxvVar = new zzaxv();
        zzaia zzaiaVarZzb = this.zzdbd.zzb((zzdf) null);
        zzaiaVarZzb.zza(new zzajb(this, zzaiaVarZzb, i2, zzaxvVar), new zzaja(this, zzaxvVar, zzaiaVarZzb));
        return zzaxvVar;
    }
}
