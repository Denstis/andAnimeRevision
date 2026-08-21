package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzahs implements zzaer<zzail> {
    private final /* synthetic */ zzaie zzdaa;
    private final /* synthetic */ zzaha zzdab;
    private final /* synthetic */ zzahn zzdac;

    zzahs(zzahn zzahnVar, zzaie zzaieVar, zzaha zzahaVar) {
        this.zzdac = zzahnVar;
        this.zzdaa = zzaieVar;
        this.zzdab = zzahaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzail zzailVar, Map map) {
        synchronized (this.zzdac.lock) {
            if (this.zzdaa.getStatus() != -1 && this.zzdaa.getStatus() != 1) {
                this.zzdac.status = 0;
                this.zzdac.zzczu.zzh(this.zzdab);
                this.zzdaa.zzm(this.zzdab);
                this.zzdac.zzczw = this.zzdaa;
                zzaug.zzdy("Successfully loaded JS Engine.");
            }
        }
    }
}
