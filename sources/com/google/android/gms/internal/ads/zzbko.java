package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzbko<AdT> implements zzbkp<AdT> {
    private final Map<String, zzcga<AdT>> zzffj;

    zzbko(Map<String, zzcga<AdT>> map) {
        this.zzffj = map;
    }

    @Override // com.google.android.gms.internal.ads.zzbkp
    public final zzcga<AdT> zze(int i2, String str) {
        return this.zzffj.get(str);
    }
}
