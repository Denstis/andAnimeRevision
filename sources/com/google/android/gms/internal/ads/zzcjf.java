package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzcjf {
    private final Clock zzbmp;
    private final List<String> zzfzh = Collections.synchronizedList(new ArrayList());

    public zzcjf(Clock clock) {
        this.zzbmp = clock;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str, int i2, long j2) {
        List<String> list = this.zzfzh;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 33);
        sb.append(str);
        sb.append(".");
        sb.append(i2);
        sb.append(".");
        sb.append(j2);
        list.add(sb.toString());
    }

    public final <T> zzddi<T> zza(zzcvr zzcvrVar, zzddi<T> zzddiVar) {
        long jElapsedRealtime = this.zzbmp.elapsedRealtime();
        String str = zzcvrVar.zzdcu;
        if (str != null) {
            zzdcy.zza(zzddiVar, new zzcje(this, str, jElapsedRealtime), zzaxn.zzdwn);
        }
        return zzddiVar;
    }

    public final String zzakw() {
        return TextUtils.join("_", this.zzfzh);
    }
}
