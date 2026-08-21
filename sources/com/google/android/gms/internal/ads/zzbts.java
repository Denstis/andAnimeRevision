package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzbts implements zzaer<Object> {
    private WeakReference<zzbtq> zzfke;

    private zzbts(zzbtq zzbtqVar) {
        this.zzfke = new WeakReference<>(zzbtqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zza(Object obj, Map<String, String> map) {
        zzbtq zzbtqVar = this.zzfke.get();
        if (zzbtqVar != null && "_ac".equals(map.get("eventName"))) {
            zzbtqVar.zzfjn.onAdClicked();
        }
    }
}
