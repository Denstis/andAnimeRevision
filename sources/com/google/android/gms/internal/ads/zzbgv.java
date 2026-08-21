package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbgv implements zzbgs {
    private zzaui zzdrp;

    public zzbgv(zzaui zzauiVar) {
        this.zzdrp = zzauiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbgs
    public final void zzk(Map<String, String> map) {
        this.zzdrp.zzah(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
