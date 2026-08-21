package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzaen implements zzaer<zzbbw> {
    zzaen() {
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzbbw zzbbwVar, Map map) {
        zzbbw zzbbwVar2 = zzbbwVar;
        String str = (String) map.get("action");
        if ("pause".equals(str)) {
            zzbbwVar2.zzjp();
        } else if ("resume".equals(str)) {
            zzbbwVar2.zzjq();
        }
    }
}
