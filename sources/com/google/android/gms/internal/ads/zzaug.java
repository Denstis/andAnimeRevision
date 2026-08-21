package com.google.android.gms.internal.ads;

import android.util.Log;
import com.google.ads.AdRequest;

/* JADX INFO: loaded from: classes.dex */
public final class zzaug extends zzaxi {
    public static void zza(String str, Throwable th) {
        if (zzuu()) {
            Log.v(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzdy(String str) {
        if (zzuu()) {
            Log.v(AdRequest.LOGTAG, str);
        }
    }

    public static boolean zzuu() {
        if (zzaxi.isLoggable(2)) {
            return ((Boolean) zzuv.zzon().zzd(zzza.zzclv)).booleanValue();
        }
        return false;
    }
}
