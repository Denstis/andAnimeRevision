package com.google.android.gms.internal.ads;

import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
final class zzur extends zzus<zzabm> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ zzug zzcdf;
    private final /* synthetic */ FrameLayout zzcdk;
    private final /* synthetic */ FrameLayout zzcdl;

    zzur(zzug zzugVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.zzcdf = zzugVar;
        this.zzcdk = frameLayout;
        this.zzcdl = frameLayout2;
        this.val$context = context;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzabm zza(zzvu zzvuVar) {
        return zzvuVar.zzc(ObjectWrapper.wrap(this.zzcdk), ObjectWrapper.wrap(this.zzcdl));
    }

    @Override // com.google.android.gms.internal.ads.zzus
    protected final /* synthetic */ zzabm zzoe() {
        zzug.zza(this.val$context, "native_ad_view_delegate");
        return new zzxu();
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzabm zzof() {
        return this.zzcdf.zzccx.zzb(this.val$context, this.zzcdk, this.zzcdl);
    }
}
