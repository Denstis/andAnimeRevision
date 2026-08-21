package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class zzbfs implements zzcvm {
    private final /* synthetic */ zzbfa zzerq;
    private Context zzezd;
    private String zzeze;

    private zzbfs(zzbfa zzbfaVar) {
        this.zzerq = zzbfaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcvm
    public final zzcvj zzadm() {
        zzdwh.zza(this.zzezd, (Class<Context>) Context.class);
        return new zzbfr(this.zzerq, this.zzezd, this.zzeze);
    }

    @Override // com.google.android.gms.internal.ads.zzcvm
    public final /* synthetic */ zzcvm zzbt(Context context) {
        this.zzezd = (Context) zzdwh.checkNotNull(context);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcvm
    public final /* synthetic */ zzcvm zzfm(String str) {
        this.zzeze = str;
        return this;
    }
}
