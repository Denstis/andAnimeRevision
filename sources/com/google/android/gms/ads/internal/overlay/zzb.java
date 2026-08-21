package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.google.android.gms.internal.ads.zzaug;
import com.google.android.gms.internal.ads.zzaul;
import com.google.android.gms.internal.ads.zzaxi;
import com.google.android.gms.internal.ads.zzuv;
import com.google.android.gms.internal.ads.zzza;

/* JADX INFO: loaded from: classes.dex */
public final class zzb {
    private static boolean zza(Context context, Intent intent, zzt zztVar) {
        try {
            String strValueOf = String.valueOf(intent.toURI());
            zzaug.zzdy(strValueOf.length() != 0 ? "Launching an intent: ".concat(strValueOf) : new String("Launching an intent: "));
            com.google.android.gms.ads.internal.zzq.zzkj();
            zzaul.zza(context, intent);
            if (zztVar == null) {
                return true;
            }
            zztVar.zzsy();
            return true;
        } catch (ActivityNotFoundException e2) {
            zzaxi.zzeu(e2.getMessage());
            return false;
        }
    }

    public static boolean zza(Context context, zzd zzdVar, zzt zztVar) {
        String str;
        int i2 = 0;
        if (zzdVar == null) {
            str = "No intent data for launcher overlay.";
        } else {
            zzza.initialize(context);
            Intent intent = zzdVar.intent;
            if (intent != null) {
                return zza(context, intent, zztVar);
            }
            Intent intent2 = new Intent();
            if (!TextUtils.isEmpty(zzdVar.url)) {
                if (TextUtils.isEmpty(zzdVar.mimeType)) {
                    intent2.setData(Uri.parse(zzdVar.url));
                } else {
                    intent2.setDataAndType(Uri.parse(zzdVar.url), zzdVar.mimeType);
                }
                intent2.setAction("android.intent.action.VIEW");
                if (!TextUtils.isEmpty(zzdVar.packageName)) {
                    intent2.setPackage(zzdVar.packageName);
                }
                if (!TextUtils.isEmpty(zzdVar.zzdhn)) {
                    String[] strArrSplit = zzdVar.zzdhn.split("/", 2);
                    if (strArrSplit.length < 2) {
                        String strValueOf = String.valueOf(zzdVar.zzdhn);
                        zzaxi.zzeu(strValueOf.length() != 0 ? "Could not parse component name from open GMSG: ".concat(strValueOf) : new String("Could not parse component name from open GMSG: "));
                        return false;
                    }
                    intent2.setClassName(strArrSplit[0], strArrSplit[1]);
                }
                String str2 = zzdVar.zzdho;
                if (!TextUtils.isEmpty(str2)) {
                    try {
                        i2 = Integer.parseInt(str2);
                    } catch (NumberFormatException unused) {
                        zzaxi.zzeu("Could not parse intent flags.");
                    }
                    intent2.addFlags(i2);
                }
                if (((Boolean) zzuv.zzon().zzd(zzza.zzcpz)).booleanValue()) {
                    intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                    intent2.putExtra("android.support.customtabs.extra.user_opt_out", true);
                } else {
                    if (((Boolean) zzuv.zzon().zzd(zzza.zzcpy)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzq.zzkj();
                        zzaul.zzb(context, intent2);
                    }
                }
                return zza(context, intent2, zztVar);
            }
            str = "Open GMSG did not contain a URL.";
        }
        zzaxi.zzeu(str);
        return false;
    }
}
