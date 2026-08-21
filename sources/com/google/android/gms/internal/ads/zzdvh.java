package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdut;

/* JADX INFO: loaded from: classes.dex */
public final class zzdvh extends zzdul<zzdvh> {
    private static volatile zzdvh[] zzhwb;
    public Integer zzhwc = null;
    public String url = null;
    public zzdvg zzhwd = null;
    private zzdvf zzhwe = null;
    private Integer zzhwf = null;
    private int[] zzhwg = zzduu.zzhmz;
    private String zzhwh = null;
    public zzdut.zzb.zzh.zza zzhwi = null;
    public String[] zzhwj = zzduu.zzhrq;

    public zzdvh() {
        this.zzhqy = null;
        this.zzhrh = -1;
    }

    public static zzdvh[] zzbcz() {
        if (zzhwb == null) {
            synchronized (zzdup.zzhre) {
                if (zzhwb == null) {
                    zzhwb = new zzdvh[0];
                }
            }
        }
        return zzhwb;
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    public final void zza(zzduj zzdujVar) throws zzdum {
        zzdujVar.zzaa(1, this.zzhwc.intValue());
        String str = this.url;
        if (str != null) {
            zzdujVar.zzg(2, str);
        }
        zzdvg zzdvgVar = this.zzhwd;
        if (zzdvgVar != null) {
            zzdujVar.zza(3, zzdvgVar);
        }
        int[] iArr = this.zzhwg;
        int i2 = 0;
        if (iArr != null && iArr.length > 0) {
            int i3 = 0;
            while (true) {
                int[] iArr2 = this.zzhwg;
                if (i3 >= iArr2.length) {
                    break;
                }
                zzdujVar.zzaa(6, iArr2[i3]);
                i3++;
            }
        }
        zzdut.zzb.zzh.zza zzaVar = this.zzhwi;
        if (zzaVar != null && zzaVar != null) {
            zzdujVar.zzaa(8, zzaVar.zzab());
        }
        String[] strArr = this.zzhwj;
        if (strArr != null && strArr.length > 0) {
            while (true) {
                String[] strArr2 = this.zzhwj;
                if (i2 >= strArr2.length) {
                    break;
                }
                String str2 = strArr2[i2];
                if (str2 != null) {
                    zzdujVar.zzg(9, str2);
                }
                i2++;
            }
        }
        super.zza(zzdujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    protected final int zznx() {
        int[] iArr;
        int iZznx = super.zznx() + zzduj.zzae(1, this.zzhwc.intValue());
        String str = this.url;
        if (str != null) {
            iZznx += zzduj.zzh(2, str);
        }
        zzdvg zzdvgVar = this.zzhwd;
        if (zzdvgVar != null) {
            iZznx += zzduj.zzb(3, zzdvgVar);
        }
        int[] iArr2 = this.zzhwg;
        int i2 = 0;
        if (iArr2 != null && iArr2.length > 0) {
            int i3 = 0;
            int iZzge = 0;
            while (true) {
                iArr = this.zzhwg;
                if (i3 >= iArr.length) {
                    break;
                }
                iZzge += zzduj.zzge(iArr[i3]);
                i3++;
            }
            iZznx = iZznx + iZzge + (iArr.length * 1);
        }
        zzdut.zzb.zzh.zza zzaVar = this.zzhwi;
        if (zzaVar != null && zzaVar != null) {
            iZznx += zzduj.zzae(8, zzaVar.zzab());
        }
        String[] strArr = this.zzhwj;
        if (strArr == null || strArr.length <= 0) {
            return iZznx;
        }
        int iZzhj = 0;
        int i4 = 0;
        while (true) {
            String[] strArr2 = this.zzhwj;
            if (i2 >= strArr2.length) {
                return iZznx + iZzhj + (i4 * 1);
            }
            String str2 = strArr2[i2];
            if (str2 != null) {
                i4++;
                iZzhj += zzduj.zzhj(str2);
            }
            i2++;
        }
    }
}
