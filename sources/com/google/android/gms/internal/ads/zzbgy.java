package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbgy implements zzbgs {
    private final zzaui zzdrp;

    public zzbgy(zzaui zzauiVar) {
        this.zzdrp = zzauiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzk(Map<String, String> map) {
        String str = map.get("key");
        String str2 = map.get("value");
        if ("auto_collect_location".equals(str)) {
            this.zzdrp.zzaj(Boolean.parseBoolean(str2));
        }
    }
}
