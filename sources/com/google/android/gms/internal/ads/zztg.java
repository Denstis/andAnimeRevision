package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzsp;

/* JADX INFO: loaded from: classes.dex */
public final class zztg extends zzdul<zztg> {
    public String zzbzn = null;
    private zzsp.zzb[] zzbzo = new zzsp.zzb[0];
    private zzsv zzbzp = null;
    private zzsv zzbzq = null;
    private zzsv zzbzr = null;

    public zztg() {
        this.zzhqy = null;
        this.zzhrh = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    public final void zza(zzduj zzdujVar) throws zzdum {
        String str = this.zzbzn;
        if (str != null) {
            zzdujVar.zzg(1, str);
        }
        zzsp.zzb[] zzbVarArr = this.zzbzo;
        if (zzbVarArr != null && zzbVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzsp.zzb[] zzbVarArr2 = this.zzbzo;
                if (i2 >= zzbVarArr2.length) {
                    break;
                }
                zzsp.zzb zzbVar = zzbVarArr2[i2];
                if (zzbVar != null) {
                    zzdujVar.zze(2, zzbVar);
                }
                i2++;
            }
        }
        super.zza(zzdujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    protected final int zznx() {
        int iZznx = super.zznx();
        String str = this.zzbzn;
        if (str != null) {
            iZznx += zzduj.zzh(1, str);
        }
        zzsp.zzb[] zzbVarArr = this.zzbzo;
        if (zzbVarArr != null && zzbVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzsp.zzb[] zzbVarArr2 = this.zzbzo;
                if (i2 >= zzbVarArr2.length) {
                    break;
                }
                zzsp.zzb zzbVar = zzbVarArr2[i2];
                if (zzbVar != null) {
                    iZznx += zzdqf.zzc(2, zzbVar);
                }
                i2++;
            }
        }
        return iZznx;
    }
}
