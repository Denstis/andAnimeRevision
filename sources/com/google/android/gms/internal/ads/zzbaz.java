package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbaz implements Runnable {
    private final /* synthetic */ String zzduo;
    private final /* synthetic */ String zzedh;
    private final /* synthetic */ long zzedi;
    private final /* synthetic */ long zzedj;
    private final /* synthetic */ boolean zzedk;
    private final /* synthetic */ int zzedl;
    private final /* synthetic */ int zzedm;
    private final /* synthetic */ zzbax zzedn;

    zzbaz(zzbax zzbaxVar, String str, String str2, long j2, long j3, boolean z, int i2, int i3) {
        this.zzedn = zzbaxVar;
        this.zzduo = str;
        this.zzedh = str2;
        this.zzedi = j2;
        this.zzedj = j3;
        this.zzedk = z;
        this.zzedl = i2;
        this.zzedm = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.zzduo);
        map.put("cachedSrc", this.zzedh);
        map.put("bufferedDuration", Long.toString(this.zzedi));
        map.put("totalDuration", Long.toString(this.zzedj));
        map.put("cacheReady", this.zzedk ? "1" : "0");
        map.put("playerCount", Integer.toString(this.zzedl));
        map.put("playerPreparedCount", Integer.toString(this.zzedm));
        this.zzedn.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
