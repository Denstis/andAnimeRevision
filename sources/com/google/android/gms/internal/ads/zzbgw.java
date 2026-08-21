package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbgw implements zzbgs {
    private final zzcvp zzfbb;

    public zzbgw(zzcvp zzcvpVar) {
        this.zzfbb = zzcvpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzk(Map<String, String> map) {
        String str = map.get("render_in_browser");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.zzfbb.zzbd(Boolean.parseBoolean(str));
        } catch (Exception unused) {
            throw new IllegalStateException("Invalid render_in_browser state");
        }
    }
}
