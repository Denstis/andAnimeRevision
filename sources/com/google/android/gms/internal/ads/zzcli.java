package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public final class zzcli implements zzclc<zzbrs> {
    private final zzbso zzfxy;
    private final Context zzlk;

    public zzcli(Context context, zzbso zzbsoVar) {
        this.zzlk = context;
        this.zzfxy = zzbsoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzclc
    public final /* synthetic */ zzbrs zza(zzcvz zzcvzVar, zzcvr zzcvrVar, View view, zzclj zzcljVar) {
        zzbru zzbruVarZza = this.zzfxy.zza(new zzbla(zzcvzVar, zzcvrVar, null), new zzclk(this, zzcll.zzgbd));
        zzcljVar.zza(new zzcln(this, zzbruVarZza));
        return zzbruVarZza.zzadh();
    }
}
