package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzaeg implements zzaer<zzbbw> {
    zzaeg() {
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzbbw zzbbwVar, Map map) {
        zzbbw zzbbwVar2 = zzbbwVar;
        if (zzbbwVar2.zzaad() != null) {
            zzbbwVar2.zzaad().zzmf();
        }
        com.google.android.gms.ads.internal.overlay.zzc zzcVarZzzl = zzbbwVar2.zzzl();
        if (zzcVarZzzl != null) {
            zzcVarZzzl.close();
            return;
        }
        com.google.android.gms.ads.internal.overlay.zzc zzcVarZzzm = zzbbwVar2.zzzm();
        if (zzcVarZzzm != null) {
            zzcVarZzzm.close();
        } else {
            zzaxi.zzeu("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
