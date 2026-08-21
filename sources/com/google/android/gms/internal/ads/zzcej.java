package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
final class zzcej implements zzbpc {
    private final zzasl zzbnf;
    private final Context zzlk;

    zzcej(Context context, zzasl zzaslVar) {
        this.zzlk = context;
        this.zzbnf = zzaslVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zza(zzcvz zzcvzVar) {
        if (TextUtils.isEmpty(zzcvzVar.zzgkb.zzgjy.zzdlq)) {
            return;
        }
        this.zzbnf.zza(this.zzlk, zzcvzVar.zzgka.zzfga.zzgkg);
        this.zzbnf.zzj(this.zzlk, zzcvzVar.zzgkb.zzgjy.zzdlq);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzb(zzape zzapeVar) {
    }
}
