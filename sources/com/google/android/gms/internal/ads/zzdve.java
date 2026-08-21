package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdut;

/* JADX INFO: loaded from: classes.dex */
public final class zzdve extends zzdul<zzdve> {
    private String[] zzhvo;
    private String zzhvp;
    private Boolean zzhvq;
    private Boolean zzhvr;
    private byte[] zzhvs;
    public zzdut.zzb.zzi zzhvt;
    public String[] zzhvu;
    public String[] zzhvv;
    public zzdut.zzb.zzg zzhvf = null;
    private zzdut.zza.zzc zzhvg = null;
    public String url = null;
    public String zzhvh = null;
    private String zzhvi = null;
    public zzdut.zzb.C0160zzb zzhvj = null;
    public zzdvh[] zzhvk = zzdvh.zzbcz();
    public String zzhvl = null;
    public zzdvi zzhvm = null;
    private Boolean zzhvn = null;

    public zzdve() {
        String[] strArr = zzduu.zzhrq;
        this.zzhvo = strArr;
        this.zzhvp = null;
        this.zzhvq = null;
        this.zzhvr = null;
        this.zzhvs = null;
        this.zzhvt = null;
        this.zzhvu = strArr;
        this.zzhvv = strArr;
        this.zzhqy = null;
        this.zzhrh = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    public final void zza(zzduj zzdujVar) throws zzdum {
        String str = this.url;
        if (str != null) {
            zzdujVar.zzg(1, str);
        }
        String str2 = this.zzhvh;
        if (str2 != null) {
            zzdujVar.zzg(2, str2);
        }
        zzdvh[] zzdvhVarArr = this.zzhvk;
        int i2 = 0;
        if (zzdvhVarArr != null && zzdvhVarArr.length > 0) {
            int i3 = 0;
            while (true) {
                zzdvh[] zzdvhVarArr2 = this.zzhvk;
                if (i3 >= zzdvhVarArr2.length) {
                    break;
                }
                zzdvh zzdvhVar = zzdvhVarArr2[i3];
                if (zzdvhVar != null) {
                    zzdujVar.zza(4, zzdvhVar);
                }
                i3++;
            }
        }
        String[] strArr = this.zzhvo;
        if (strArr != null && strArr.length > 0) {
            int i4 = 0;
            while (true) {
                String[] strArr2 = this.zzhvo;
                if (i4 >= strArr2.length) {
                    break;
                }
                String str3 = strArr2[i4];
                if (str3 != null) {
                    zzdujVar.zzg(6, str3);
                }
                i4++;
            }
        }
        zzdut.zzb.zzg zzgVar = this.zzhvf;
        if (zzgVar != null && zzgVar != null) {
            zzdujVar.zzaa(10, zzgVar.zzab());
        }
        zzdut.zzb.C0160zzb c0160zzb = this.zzhvj;
        if (c0160zzb != null) {
            zzdujVar.zze(12, c0160zzb);
        }
        String str4 = this.zzhvl;
        if (str4 != null) {
            zzdujVar.zzg(13, str4);
        }
        zzdvi zzdviVar = this.zzhvm;
        if (zzdviVar != null) {
            zzdujVar.zza(14, zzdviVar);
        }
        zzdut.zzb.zzi zziVar = this.zzhvt;
        if (zziVar != null) {
            zzdujVar.zze(17, zziVar);
        }
        String[] strArr3 = this.zzhvu;
        if (strArr3 != null && strArr3.length > 0) {
            int i5 = 0;
            while (true) {
                String[] strArr4 = this.zzhvu;
                if (i5 >= strArr4.length) {
                    break;
                }
                String str5 = strArr4[i5];
                if (str5 != null) {
                    zzdujVar.zzg(20, str5);
                }
                i5++;
            }
        }
        String[] strArr5 = this.zzhvv;
        if (strArr5 != null && strArr5.length > 0) {
            while (true) {
                String[] strArr6 = this.zzhvv;
                if (i2 >= strArr6.length) {
                    break;
                }
                String str6 = strArr6[i2];
                if (str6 != null) {
                    zzdujVar.zzg(21, str6);
                }
                i2++;
            }
        }
        super.zza(zzdujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    protected final int zznx() {
        int iZznx = super.zznx();
        String str = this.url;
        if (str != null) {
            iZznx += zzduj.zzh(1, str);
        }
        String str2 = this.zzhvh;
        if (str2 != null) {
            iZznx += zzduj.zzh(2, str2);
        }
        zzdvh[] zzdvhVarArr = this.zzhvk;
        int i2 = 0;
        if (zzdvhVarArr != null && zzdvhVarArr.length > 0) {
            int iZzb = iZznx;
            int i3 = 0;
            while (true) {
                zzdvh[] zzdvhVarArr2 = this.zzhvk;
                if (i3 >= zzdvhVarArr2.length) {
                    break;
                }
                zzdvh zzdvhVar = zzdvhVarArr2[i3];
                if (zzdvhVar != null) {
                    iZzb += zzduj.zzb(4, zzdvhVar);
                }
                i3++;
            }
            iZznx = iZzb;
        }
        String[] strArr = this.zzhvo;
        if (strArr != null && strArr.length > 0) {
            int i4 = 0;
            int iZzhj = 0;
            int i5 = 0;
            while (true) {
                String[] strArr2 = this.zzhvo;
                if (i4 >= strArr2.length) {
                    break;
                }
                String str3 = strArr2[i4];
                if (str3 != null) {
                    i5++;
                    iZzhj += zzduj.zzhj(str3);
                }
                i4++;
            }
            iZznx = iZznx + iZzhj + (i5 * 1);
        }
        zzdut.zzb.zzg zzgVar = this.zzhvf;
        if (zzgVar != null && zzgVar != null) {
            iZznx += zzduj.zzae(10, zzgVar.zzab());
        }
        zzdut.zzb.C0160zzb c0160zzb = this.zzhvj;
        if (c0160zzb != null) {
            iZznx += zzdqf.zzc(12, c0160zzb);
        }
        String str4 = this.zzhvl;
        if (str4 != null) {
            iZznx += zzduj.zzh(13, str4);
        }
        zzdvi zzdviVar = this.zzhvm;
        if (zzdviVar != null) {
            iZznx += zzduj.zzb(14, zzdviVar);
        }
        zzdut.zzb.zzi zziVar = this.zzhvt;
        if (zziVar != null) {
            iZznx += zzdqf.zzc(17, zziVar);
        }
        String[] strArr3 = this.zzhvu;
        if (strArr3 != null && strArr3.length > 0) {
            int i6 = 0;
            int iZzhj2 = 0;
            int i7 = 0;
            while (true) {
                String[] strArr4 = this.zzhvu;
                if (i6 >= strArr4.length) {
                    break;
                }
                String str5 = strArr4[i6];
                if (str5 != null) {
                    i7++;
                    iZzhj2 += zzduj.zzhj(str5);
                }
                i6++;
            }
            iZznx = iZznx + iZzhj2 + (i7 * 2);
        }
        String[] strArr5 = this.zzhvv;
        if (strArr5 == null || strArr5.length <= 0) {
            return iZznx;
        }
        int iZzhj3 = 0;
        int i8 = 0;
        while (true) {
            String[] strArr6 = this.zzhvv;
            if (i2 >= strArr6.length) {
                return iZznx + iZzhj3 + (i8 * 2);
            }
            String str6 = strArr6[i2];
            if (str6 != null) {
                i8++;
                iZzhj3 += zzduj.zzhj(str6);
            }
            i2++;
        }
    }
}
