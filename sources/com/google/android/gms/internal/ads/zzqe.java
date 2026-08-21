package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;

/* JADX INFO: loaded from: classes.dex */
final class zzqe implements ValueCallback<String> {
    private final /* synthetic */ zzqb zzbqc;

    zzqe(zzqb zzqbVar) {
        this.zzbqc = zzqbVar;
    }

    @Override // android.webkit.ValueCallback
    public final /* synthetic */ void onReceiveValue(String str) {
        zzqb zzqbVar = this.zzbqc;
        zzqbVar.zzbpy.zza(zzqbVar.zzbpv, zzqbVar.zzbpw, str, zzqbVar.zzbpx);
    }
}
