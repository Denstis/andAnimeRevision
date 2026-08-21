package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzcgw implements zzcgh<zzbio, zzamd, zzchk> {
    private View view;
    private final zzbjn zzfxm;
    private final Context zzlk;

    public zzcgw(Context context, zzbjn zzbjnVar) {
        this.zzlk = context;
        this.zzfxm = zzbjnVar;
    }

    static final /* synthetic */ zzwr zza(zzcgf zzcgfVar) throws zzcwh {
        try {
            return ((zzamd) zzcgfVar.zzddv).getVideoController();
        } catch (RemoteException e2) {
            throw new zzcwh(e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf<zzamd, zzchk> zzcgfVar) throws zzcwh {
        try {
            zzcgfVar.zzddv.zzdh(zzcvrVar.zzdeu);
            zzcgfVar.zzddv.zza(zzcvrVar.zzeij, zzcvrVar.zzgjh.toString(), zzcvzVar.zzgka.zzfga.zzgkg, ObjectWrapper.wrap(this.zzlk), new zzchb(this, zzcgfVar), (zzakd) zzcgfVar.zzfxg, zzcvzVar.zzgka.zzfga.zzbll);
        } catch (RemoteException e2) {
            throw new zzcwh(e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final /* synthetic */ zzbio zzb(zzcvz zzcvzVar, zzcvr zzcvrVar, final zzcgf zzcgfVar) {
        zzbir zzbirVarZza = this.zzfxm.zza(new zzbla(zzcvzVar, zzcvrVar, zzcgfVar.zzffi), new zzbiv(this.view, null, new zzbkl(zzcgfVar) { // from class: com.google.android.gms.internal.ads.zzcgz
            private final zzcgf zzfxr;

            {
                this.zzfxr = zzcgfVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbkl
            public final zzwr getVideoController() {
                return zzcgw.zza(this.zzfxr);
            }
        }, zzcvrVar.zzgjg.get(0)));
        zzbirVarZza.zzadd().zzq(this.view);
        ((zzchk) zzcgfVar.zzfxg).zza(zzbirVarZza.zzack());
        return zzbirVarZza.zzadc();
    }
}
