package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbhx implements zzpj {
    private final Clock zzbmp;
    private zzbbw zzczi;
    private final zzbhi zzfbu;
    private final Executor zzfbx;
    private boolean zzbsc = false;
    private boolean zzfcw = false;
    private zzbhm zzfbz = new zzbhm();

    public zzbhx(Executor executor, zzbhi zzbhiVar, Clock clock) {
        this.zzfbx = executor;
        this.zzfbu = zzbhiVar;
        this.zzbmp = clock;
    }

    private final void zzael() {
        try {
            final JSONObject jSONObjectZzj = this.zzfbu.zzj(this.zzfbz);
            if (this.zzczi != null) {
                this.zzfbx.execute(new Runnable(this, jSONObjectZzj) { // from class: com.google.android.gms.internal.ads.zzbhw
                    private final JSONObject zzfch;
                    private final zzbhx zzfcv;

                    {
                        this.zzfcv = this;
                        this.zzfch = jSONObjectZzj;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzfcv.zzh(this.zzfch);
                    }
                });
            }
        } catch (JSONException e2) {
            zzaug.zza("Failed to call video active view js", e2);
        }
    }

    public final void disable() {
        this.zzbsc = false;
    }

    public final void enable() {
        this.zzbsc = true;
        zzael();
    }

    @Override // com.google.android.gms.internal.ads.zzpj
    public final void zza(zzpk zzpkVar) {
        this.zzfbz.zzbnp = this.zzfcw ? false : zzpkVar.zzbnp;
        this.zzfbz.timestamp = this.zzbmp.elapsedRealtime();
        this.zzfbz.zzfcg = zzpkVar;
        if (this.zzbsc) {
            zzael();
        }
    }

    public final void zzax(boolean z) {
        this.zzfcw = z;
    }

    public final void zzg(zzbbw zzbbwVar) {
        this.zzczi = zzbbwVar;
    }

    final /* synthetic */ void zzh(JSONObject jSONObject) {
        this.zzczi.zza("AFMA_updateActiveView", jSONObject);
    }
}
