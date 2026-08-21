package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Predicate;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzahc implements zzagv, zzaha {
    private final zzbbw zzczi;
    private final Context zzlk;

    public zzahc(Context context, zzaxl zzaxlVar, zzdf zzdfVar, com.google.android.gms.ads.internal.zza zzaVar) {
        this.zzlk = context;
        com.google.android.gms.ads.internal.zzq.zzkk();
        this.zzczi = zzbcb.zza(context, zzbdj.zzaar(), "", false, false, zzdfVar, zzaxlVar, null, null, null, zzsd.zzmm(), null, false);
        this.zzczi.getView().setWillNotDraw(true);
    }

    private static void runOnUiThread(Runnable runnable) {
        zzuv.zzoj();
        if (zzawy.zzwk()) {
            runnable.run();
        } else {
            zzaul.zzdsu.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final void destroy() {
        this.zzczi.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final boolean isDestroyed() {
        return this.zzczi.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final void zza(zzahd zzahdVar) {
        zzbdg zzbdgVarZzzp = this.zzczi.zzzp();
        zzahdVar.getClass();
        zzbdgVarZzzp.zza(zzahh.zzb(zzahdVar));
    }

    @Override // com.google.android.gms.internal.ads.zzail
    public final void zza(String str, zzaer<? super zzail> zzaerVar) {
        this.zzczi.zza(str, new zzahl(this, zzaerVar));
    }

    @Override // com.google.android.gms.internal.ads.zzagn
    public final void zza(String str, Map map) {
        zzagu.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzahk
    public final void zza(String str, JSONObject jSONObject) {
        zzagu.zza(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzail
    public final void zzb(String str, final zzaer<? super zzail> zzaerVar) {
        this.zzczi.zza(str, new Predicate(zzaerVar) { // from class: com.google.android.gms.internal.ads.zzahe
            private final zzaer zzczj;

            {
                this.zzczj = zzaerVar;
            }

            @Override // com.google.android.gms.common.util.Predicate
            public final boolean apply(Object obj) {
                zzaer zzaerVar2 = (zzaer) obj;
                return (zzaerVar2 instanceof zzahl) && ((zzahl) zzaerVar2).zzczp.equals(this.zzczj);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzagv, com.google.android.gms.internal.ads.zzagn
    public final void zzb(String str, JSONObject jSONObject) {
        zzagu.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final void zzcq(String str) {
        runOnUiThread(new zzahg(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)));
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final void zzcr(String str) {
        runOnUiThread(new zzahj(this, str));
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final void zzcs(String str) {
        runOnUiThread(new zzahi(this, str));
    }

    @Override // com.google.android.gms.internal.ads.zzagv, com.google.android.gms.internal.ads.zzahk
    public final void zzct(final String str) {
        runOnUiThread(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzahf
            private final String zzcyz;
            private final zzahc zzczk;

            {
                this.zzczk = this;
                this.zzcyz = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzczk.zzcy(this.zzcyz);
            }
        });
    }

    final /* synthetic */ void zzcy(String str) {
        this.zzczi.zzct(str);
    }

    @Override // com.google.android.gms.internal.ads.zzagv
    public final void zzk(String str, String str2) {
        zzagu.zza(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final zzaik zzrd() {
        return new zzain(this);
    }
}
