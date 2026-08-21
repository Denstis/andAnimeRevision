package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
final class zzum extends zzus<zzvl> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzcdd;
    private final /* synthetic */ zzajx zzcde;
    private final /* synthetic */ zzug zzcdf;
    private final /* synthetic */ zzua zzcdg;

    zzum(zzug zzugVar, Context context, zzua zzuaVar, String str, zzajx zzajxVar) {
        this.zzcdf = zzugVar;
        this.val$context = context;
        this.zzcdg = zzuaVar;
        this.zzcdd = str;
        this.zzcde = zzajxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzvl zza(zzvu zzvuVar) {
        return zzvuVar.zzb(ObjectWrapper.wrap(this.val$context), this.zzcdg, this.zzcdd, this.zzcde, 15601000);
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzvl zzoe() {
        zzug.zza(this.val$context, "interstitial");
        return new zzxq();
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzvl zzof() {
        return this.zzcdf.zzccu.zza(this.val$context, this.zzcdg, this.zzcdd, this.zzcde, 2);
    }
}
