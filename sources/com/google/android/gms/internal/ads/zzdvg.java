package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdut;

/* JADX INFO: loaded from: classes.dex */
public final class zzdvg extends zzdul<zzdvg> {
    private zzdut.zzb.zzd.C0161zzb zzhvw = null;
    public zzdut.zzb.zzc[] zzhvx = new zzdut.zzb.zzc[0];
    private byte[] zzhvy = null;
    private byte[] zzhvz = null;
    private Integer zzhwa = null;

    public zzdvg() {
        this.zzhqy = null;
        this.zzhrh = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    public final void zza(zzduj zzdujVar) {
        zzdut.zzb.zzc[] zzcVarArr = this.zzhvx;
        if (zzcVarArr != null && zzcVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzdut.zzb.zzc[] zzcVarArr2 = this.zzhvx;
                if (i2 >= zzcVarArr2.length) {
                    break;
                }
                zzdut.zzb.zzc zzcVar = zzcVarArr2[i2];
                if (zzcVar != null) {
                    zzdujVar.zze(2, zzcVar);
                }
                i2++;
            }
        }
        super.zza(zzdujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    protected final int zznx() {
        int iZznx = super.zznx();
        zzdut.zzb.zzc[] zzcVarArr = this.zzhvx;
        if (zzcVarArr != null && zzcVarArr.length > 0) {
            int i2 = 0;
            while (true) {
                zzdut.zzb.zzc[] zzcVarArr2 = this.zzhvx;
                if (i2 >= zzcVarArr2.length) {
                    break;
                }
                zzdut.zzb.zzc zzcVar = zzcVarArr2[i2];
                if (zzcVar != null) {
                    iZznx += zzdqf.zzc(2, zzcVar);
                }
                i2++;
            }
        }
        return iZznx;
    }
}
