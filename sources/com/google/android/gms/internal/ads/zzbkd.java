package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import b.e.a;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzbkd implements zzbnj, zzbog {
    private final zzaxl zzblk;
    private final zzbbw zzczi;
    private final zzcvr zzfet;
    private IObjectWrapper zzfeu;
    private boolean zzfev;
    private final Context zzlk;

    public zzbkd(Context context, zzbbw zzbbwVar, zzcvr zzcvrVar, zzaxl zzaxlVar) {
        this.zzlk = context;
        this.zzczi = zzbbwVar;
        this.zzfet = zzcvrVar;
        this.zzblk = zzaxlVar;
    }

    private final synchronized void zzafj() {
        if (this.zzfet.zzdlo) {
            if (this.zzczi == null) {
                return;
            }
            if (com.google.android.gms.ads.internal.zzq.zzky().zzp(this.zzlk)) {
                int i2 = this.zzblk.zzdwe;
                int i3 = this.zzblk.zzdwf;
                StringBuilder sb = new StringBuilder(23);
                sb.append(i2);
                sb.append(".");
                sb.append(i3);
                this.zzfeu = com.google.android.gms.ads.internal.zzq.zzky().zza(sb.toString(), this.zzczi.getWebView(), "", "javascript", this.zzfet.zzgjo.optInt("media_type", -1) == 0 ? null : "javascript");
                View view = this.zzczi.getView();
                if (this.zzfeu != null && view != null) {
                    com.google.android.gms.ads.internal.zzq.zzky().zza(this.zzfeu, view);
                    this.zzczi.zzaq(this.zzfeu);
                    com.google.android.gms.ads.internal.zzq.zzky().zzae(this.zzfeu);
                    this.zzfev = true;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnj
    public final synchronized void onAdImpression() {
        if (!this.zzfev) {
            zzafj();
        }
        if (this.zzfet.zzdlo && this.zzfeu != null && this.zzczi != null) {
            this.zzczi.zza("onSdkImpression", new a());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbog
    public final synchronized void onAdLoaded() {
    }
}
