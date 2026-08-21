package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzbyr implements Callable<zzbyh> {
    private final zzbcb zzbmi;
    private final zzaxl zzdio;
    private final zzdf zzegb;
    private final Executor zzfbx;
    private final com.google.android.gms.ads.internal.zza zzfop;
    private final Context zzlk;

    public zzbyr(Context context, Executor executor, zzdf zzdfVar, zzaxl zzaxlVar, com.google.android.gms.ads.internal.zza zzaVar, zzbcb zzbcbVar) {
        this.zzlk = context;
        this.zzfbx = executor;
        this.zzegb = zzdfVar;
        this.zzdio = zzaxlVar;
        this.zzfop = zzaVar;
        this.zzbmi = zzbcbVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzbyh call() {
        zzbyh zzbyhVar = new zzbyh(this);
        zzbyhVar.zzajg();
        return zzbyhVar;
    }
}
