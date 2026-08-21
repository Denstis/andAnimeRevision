package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbbc implements Runnable {
    private final /* synthetic */ String zzduo;
    private final /* synthetic */ String zzedh;
    private final /* synthetic */ long zzedi;
    private final /* synthetic */ long zzedj;
    private final /* synthetic */ boolean zzedk;
    private final /* synthetic */ int zzedl;
    private final /* synthetic */ int zzedm;
    private final /* synthetic */ zzbax zzedn;
    private final /* synthetic */ int zzedo;
    private final /* synthetic */ int zzedp;

    zzbbc(zzbax zzbaxVar, String str, String str2, int i2, int i3, long j2, long j3, boolean z, int i4, int i5) {
        this.zzedn = zzbaxVar;
        this.zzduo = str;
        this.zzedh = str2;
        this.zzedo = i2;
        this.zzedp = i3;
        this.zzedi = j2;
        this.zzedj = j3;
        this.zzedk = z;
        this.zzedl = i4;
        this.zzedm = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.zzduo);
        map.put("cachedSrc", this.zzedh);
        map.put("bytesLoaded", Integer.toString(this.zzedo));
        map.put("totalBytes", Integer.toString(this.zzedp));
        map.put("bufferedDuration", Long.toString(this.zzedi));
        map.put("totalDuration", Long.toString(this.zzedj));
        map.put("cacheReady", this.zzedk ? "1" : "0");
        map.put("playerCount", Integer.toString(this.zzedl));
        map.put("playerPreparedCount", Integer.toString(this.zzedm));
        this.zzedn.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
