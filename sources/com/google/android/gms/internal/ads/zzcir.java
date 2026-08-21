package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzcir implements zzcgh<zzbuj, zzamd, zzchk> {
    private final zzbtl zzfyt;
    private zzakm zzfyy;
    private final Context zzlk;

    public zzcir(Context context, zzbtl zzbtlVar) {
        this.zzlk = context;
        this.zzfyt = zzbtlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf<zzamd, zzchk> zzcgfVar) throws zzcwh {
        try {
            zzcgfVar.zzddv.zzdh(zzcvrVar.zzdeu);
            zzcgfVar.zzddv.zza(zzcvrVar.zzeij, zzcvrVar.zzgjh.toString(), zzcvzVar.zzgka.zzfga.zzgkg, ObjectWrapper.wrap(this.zzlk), new zzcit(this, zzcgfVar), (zzakd) zzcgfVar.zzfxg);
        } catch (RemoteException e2) {
            throw new zzcwh(e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final /* synthetic */ zzbuj zzb(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf zzcgfVar) throws zzcjh {
        if (!zzcvzVar.zzgka.zzfga.zzgki.contains(Integer.toString(6))) {
            throw new zzcjh("Unified must be used for RTB.", 1);
        }
        zzbur zzburVarZzb = zzbur.zzb(this.zzfyy);
        if (!zzcvzVar.zzgka.zzfga.zzgki.contains(Integer.toString(zzburVarZzb.zzahp()))) {
            throw new zzcjh("No corresponding native ad listener", 0);
        }
        zzbus zzbusVarZza = this.zzfyt.zza(new zzbla(zzcvzVar, zzcvrVar, zzcgfVar.zzffi), new zzbvd(zzburVarZzb), new zzbwc(null, null, this.zzfyy));
        ((zzchk) zzcgfVar.zzfxg).zza(zzbusVarZza.zzack());
        return zzbusVarZza.zzacl();
    }
}
