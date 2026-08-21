package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
final class zzup extends zzus<zzve> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzcdd;
    private final /* synthetic */ zzajx zzcde;
    private final /* synthetic */ zzug zzcdf;

    zzup(zzug zzugVar, Context context, String str, zzajx zzajxVar) {
        this.zzcdf = zzugVar;
        this.val$context = context;
        this.zzcdd = str;
        this.zzcde = zzajxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzve zza(zzvu zzvuVar) {
        return zzvuVar.zza(ObjectWrapper.wrap(this.val$context), this.zzcdd, this.zzcde, 15601000);
    }

    @Override // com.google.android.gms.internal.ads.zzus
    protected final /* synthetic */ zzve zzoe() {
        zzug.zza(this.val$context, "native_ad");
        return new zzxm();
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzve zzof() {
        return this.zzcdf.zzccv.zza(this.val$context, this.zzcdd, this.zzcde);
    }
}
