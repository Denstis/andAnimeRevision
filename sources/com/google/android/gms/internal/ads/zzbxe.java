package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzbxe {
    private final Executor zzfbx;
    private final zzcwe zzfga;
    private final zzbzl zzfnm;
    private final Context zzlk;

    public zzbxe(Context context, zzcwe zzcweVar, Executor executor, zzbzl zzbzlVar) {
        this.zzlk = context;
        this.zzfga = zzcweVar;
        this.zzfbx = executor;
        this.zzfnm = zzbzlVar;
    }

    private final void zzk(zzbbw zzbbwVar) {
        zzbbwVar.zza("/video", zzaea.zzcxp);
        zzbbwVar.zza("/videoMeta", zzaea.zzcxq);
        zzbbwVar.zza("/precache", new zzbbg());
        zzbbwVar.zza("/delayPageLoaded", zzaea.zzcxt);
        zzbbwVar.zza("/instrument", zzaea.zzcxr);
        zzbbwVar.zza("/log", zzaea.zzcxk);
        zzbbwVar.zza("/videoClicked", zzaea.zzcxl);
        zzbbwVar.zzzp().zzar(true);
        zzbbwVar.zza("/click", zzaea.zzcxg);
        if (this.zzfga.zzdkl != null) {
            zzbbwVar.zza("/open", new zzaev(null, null));
        }
    }

    final /* synthetic */ zzddi zza(String str, String str2, Object obj) {
        final zzbbw zzbbwVarZza = this.zzfnm.zza(zzua.zzg(this.zzlk), false);
        final zzaxw zzaxwVarZzl = zzaxw.zzl(zzbbwVarZza);
        zzk(zzbbwVarZza);
        zzbbwVarZza.zza(this.zzfga.zzdkl != null ? zzbdj.zzaat() : zzbdj.zzaas());
        zzbbwVarZza.zzzp().zza(new zzbdf(this, zzbbwVarZza, zzaxwVarZzl) { // from class: com.google.android.gms.internal.ads.zzbxl
            private final zzbxe zzfpc;
            private final zzbbw zzfpd;
            private final zzaxw zzfpe;

            {
                this.zzfpc = this;
                this.zzfpd = zzbbwVarZza;
                this.zzfpe = zzaxwVarZzl;
            }

            @Override // com.google.android.gms.internal.ads.zzbdf
            public final void zzad(boolean z) {
                this.zzfpc.zza(this.zzfpd, this.zzfpe, z);
            }
        });
        zzbbwVarZza.zzb(str, str2, null);
        return zzaxwVarZzl;
    }

    final /* synthetic */ zzddi zza(JSONObject jSONObject, final zzbbw zzbbwVar) {
        final zzaxw zzaxwVarZzl = zzaxw.zzl(zzbbwVar);
        zzbbwVar.zza(this.zzfga.zzdkl != null ? zzbdj.zzaat() : zzbdj.zzaas());
        zzbbwVar.zzzp().zza(new zzbdf(this, zzbbwVar, zzaxwVarZzl) { // from class: com.google.android.gms.internal.ads.zzbxk
            private final zzbxe zzfpc;
            private final zzbbw zzfpd;
            private final zzaxw zzfpe;

            {
                this.zzfpc = this;
                this.zzfpd = zzbbwVar;
                this.zzfpe = zzaxwVarZzl;
            }

            @Override // com.google.android.gms.internal.ads.zzbdf
            public final void zzad(boolean z) {
                this.zzfpc.zzb(this.zzfpd, this.zzfpe, z);
            }
        });
        zzbbwVar.zza("google.afma.nativeAds.renderVideo", jSONObject);
        return zzaxwVarZzl;
    }

    final /* synthetic */ void zza(zzbbw zzbbwVar, zzaxw zzaxwVar, boolean z) {
        if (this.zzfga.zzgkf != null && zzbbwVar.zzxl() != null) {
            zzbbwVar.zzxl().zzb(this.zzfga.zzgkf);
        }
        zzaxwVar.zzwp();
    }

    final /* synthetic */ void zzb(zzbbw zzbbwVar, zzaxw zzaxwVar, boolean z) {
        if (this.zzfga.zzgkf != null && zzbbwVar.zzxl() != null) {
            zzbbwVar.zzxl().zzb(this.zzfga.zzgkf);
        }
        zzaxwVar.zzwp();
    }

    public final zzddi<zzbbw> zzm(final JSONObject jSONObject) {
        return zzdcy.zzb(zzdcy.zzb(zzdcy.zzah(null), new zzdcj(this) { // from class: com.google.android.gms.internal.ads.zzbxj
            private final zzbxe zzfpc;

            {
                this.zzfpc = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfpc.zzq(obj);
            }
        }, this.zzfbx), new zzdcj(this, jSONObject) { // from class: com.google.android.gms.internal.ads.zzbxh
            private final JSONObject zzfch;
            private final zzbxe zzfpc;

            {
                this.zzfpc = this;
                this.zzfch = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfpc.zza(this.zzfch, (zzbbw) obj);
            }
        }, this.zzfbx);
    }

    public final zzddi<zzbbw> zzp(final String str, final String str2) {
        return zzdcy.zzb(zzdcy.zzah(null), new zzdcj(this, str, str2) { // from class: com.google.android.gms.internal.ads.zzbxg
            private final String zzcyz;
            private final String zzdbt;
            private final zzbxe zzfpc;

            {
                this.zzfpc = this;
                this.zzcyz = str;
                this.zzdbt = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzdcj
            public final zzddi zzf(Object obj) {
                return this.zzfpc.zza(this.zzcyz, this.zzdbt, obj);
            }
        }, this.zzfbx);
    }

    final /* synthetic */ zzddi zzq(Object obj) {
        zzbbw zzbbwVarZza = this.zzfnm.zza(zzua.zzg(this.zzlk), false);
        final zzaxw zzaxwVarZzl = zzaxw.zzl(zzbbwVarZza);
        zzk(zzbbwVarZza);
        zzbbwVarZza.zzzp().zza(new zzbdi(zzaxwVarZzl) { // from class: com.google.android.gms.internal.ads.zzbxi
            private final zzaxw zzefu;

            {
                this.zzefu = zzaxwVarZzl;
            }

            @Override // com.google.android.gms.internal.ads.zzbdi
            public final void zzrf() {
                this.zzefu.zzwp();
            }
        });
        zzbbwVarZza.loadUrl((String) zzuv.zzon().zzd(zzza.zzcod));
        return zzaxwVarZzl;
    }
}
