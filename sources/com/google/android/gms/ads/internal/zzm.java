package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzdf;
import com.google.android.gms.internal.ads.zzdg;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
final class zzm implements Callable<zzdf> {
    private final /* synthetic */ zzl zzblj;

    zzm(zzl zzlVar) {
        this.zzblj = zzlVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzdf call() {
        return new zzdf(zzdg.zza(this.zzblj.zzblk.zzblz, this.zzblj.zzlk, false));
    }
}
