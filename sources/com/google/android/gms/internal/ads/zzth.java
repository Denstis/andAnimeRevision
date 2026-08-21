package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzsp;

/* JADX INFO: loaded from: classes.dex */
public final class zzth extends zzdul<zzth> {
    public Integer zzbzs = null;
    private zzsv zzbzt = null;
    private zzsp.zzc zzbzu = null;
    public zztg zzbzv = null;
    private zzsp.zzb[] zzbzw = new zzsp.zzb[0];
    private zzsp.zzd zzbzx = null;
    private zzsp.zzk zzbzy = null;
    private zzsp.zzi zzbzz = null;
    private zzsp.zzf zzcaa = null;
    private zzsp.zzg zzcab = null;
    private zztn[] zzcac = zztn.zzny();

    public zzth() {
        this.zzhqy = null;
        this.zzhrh = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    public final void zza(zzduj zzdujVar) throws zzdum {
        Integer num = this.zzbzs;
        if (num != null) {
            zzdujVar.zzaa(7, num.intValue());
        }
        zztg zztgVar = this.zzbzv;
        if (zztgVar != null) {
            zzdujVar.zza(10, zztgVar);
        }
        zzsp.zzb[] zzbVarArr = this.zzbzw;
        int i2 = 0;
        if (zzbVarArr != null && zzbVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                zzsp.zzb[] zzbVarArr2 = this.zzbzw;
                if (i3 >= zzbVarArr2.length) {
                    break;
                }
                zzsp.zzb zzbVar = zzbVarArr2[i3];
                if (zzbVar != null) {
                    zzdujVar.zze(11, zzbVar);
                }
                i3++;
            }
        }
        zztn[] zztnVarArr = this.zzcac;
        if (zztnVarArr != null && zztnVarArr.length > 0) {
            while (true) {
                zztn[] zztnVarArr2 = this.zzcac;
                if (i2 >= zztnVarArr2.length) {
                    break;
                }
                zztn zztnVar = zztnVarArr2[i2];
                if (zztnVar != null) {
                    zzdujVar.zza(17, zztnVar);
                }
                i2++;
            }
        }
        super.zza(zzdujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    protected final int zznx() {
        int iZznx = super.zznx();
        Integer num = this.zzbzs;
        if (num != null) {
            iZznx += zzduj.zzae(7, num.intValue());
        }
        zztg zztgVar = this.zzbzv;
        if (zztgVar != null) {
            iZznx += zzduj.zzb(10, zztgVar);
        }
        zzsp.zzb[] zzbVarArr = this.zzbzw;
        int i2 = 0;
        if (zzbVarArr != null && zzbVarArr.length > 0) {
            int iZzc = iZznx;
            int i3 = 0;
            while (true) {
                zzsp.zzb[] zzbVarArr2 = this.zzbzw;
                if (i3 >= zzbVarArr2.length) {
                    break;
                }
                zzsp.zzb zzbVar = zzbVarArr2[i3];
                if (zzbVar != null) {
                    iZzc += zzdqf.zzc(11, zzbVar);
                }
                i3++;
            }
            iZznx = iZzc;
        }
        zztn[] zztnVarArr = this.zzcac;
        if (zztnVarArr != null && zztnVarArr.length > 0) {
            while (true) {
                zztn[] zztnVarArr2 = this.zzcac;
                if (i2 >= zztnVarArr2.length) {
                    break;
                }
                zztn zztnVar = zztnVarArr2[i2];
                if (zztnVar != null) {
                    iZznx += zzduj.zzb(17, zztnVar);
                }
                i2++;
            }
        }
        return iZznx;
    }
}
