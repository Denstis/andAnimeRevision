package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbba implements Runnable {
    private final /* synthetic */ String zzduo;
    private final /* synthetic */ String zzedh;
    private final /* synthetic */ boolean zzedk = false;
    private final /* synthetic */ zzbax zzedn;
    private final /* synthetic */ int zzedo;
    private final /* synthetic */ int zzedp;

    zzbba(zzbax zzbaxVar, String str, String str2, int i2, int i3, boolean z) {
        this.zzedn = zzbaxVar;
        this.zzduo = str;
        this.zzedh = str2;
        this.zzedo = i2;
        this.zzedp = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheProgress");
        map.put("src", this.zzduo);
        map.put("cachedSrc", this.zzedh);
        map.put("bytesLoaded", Integer.toString(this.zzedo));
        map.put("totalBytes", Integer.toString(this.zzedp));
        map.put("cacheReady", this.zzedk ? "1" : "0");
        this.zzedn.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
