package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.exoplayer2.C;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzagm extends zzagz<zzail> implements zzagv, zzaha {
    private final zzbdx zzcyw;
    private zzahd zzcyx;

    public zzagm(Context context, zzaxl zzaxlVar) throws zzbcf {
        try {
            this.zzcyw = new zzbdx(context, new zzags(this));
            this.zzcyw.setWillNotDraw(true);
            this.zzcyw.addJavascriptInterface(new zzagt(this), "GoogleJsInterface");
            com.google.android.gms.ads.internal.zzq.zzkj().zza(context, zzaxlVar.zzblz, this.zzcyw.getSettings());
            super.zzg(this);
        } catch (Throwable th) {
            throw new zzbcf("Init failed.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final void destroy() {
        this.zzcyw.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final boolean isDestroyed() {
        return this.zzcyw.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final void zza(zzahd zzahdVar) {
        this.zzcyx = zzahdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzagn
    public final void zza(String str, Map map) {
        zzagu.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzahk
    public final void zza(String str, JSONObject jSONObject) {
        zzagu.zza(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzagv, com.google.android.gms.internal.ads.zzagn
    public final void zzb(String str, JSONObject jSONObject) {
        zzagu.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final void zzcq(String str) {
        zzcr(String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>", str));
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final void zzcr(final String str) {
        zzaxn.zzdwm.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzagp
            private final zzagm zzcyy;
            private final String zzcyz;

            {
                this.zzcyy = this;
                this.zzcyz = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcyy.zzcw(this.zzcyz);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaha
    public final void zzcs(final String str) {
        zzaxn.zzdwm.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzago
            private final zzagm zzcyy;
            private final String zzcyz;

            {
                this.zzcyy = this;
                this.zzcyz = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcyy.zzcv(this.zzcyz);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzagv, com.google.android.gms.internal.ads.zzahk
    public final void zzct(final String str) {
        zzaxn.zzdwm.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.zzagr
            private final zzagm zzcyy;
            private final String zzcyz;

            {
                this.zzcyy = this;
                this.zzcyz = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzcyy.zzcu(this.zzcyz);
            }
        });
    }

    final /* synthetic */ void zzcu(String str) {
        this.zzcyw.zzct(str);
    }

    final /* synthetic */ void zzcv(String str) {
        this.zzcyw.loadUrl(str);
    }

    final /* synthetic */ void zzcw(String str) {
        this.zzcyw.loadData(str, "text/html", C.UTF8_NAME);
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
