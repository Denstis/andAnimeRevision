package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbbd implements Runnable {
    private final /* synthetic */ String val$message;
    private final /* synthetic */ String zzduo;
    private final /* synthetic */ String zzedh;
    private final /* synthetic */ zzbax zzedn;
    private final /* synthetic */ String zzedq;

    zzbbd(zzbax zzbaxVar, String str, String str2, String str3, String str4) {
        this.zzedn = zzbaxVar;
        this.zzduo = str;
        this.zzedh = str2;
        this.zzedq = str3;
        this.val$message = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap map = new HashMap();
        map.put("event", "precacheCanceled");
        map.put("src", this.zzduo);
        if (!TextUtils.isEmpty(this.zzedh)) {
            map.put("cachedSrc", this.zzedh);
        }
        zzbax zzbaxVar = this.zzedn;
        map.put("type", zzbax.zzff(this.zzedq));
        map.put("reason", this.zzedq);
        if (!TextUtils.isEmpty(this.val$message)) {
            map.put("message", this.val$message);
        }
        this.zzedn.zza("onPrecacheEvent", (Map<String, String>) map);
    }
}
