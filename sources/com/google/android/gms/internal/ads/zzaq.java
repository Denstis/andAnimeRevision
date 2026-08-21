package com.google.android.gms.internal.ads;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class zzaq {
    public static zzd zzb(zzo zzoVar) {
        long j2;
        long j3;
        boolean z;
        long j4;
        long j5;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = zzoVar.zzab;
        String str = map.get("Date");
        long jZzf = str != null ? zzf(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i2 = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(",", 0);
            j2 = 0;
            int i3 = 0;
            j3 = 0;
            while (i2 < strArrSplit.length) {
                String strTrim = strArrSplit[i2].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    return null;
                }
                if (strTrim.startsWith("max-age=")) {
                    try {
                        j2 = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j3 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                    i3 = 1;
                }
                i2++;
            }
            i2 = i3;
            z = true;
        } else {
            j2 = 0;
            j3 = 0;
            z = false;
        }
        String str3 = map.get("Expires");
        long jZzf2 = str3 != null ? zzf(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long jZzf3 = str4 != null ? zzf(str4) : 0L;
        String str5 = map.get("ETag");
        if (z) {
            j4 = jCurrentTimeMillis + (j2 * 1000);
            if (i2 != 0) {
                j5 = j4;
            } else {
                Long.signum(j3);
                j5 = (j3 * 1000) + j4;
            }
        } else if (jZzf <= 0 || jZzf2 < jZzf) {
            j4 = 0;
            j5 = j4;
        } else {
            j5 = (jZzf2 - jZzf) + jCurrentTimeMillis;
            j4 = j5;
        }
        zzd zzdVar = new zzd();
        zzdVar.data = zzoVar.data;
        zzdVar.zzg = str5;
        zzdVar.zzk = j4;
        zzdVar.zzj = j5;
        zzdVar.zzh = jZzf;
        zzdVar.zzi = jZzf3;
        zzdVar.zzl = map;
        zzdVar.zzm = zzoVar.allHeaders;
        return zzdVar;
    }

    static String zzb(long j2) {
        return zzp().format(new Date(j2));
    }

    private static long zzf(String str) {
        try {
            return zzp().parse(str).getTime();
        } catch (ParseException e2) {
            zzag.zza(e2, "Unable to parse dateStr: %s, falling back to 0", str);
            return 0L;
        }
    }

    private static SimpleDateFormat zzp() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }
}
