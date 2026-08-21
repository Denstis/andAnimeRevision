package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzbeo implements zzdwb<Context> {
    private final zzbel zzejv;

    public zzbeo(zzbel zzbelVar) {
        this.zzejv = zzbelVar;
    }

    public static Context zza(zzbel zzbelVar) {
        return (Context) zzdwh.zza(zzbelVar.zzabp(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzdwo
    public final /* synthetic */ Object get() {
        return zza(this.zzejv);
    }
}
