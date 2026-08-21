package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbmk;
import com.google.android.gms.internal.ads.zzbpn;

/* JADX INFO: loaded from: classes.dex */
public final class zzcmu implements zzcmq<zzbkk> {
    private final zzbei zzfza;
    private final Context zzgbp;
    private final zzcwg zzgbq;
    private final zzcmo zzgdd;
    private zzbkv zzgde;

    public zzcmu(zzbei zzbeiVar, Context context, zzcmo zzcmoVar, zzcwg zzcwgVar) {
        this.zzfza = zzbeiVar;
        this.zzgbp = context;
        this.zzgdd = zzcmoVar;
        this.zzgbq = zzcwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcmq
    public final boolean isLoading() {
        zzbkv zzbkvVar = this.zzgde;
        return zzbkvVar != null && zzbkvVar.isLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzcmq
    public final boolean zza(zztx zztxVar, String str, zzcmt zzcmtVar, zzcms<? super zzbkk> zzcmsVar) {
        if (str == null) {
            zzaxi.zzes("Ad unit ID should not be null for NativeAdLoader.");
            this.zzfza.zzabb().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcmx
                private final zzcmu zzgdj;

                {
                    this.zzgdj = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgdj.zzalr();
                }
            });
            return false;
        }
        zzcwj.zze(this.zzgbp, zztxVar.zzcca);
        zzcwe zzcweVarZzane = this.zzgbq.zzg(zztxVar).zzdi(zzcmtVar instanceof zzcmv ? ((zzcmv) zzcmtVar).zzgdf : 1).zzane();
        zzbtl zzbtlVarZzacd = this.zzfza.zzabl().zza(new zzbmk.zza().zzby(this.zzgbp).zza(zzcweVarZzane).zzafy()).zza(new zzbpn.zza().zza(this.zzgdd.zzalm(), this.zzfza.zzabb()).zza(this.zzgdd.zzaln(), this.zzfza.zzabb()).zza(this.zzgdd.zzalo(), this.zzfza.zzabb()).zza(this.zzgdd.zzalp(), this.zzfza.zzabb()).zza(this.zzgdd.zzall(), this.zzfza.zzabb()).zza(zzcweVarZzane.zzgkm, this.zzfza.zzabb()).zzagm()).zza(this.zzgdd.zzalk()).zzacd();
        zzbtlVarZzacd.zzacc().zzdj(1);
        this.zzgde = new zzbkv(this.zzfza.zzabd(), this.zzfza.zzabc(), zzbtlVarZzacd.zzaca().zzafs());
        this.zzgde.zza(new zzcmw(this, zzcmsVar, zzbtlVarZzacd));
        return true;
    }

    final /* synthetic */ void zzalr() {
        this.zzgdd.zzaln().onAdFailedToLoad(1);
    }
}
