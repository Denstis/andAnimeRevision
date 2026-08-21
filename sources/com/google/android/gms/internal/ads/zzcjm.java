package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public final class zzcjm implements zzcgh<zzbyz, zzamd, zzchk> {
    private final zzbzc zzfzm;
    private final Context zzlk;

    public zzcjm(Context context, zzbzc zzbzcVar) {
        this.zzlk = context;
        this.zzfzm = zzbzcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final void zza(zzcvz zzcvzVar, zzcvr zzcvrVar, zzcgf<zzamd, zzchk> zzcgfVar) {
        try {
            zzcgfVar.zzddv.zzdh(zzcvrVar.zzdeu);
            zzcgfVar.zzddv.zza(zzcvrVar.zzeij, zzcvrVar.zzgjh.toString(), zzcvzVar.zzgka.zzfga.zzgkg, ObjectWrapper.wrap(this.zzlk), new zzcjr(this, zzcgfVar), (zzakd) zzcgfVar.zzfxg);
        } catch (RemoteException e2) {
            zzdoy.zzj(e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgh
    public final /* synthetic */ zzbyz zzb(zzcvz zzcvzVar, zzcvr zzcvrVar, final zzcgf zzcgfVar) {
        final zzcgc zzcgcVar = new zzcgc(zzcvrVar);
        zzbzb zzbzbVarZza = this.zzfzm.zza(new zzbla(zzcvzVar, zzcvrVar, zzcgfVar.zzffi), new zzbza(new zzbsu(zzcgfVar, zzcgcVar) { // from class: com.google.android.gms.internal.ads.zzcjp
            private final zzcgf zzfxr;
            private final zzcgc zzfys;

            {
                this.zzfxr = zzcgfVar;
                this.zzfys = zzcgcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbsu
            public final void zza(boolean z, Context context) {
                zzcgf zzcgfVar2 = this.zzfxr;
                zzcgc zzcgcVar2 = this.zzfys;
                try {
                    if (((zzamd) zzcgfVar2.zzddv).zzad(ObjectWrapper.wrap(context))) {
                        zzcgcVar2.zzaks();
                    } else {
                        zzaxi.zzeu("Can't show rewarded video.");
                    }
                } catch (RemoteException e2) {
                    zzaxi.zzd("Can't show rewarded video.", e2);
                }
            }
        }));
        zzcgcVar.zza(zzbzbVarZza.zzaci());
        ((zzchk) zzcgfVar.zzfxg).zza(zzbzbVarZza.zzadr());
        return zzbzbVarZza.zzadp();
    }
}
