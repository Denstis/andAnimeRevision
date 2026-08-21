package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbbb implements Runnable {
    private final /* synthetic */ String zzduo;
    private final /* synthetic */ String zzedh;
    private final /* synthetic */ zzbax zzedn;
    private final /* synthetic */ int zzedp;

    zzbbb(zzbax zzbaxVar, String str, String str2, int i2) {
        this.zzedn = zzbaxVar;
        this.zzduo = str;
        this.zzedh = str2;
        this.zzedp = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheComplete");
        map.put("src", this.zzduo);
        map.put("cachedSrc", this.zzedh);
        map.put("totalBytes", Integer.toString(this.zzedp));
        this.zzedn.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
