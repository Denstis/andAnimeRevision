package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.internal.ads.zzbmk;
import com.google.android.gms.internal.ads.zzbpn;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class zzcvb implements zzcmq<zzbyz> {
    private final Executor zzfbx;
    private final zzcwc zzfgu;
    private final zzcwg zzgbq;
    private final zzbei zzgdl;
    private final Context zzgic;
    private final zzcui zzgid;
    private final zzcud<zzbzc, zzbyz> zzgie;
    private zzddi<zzbyz> zzgif;

    public zzcvb(Context context, Executor executor, zzbei zzbeiVar, zzcud<zzbzc, zzbyz> zzcudVar, zzcui zzcuiVar, zzcwg zzcwgVar, zzcwc zzcwcVar) {
        this.zzgic = context;
        this.zzfbx = executor;
        this.zzgdl = zzbeiVar;
        this.zzgie = zzcudVar;
        this.zzgid = zzcuiVar;
        this.zzgbq = zzcwgVar;
        this.zzfgu = zzcwcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcmq
    public final boolean isLoading() {
        zzddi<zzbyz> zzddiVar = this.zzgif;
        return (zzddiVar == null || zzddiVar.isDone()) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcmq
    public final boolean zza(zztx zztxVar, String str, zzcmt zzcmtVar, zzcms<? super zzbyz> zzcmsVar) {
        zzaqo zzaqoVar = new zzaqo(zztxVar, str);
        String str2 = zzcmtVar instanceof zzcvc ? ((zzcvc) zzcmtVar).zzgig : null;
        if (zzaqoVar.zzbqy == null) {
            zzaxi.zzes("Ad unit ID should not be null for rewarded video ad.");
            this.zzfbx.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcve
                private final zzcvb zzgii;

                {
                    this.zzgii = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgii.zzamv();
                }
            });
            return false;
        }
        zzddi<zzbyz> zzddiVar = this.zzgif;
        if (zzddiVar != null && !zzddiVar.isDone()) {
            return false;
        }
        zzcwj.zze(this.zzgic, zzaqoVar.zzdiu.zzcca);
        zzcwe zzcweVarZzane = this.zzgbq.zzgf(zzaqoVar.zzbqy).zzd(zzua.zzoa()).zzg(zzaqoVar.zzdiu).zzane();
        zzbpn.zza zzaVar = new zzbpn.zza();
        zzaVar.zza((zzbna) this.zzgid, this.zzfbx);
        zzaVar.zza((zzbog) this.zzgid, this.zzfbx);
        zzaVar.zza((zzbnb) this.zzgid, this.zzfbx);
        zzaVar.zza((AdMetadataListener) this.zzgid, this.zzfbx);
        zzaVar.zza((zzbnf) this.zzgid, this.zzfbx);
        this.zzgif = this.zzgie.zza(this.zzgdl.zzabm().zze(new zzbmk.zza().zzby(this.zzgic).zza(zzcweVarZzane).zzfn(str2).zza(this.zzfgu).zzafy()).zze(zzaVar.zzagm()), this.zzfbx);
        zzdcy.zza(this.zzgif, new zzcvd(this, zzcmsVar), this.zzfbx);
        return true;
    }

    final /* synthetic */ void zzamv() {
        this.zzgid.onAdFailedToLoad(1);
    }
}
