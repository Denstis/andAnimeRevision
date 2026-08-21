package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
final class zzuq extends zzus<zzabt> {
    private final /* synthetic */ zzug zzcdf;
    private final /* synthetic */ View zzcdh;
    private final /* synthetic */ HashMap zzcdi;
    private final /* synthetic */ HashMap zzcdj;

    zzuq(zzug zzugVar, View view, HashMap map, HashMap map2) {
        this.zzcdf = zzugVar;
        this.zzcdh = view;
        this.zzcdi = map;
        this.zzcdj = map2;
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzabt zza(zzvu zzvuVar) {
        return zzvuVar.zza(ObjectWrapper.wrap(this.zzcdh), ObjectWrapper.wrap(this.zzcdi), ObjectWrapper.wrap(this.zzcdj));
    }

    @Override // com.google.android.gms.internal.ads.zzus
    protected final /* synthetic */ zzabt zzoe() {
        zzug.zza(this.zzcdh.getContext(), "native_ad_view_holder_delegate");
        return new zzxx();
    }

    @Override // com.google.android.gms.internal.ads.zzus
    public final /* synthetic */ zzabt zzof() {
        return this.zzcdf.zzcdb.zzb(this.zzcdh, this.zzcdi, this.zzcdj);
    }
}
