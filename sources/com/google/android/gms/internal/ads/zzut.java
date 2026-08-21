package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
final class zzut extends zzus<zzaqb> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzajx zzcde;
    private final /* synthetic */ zzug zzcdf;

    zzut(zzug zzugVar, Context context, zzajx zzajxVar) {
        this.zzcdf = zzugVar;
        this.val$context = context;
        this.zzcde = zzajxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzaqb zza(zzvu zzvuVar) {
        return zzvuVar.zza(ObjectWrapper.wrap(this.val$context), this.zzcde, 15601000);
    }

    @Override // com.google.android.gms.internal.ads.zzus
    protected final /* synthetic */ zzaqb zzoe() {
        zzug.zza(this.val$context, "rewarded_video");
        return new zzxy();
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzaqb zzof() {
        return this.zzcdf.zzccy.zza(this.val$context, this.zzcde);
    }
}
