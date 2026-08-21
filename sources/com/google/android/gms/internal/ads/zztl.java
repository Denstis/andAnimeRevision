package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzsp;

/* JADX INFO: loaded from: classes.dex */
public final class zztl extends zzdul<zztl> {
    private Integer zzcao = null;
    public String zzcap = null;
    private Integer zzcaq = null;
    private zzsv zzcar = null;
    private zztk zzcas = null;
    public long[] zzcat = zzduu.zzhrm;
    public zztj zzcau = null;
    private zzti zzcav = null;
    private zzsp.zzh zzcaw = null;
    public zzth zzcax = null;
    public zzsp.zzj zzcay = null;
    public zzsp.zzw zzcaz = null;
    private zzsp.zza zzcba = null;

    public zztl() {
        this.zzhqy = null;
        this.zzhrh = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    public final void zza(zzduj zzdujVar) throws zzdum {
        String str = this.zzcap;
        if (str != null) {
            zzdujVar.zzg(10, str);
        }
        long[] jArr = this.zzcat;
        if (jArr != null && jArr.length > 0) {
            int i2 = 0;
            while (true) {
                long[] jArr2 = this.zzcat;
                if (i2 >= jArr2.length) {
                    break;
                }
                long j2 = jArr2[i2];
                zzdujVar.zzz(14, 0);
                zzdujVar.zzfm(j2);
                i2++;
            }
        }
        zztj zztjVar = this.zzcau;
        if (zztjVar != null) {
            zzdujVar.zza(15, zztjVar);
        }
        zzth zzthVar = this.zzcax;
        if (zzthVar != null) {
            zzdujVar.zza(18, zzthVar);
        }
        zzsp.zzj zzjVar = this.zzcay;
        if (zzjVar != null) {
            zzdujVar.zze(19, zzjVar);
        }
        zzsp.zzw zzwVar = this.zzcaz;
        if (zzwVar != null) {
            zzdujVar.zze(20, zzwVar);
        }
        super.zza(zzdujVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdul, com.google.android.gms.internal.ads.zzdus
    protected final int zznx() {
        long[] jArr;
        int iZznx = super.zznx();
        String str = this.zzcap;
        if (str != null) {
            iZznx += zzduj.zzh(10, str);
        }
        long[] jArr2 = this.zzcat;
        if (jArr2 != null && jArr2.length > 0) {
            int i2 = 0;
            int i3 = 0;
            while (true) {
                jArr = this.zzcat;
                if (i2 >= jArr.length) {
                    break;
                }
                long j2 = jArr[i2];
                i3 += ((-128) & j2) == 0 ? 1 : ((-16384) & j2) == 0 ? 2 : ((-2097152) & j2) == 0 ? 3 : ((-268435456) & j2) == 0 ? 4 : ((-34359738368L) & j2) == 0 ? 5 : ((-4398046511104L) & j2) == 0 ? 6 : ((-562949953421312L) & j2) == 0 ? 7 : ((-72057594037927936L) & j2) == 0 ? 8 : (Long.MIN_VALUE & j2) == 0 ? 9 : 10;
                i2++;
            }
            iZznx = iZznx + i3 + (jArr.length * 1);
        }
        zztj zztjVar = this.zzcau;
        if (zztjVar != null) {
            iZznx += zzduj.zzb(15, zztjVar);
        }
        zzth zzthVar = this.zzcax;
        if (zzthVar != null) {
            iZznx += zzduj.zzb(18, zzthVar);
        }
        zzsp.zzj zzjVar = this.zzcay;
        if (zzjVar != null) {
            iZznx += zzdqf.zzc(19, zzjVar);
        }
        zzsp.zzw zzwVar = this.zzcaz;
        return zzwVar != null ? iZznx + zzdqf.zzc(20, zzwVar) : iZznx;
    }
}
