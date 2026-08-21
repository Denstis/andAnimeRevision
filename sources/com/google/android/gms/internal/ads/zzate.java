package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzate {
    @VisibleForTesting
    private static Uri zza(String str, String str2, String str3) {
        int iIndexOf = str.indexOf("&adurl");
        if (iIndexOf == -1) {
            iIndexOf = str.indexOf("?adurl");
        }
        if (iIndexOf == -1) {
            return Uri.parse(str).buildUpon().appendQueryParameter(str2, str3).build();
        }
        int i2 = iIndexOf + 1;
        return Uri.parse(str.substring(0, i2) + str2 + "=" + str3 + "&" + str.substring(i2));
    }

    public static String zzc(Uri uri, Context context) {
        String strZzag;
        if (com.google.android.gms.ads.internal.zzq.zzlh().zzab(context) && (strZzag = com.google.android.gms.ads.internal.zzq.zzlh().zzag(context)) != null) {
            if (((Boolean) zzuv.zzon().zzd(zzza.zzcji)).booleanValue()) {
                String str = (String) zzuv.zzon().zzd(zzza.zzcjj);
                String string = uri.toString();
                if (string.contains(str)) {
                    com.google.android.gms.ads.internal.zzq.zzlh().zzh(context, strZzag);
                    return string.replace(str, strZzag);
                }
            } else if (TextUtils.isEmpty(uri.getQueryParameter("fbs_aeid"))) {
                uri = zza(uri.toString(), "fbs_aeid", strZzag);
                com.google.android.gms.ads.internal.zzq.zzlh().zzh(context, strZzag);
            }
            return uri.toString();
        }
        return uri.toString();
    }

    public static String zzd(String str, Context context, boolean z) {
        String strZzag;
        if ((((Boolean) zzuv.zzon().zzd(zzza.zzcjq)).booleanValue() && !z) || !com.google.android.gms.ads.internal.zzq.zzlh().zzab(context) || TextUtils.isEmpty(str) || (strZzag = com.google.android.gms.ads.internal.zzq.zzlh().zzag(context)) == null) {
            return str;
        }
        if (!((Boolean) zzuv.zzon().zzd(zzza.zzcji)).booleanValue()) {
            if (str.contains("fbs_aeid")) {
                return str;
            }
            if (com.google.android.gms.ads.internal.zzq.zzkj().zzef(str)) {
                com.google.android.gms.ads.internal.zzq.zzlh().zzh(context, strZzag);
                return zza(str, "fbs_aeid", strZzag).toString();
            }
            if (!com.google.android.gms.ads.internal.zzq.zzkj().zzeg(str)) {
                return str;
            }
            com.google.android.gms.ads.internal.zzq.zzlh().zzi(context, strZzag);
            return zza(str, "fbs_aeid", strZzag).toString();
        }
        CharSequence charSequence = (String) zzuv.zzon().zzd(zzza.zzcjj);
        if (!str.contains(charSequence)) {
            return str;
        }
        if (com.google.android.gms.ads.internal.zzq.zzkj().zzef(str)) {
            com.google.android.gms.ads.internal.zzq.zzlh().zzh(context, strZzag);
            return str.replace(charSequence, strZzag);
        }
        if (!com.google.android.gms.ads.internal.zzq.zzkj().zzeg(str)) {
            return str;
        }
        com.google.android.gms.ads.internal.zzq.zzlh().zzi(context, strZzag);
        return str.replace(charSequence, strZzag);
    }
}
