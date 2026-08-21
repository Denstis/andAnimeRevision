package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
final class zzuo extends zzus<zzwb> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzug zzcdf;

    zzuo(zzug zzugVar, Context context) {
        this.zzcdf = zzugVar;
        this.val$context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzwb zza(zzvu zzvuVar) {
        return zzvuVar.zza(ObjectWrapper.wrap(this.val$context), 15601000);
    }

    @Override // com.google.android.gms.internal.ads.zzus
    protected final /* synthetic */ zzwb zzoe() {
        zzug.zza(this.val$context, "mobile_ads_settings");
        return new zzxs();
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzwb zzof() {
        return this.zzcdf.zzccw.zzi(this.val$context);
    }
}
