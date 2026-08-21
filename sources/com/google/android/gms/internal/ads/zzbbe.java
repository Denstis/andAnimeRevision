package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbbe implements Runnable {
    private final /* synthetic */ String zzduo;
    private final /* synthetic */ String zzedh;
    private final /* synthetic */ long zzedj;
    private final /* synthetic */ zzbax zzedn;

    zzbbe(zzbax zzbaxVar, String str, String str2, long j2) {
        this.zzedn = zzbaxVar;
        this.zzduo = str;
        this.zzedh = str2;
        this.zzedj = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheComplete");
        map.put("src", this.zzduo);
        map.put("cachedSrc", this.zzedh);
        map.put("totalDuration", Long.toString(this.zzedj));
        this.zzedn.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
