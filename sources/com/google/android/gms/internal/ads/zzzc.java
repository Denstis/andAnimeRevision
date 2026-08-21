package com.google.android.gms.internal.ads;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class zzzc {
    public static boolean zzck(String str) {
        return zzh((String) zzuv.zzon().zzd(zzza.zzcrg), str);
    }

    private static boolean zzh(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                return Pattern.matches(str, str2);
            } catch (RuntimeException e2) {
                com.google.android.gms.ads.internal.zzq.zzkn().zza(e2, "NonagonUtil.isPatternMatched");
            }
        }
        return false;
    }
}
