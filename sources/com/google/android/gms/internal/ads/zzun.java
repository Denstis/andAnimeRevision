package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: loaded from: classes.dex */
final class zzun extends zzus<zzvl> {
    private final /* synthetic */ Context val$context;
    private final /* synthetic */ String zzcdd;
    private final /* synthetic */ zzug zzcdf;
    private final /* synthetic */ zzua zzcdg;

    zzun(zzug zzugVar, Context context, zzua zzuaVar, String str) {
        this.zzcdf = zzugVar;
        this.val$context = context;
        this.zzcdg = zzuaVar;
        this.zzcdd = str;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzvl zza(zzvu zzvuVar) {
        return zzvuVar.zza(ObjectWrapper.wrap(this.val$context), this.zzcdg, this.zzcdd, 15601000);
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzvl zzoe() {
        zzug.zza(this.val$context, FirebaseAnalytics.Event.SEARCH);
        return new zzxq();
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzvl zzof() {
        return this.zzcdf.zzccu.zza(this.val$context, this.zzcdg, this.zzcdd, null, 3);
    }
}
