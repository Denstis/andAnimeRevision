package com.google.android.gms.internal.ads;

import android.app.Activity;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
final class zzul extends zzus<zzano> {
    private final /* synthetic */ Activity val$activity;
    private final /* synthetic */ zzug zzcdf;

    zzul(zzug zzugVar, Activity activity) {
        this.zzcdf = zzugVar;
        this.val$activity = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzano zza(zzvu zzvuVar) {
        return zzvuVar.zzf(ObjectWrapper.wrap(this.val$activity));
    }

    @Override // com.google.android.gms.internal.ads.zzus
    protected final /* synthetic */ zzano zzoe() {
        zzug.zza(this.val$activity, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzano zzof() {
        return this.zzcdf.zzcda.zzc(this.val$activity);
    }
}
