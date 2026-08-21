package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzaip;
import com.google.android.gms.internal.ads.zzais;
import com.google.android.gms.internal.ads.zzait;
import com.google.android.gms.internal.ads.zzaix;
import com.google.android.gms.internal.ads.zzats;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzaxl;
import com.google.android.gms.internal.ads.zzaxn;
import com.google.android.gms.internal.ads.zzaxr;
import com.google.android.gms.internal.ads.zzdcy;
import com.google.android.gms.internal.ads.zzddi;
import com.google.android.gms.internal.ads.zzuv;
import com.google.android.gms.internal.ads.zzza;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class zzd {
    private long zzbku = 0;
    private Context zzlk;

    @VisibleForTesting
    private final void zza(Context context, zzaxl zzaxlVar, boolean z, zzats zzatsVar, String str, String str2, Runnable runnable) {
        if (zzq.zzkq().elapsedRealtime() - this.zzbku < DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS) {
            zzaxi.zzeu("Not retrying to fetch app settings");
            return;
        }
        this.zzbku = zzq.zzkq().elapsedRealtime();
        boolean z2 = true;
        if (zzatsVar != null) {
            if (!(zzq.zzkq().currentTimeMillis() - zzatsVar.zzul() > ((Long) zzuv.zzon().zzd(zzza.zzcoy)).longValue()) && zzatsVar.zzum()) {
                z2 = false;
            }
        }
        if (z2) {
            if (context == null) {
                zzaxi.zzeu("Context not provided to fetch application settings");
                return;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                zzaxi.zzeu("App settings could not be fetched. Required parameters missing");
                return;
            }
            Context applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
            this.zzlk = applicationContext;
            zzaix zzaixVarZzb = zzq.zzkw().zzb(this.zzlk, zzaxlVar);
            zzait<JSONObject> zzaitVar = zzais.zzday;
            zzaip zzaipVarZza = zzaixVarZzb.zza("google.afma.config.fetchAppSettings", zzaitVar, zzaitVar);
            try {
                JSONObject jSONObject = new JSONObject();
                if (!TextUtils.isEmpty(str)) {
                    jSONObject.put("app_id", str);
                } else if (!TextUtils.isEmpty(str2)) {
                    jSONObject.put("ad_unit_id", str2);
                }
                jSONObject.put("is_init", z);
                jSONObject.put("pn", context.getPackageName());
                zzddi zzddiVarZzi = zzaipVarZza.zzi(jSONObject);
                zzddi zzddiVarZzb = zzdcy.zzb(zzddiVarZzi, zzf.zzbkv, zzaxn.zzdwn);
                if (runnable != null) {
                    zzddiVarZzi.addListener(runnable, zzaxn.zzdwn);
                }
                zzaxr.zza(zzddiVarZzb, "ConfigLoader.maybeFetchNewAppSettings");
            } catch (Exception e2) {
                zzaxi.zzc("Error requesting application settings", e2);
            }
        }
    }

    public final void zza(Context context, zzaxl zzaxlVar, String str, zzats zzatsVar) {
        zza(context, zzaxlVar, false, zzatsVar, zzatsVar != null ? zzatsVar.zzuo() : null, str, null);
    }

    public final void zza(Context context, zzaxl zzaxlVar, String str, Runnable runnable) {
        zza(context, zzaxlVar, true, null, str, null, runnable);
    }
}
