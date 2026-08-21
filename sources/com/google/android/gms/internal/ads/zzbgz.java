package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbgz implements zzbgs {
    private final Context zzlk;

    public zzbgz(Context context) {
        this.zzlk = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzk(Map<String, String> map) {
        CookieManager cookieManagerZzbd;
        String str = map.get("cookie");
        if (TextUtils.isEmpty(str) || (cookieManagerZzbd = com.google.android.gms.ads.internal.zzq.zzkl().zzbd(this.zzlk)) == null) {
            return;
        }
        cookieManagerZzbd.setCookie("googleads.g.doubleclick.nes", str);
    }
}
