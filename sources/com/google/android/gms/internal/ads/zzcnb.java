package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbmk;
import com.google.android.gms.internal.ads.zzbpn;
import com.google.android.gms.internal.ads.zzcnc;

/* JADX INFO: loaded from: classes.dex */
public final class zzcnb extends zzati {
    private zzbei zzgdl;

    public zzcnb(zzbei zzbeiVar) {
        this.zzgdl = zzbeiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzatf
    public final void zza(IObjectWrapper iObjectWrapper, zzath zzathVar, zzatd zzatdVar) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        String str = zzathVar.zzbqy;
        String str2 = zzathVar.zzblw;
        zzdcy.zza(this.zzgdl.zzabo().zzf(new zzbmk.zza().zzby(context).zza(new zzcwg().zzgf(str).zzg(new zztw().zznz()).zzd(zzathVar.zzdpz).zzane()).zzafy()).zza(new zzcnc(new zzcnc.zza().zzge(str2))).zzf(new zzbpn.zza().zzagm()).zzado().zzadt(), new zzcna(this, zzatdVar), this.zzgdl.zzabb());
    }
}
