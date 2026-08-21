package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzaab {
    private zzaab zzcuw;
    private final List<zzzz> zzcuu = new LinkedList();
    private final Map<String, String> zzcuv = new LinkedHashMap();
    private final Object lock = new Object();

    @VisibleForTesting
    boolean zzcut = true;

    public zzaab(boolean z, String str, String str2) {
        this.zzcuv.put("action", str);
        this.zzcuv.put("ad_format", str2);
    }

    public final boolean zza(zzzz zzzzVar, long j2, String... strArr) {
        synchronized (this.lock) {
            for (String str : strArr) {
                this.zzcuu.add(new zzzz(j2, str, zzzzVar));
            }
        }
        return true;
    }

    public final void zzc(zzaab zzaabVar) {
        synchronized (this.lock) {
            this.zzcuw = zzaabVar;
        }
    }

    public final zzzz zzer(long j2) {
        if (this.zzcut) {
            return new zzzz(j2, null, null);
        }
        return null;
    }

    public final void zzj(String str, String str2) {
        zzzr zzzrVarZzub;
        if (!this.zzcut || TextUtils.isEmpty(str2) || (zzzrVarZzub = com.google.android.gms.ads.internal.zzq.zzkn().zzub()) == null) {
            return;
        }
        synchronized (this.lock) {
            zzzv zzzvVarZzcl = zzzrVarZzub.zzcl(str);
            Map<String, String> map = this.zzcuv;
            map.put(str, zzzvVarZzcl.zzi(map.get(str), str2));
        }
    }

    public final String zzqc() {
        String string;
        StringBuilder sb = new StringBuilder();
        synchronized (this.lock) {
            for (zzzz zzzzVar : this.zzcuu) {
                long time = zzzzVar.getTime();
                String strZzpz = zzzzVar.zzpz();
                zzzz zzzzVarZzqa = zzzzVar.zzqa();
                if (zzzzVarZzqa != null && time > 0) {
                    long time2 = time - zzzzVarZzqa.getTime();
                    sb.append(strZzpz);
                    sb.append('.');
                    sb.append(time2);
                    sb.append(',');
                }
            }
            this.zzcuu.clear();
            if (!TextUtils.isEmpty(null)) {
                sb.append((String) null);
            } else if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            string = sb.toString();
        }
        return string;
    }

    @VisibleForTesting
    final Map<String, String> zzqd() {
        synchronized (this.lock) {
            zzzr zzzrVarZzub = com.google.android.gms.ads.internal.zzq.zzkn().zzub();
            if (zzzrVarZzub != null && this.zzcuw != null) {
                return zzzrVarZzub.zza(this.zzcuv, this.zzcuw.zzqd());
            }
            return this.zzcuv;
        }
    }
}
