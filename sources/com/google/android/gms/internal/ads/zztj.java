package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzsp;

/* JADX INFO: loaded from: classes.dex */
public final class zztj extends zzdul<zztj> {
    public String zzcad = null;
    private zzsp.zzo zzcae = null;
    private Integer zzcaf = null;
    public zztk zzcag = null;
    private Integer zzcah = null;
    private zzsv zzcai = null;
    private zzsv zzcaj = null;
    private zzsv zzcak = null;

    public zztj() {
        this.zzhqy = null;
        this.zzhrh = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    public final void zza(zzduj zzdujVar) throws zzdum {
        String str = this.zzcad;
        if (str != null) {
            zzdujVar.zzg(1, str);
        }
        zztk zztkVar = this.zzcag;
        if (zztkVar != null) {
            zzdujVar.zza(4, zztkVar);
        }
        super.zza(zzdujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    protected final int zznx() {
        int iZznx = super.zznx();
        String str = this.zzcad;
        if (str != null) {
            iZznx += zzduj.zzh(1, str);
        }
        zztk zztkVar = this.zzcag;
        return zztkVar != null ? iZznx + zzduj.zzb(4, zztkVar) : iZznx;
    }
}
