package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: loaded from: classes.dex */
public final class zzcly extends zzvh {
    private zzuy zzblp;
    private final zzbei zzfza;
    private final Context zzgbp;

    @VisibleForTesting
    private final zzcwg zzgbq = new zzcwg();

    @VisibleForTesting
    private final zzbva zzgbr = new zzbva();

    public zzcly(zzbei zzbeiVar, Context context, String str) {
        this.zzfza = zzbeiVar;
        this.zzgbq.zzgf(str);
        this.zzgbp = context;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(PublisherAdViewOptions publisherAdViewOptions) {
        this.zzgbq.zzb(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzaay zzaayVar) {
        this.zzgbq.zzb(zzaayVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzaci zzaciVar) {
        this.zzgbr.zzb(zzaciVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzacn zzacnVar) {
        this.zzgbr.zzb(zzacnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzacu zzacuVar, zzua zzuaVar) {
        this.zzgbr.zza(zzacuVar);
        this.zzgbq.zzd(zzuaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzacz zzaczVar) {
        this.zzgbr.zzb(zzaczVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzagd zzagdVar) {
        this.zzgbq.zzb(zzagdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(zzagj zzagjVar) {
        this.zzgbr.zzb(zzagjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zza(String str, zzact zzactVar, zzaco zzacoVar) {
        this.zzgbr.zzb(str, zzactVar, zzacoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzb(zzuy zzuyVar) {
        this.zzblp = zzuyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final void zzb(zzvz zzvzVar) {
        this.zzgbq.zzc(zzvzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzve
    public final zzvd zzor() {
        zzbuy zzbuyVarZzail = this.zzgbr.zzail();
        this.zzgbq.zzb(zzbuyVarZzail.zzaij());
        this.zzgbq.zzc(zzbuyVarZzail.zzaik());
        zzcwg zzcwgVar = this.zzgbq;
        if (zzcwgVar.zzjt() == null) {
            zzcwgVar.zzd(zzua.zzg(this.zzgbp));
        }
        return new zzcmb(this.zzgbp, this.zzfza, this.zzgbq, zzbuyVarZzail, this.zzblp);
    }
}
