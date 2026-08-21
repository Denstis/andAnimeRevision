package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class zzbzl {
    private final zzaxl zzblk;
    private final zzbcb zzbmi;
    private final zzsd zzeen;
    private final zzdf zzegb;
    private final com.google.android.gms.ads.internal.zza zzegd;
    private final zzrf zzegf;
    private final zzcwe zzfga;
    private final zzbou zzfqn;
    private final Context zzlk;

    public zzbzl(zzbcb zzbcbVar, Context context, zzcwe zzcweVar, zzdf zzdfVar, zzaxl zzaxlVar, com.google.android.gms.ads.internal.zza zzaVar, zzsd zzsdVar, zzbou zzbouVar, zzbrq zzbrqVar) {
        this.zzbmi = zzbcbVar;
        this.zzlk = context;
        this.zzfga = zzcweVar;
        this.zzegb = zzdfVar;
        this.zzblk = zzaxlVar;
        this.zzegd = zzaVar;
        this.zzeen = zzsdVar;
        this.zzfqn = zzbouVar;
        this.zzegf = zzbrqVar;
    }

    public final zzbbw zza(zzua zzuaVar, boolean z) {
        return zzbcb.zza(this.zzlk, zzbdj.zzb(zzuaVar), zzuaVar.zzabd, false, false, this.zzegb, this.zzblk, null, new zzbzk(this), this.zzegd, this.zzeen, this.zzegf, z);
    }

    public final zzbbw zzc(zzua zzuaVar) {
        return zza(zzuaVar, false);
    }
}
