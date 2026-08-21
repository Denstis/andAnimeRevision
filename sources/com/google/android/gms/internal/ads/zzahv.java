package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class zzahv implements zzaer<zzail> {
    private final /* synthetic */ zzaha zzdab;
    private final /* synthetic */ zzahn zzdac;
    private final /* synthetic */ zzdf zzdae;
    private final /* synthetic */ zzawn zzdaf;

    zzahv(zzahn zzahnVar, zzdf zzdfVar, zzaha zzahaVar, zzawn zzawnVar) {
        this.zzdac = zzahnVar;
        this.zzdae = zzdfVar;
        this.zzdab = zzahaVar;
        this.zzdaf = zzawnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final /* synthetic */ void zza(zzail zzailVar, Map map) {
        synchronized (this.zzdac.lock) {
            zzaxi.zzet("JS Engine is requesting an update");
            if (this.zzdac.status == 0) {
                zzaxi.zzet("Starting reload.");
                this.zzdac.status = 2;
                this.zzdac.zza(this.zzdae);
            }
            this.zzdab.zzb("/requestReload", (zzaer<? super zzail>) this.zzdaf.get());
        }
    }
}
