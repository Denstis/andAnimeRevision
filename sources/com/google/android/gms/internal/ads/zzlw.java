package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.IdentityHashMap;

/* JADX INFO: loaded from: classes.dex */
final class zzlw implements zzlr, zzls {
    private zzmk zzadf;
    private zzlr zzbaf;
    public final zzls[] zzbbm;
    private final IdentityHashMap<zzmd, Integer> zzbbn = new IdentityHashMap<>();
    private int zzbbo;
    private zzls[] zzbbp;
    private zzmg zzbbq;

    public zzlw(zzls... zzlsVarArr) {
        this.zzbbm = zzlsVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final long zza(zzmt[] zzmtVarArr, boolean[] zArr, zzmd[] zzmdVarArr, boolean[] zArr2, long j2) {
        int[] iArr = new int[zzmtVarArr.length];
        int[] iArr2 = new int[zzmtVarArr.length];
        for (int i2 = 0; i2 < zzmtVarArr.length; i2++) {
            iArr[i2] = zzmdVarArr[i2] == null ? -1 : this.zzbbn.get(zzmdVarArr[i2]).intValue();
            iArr2[i2] = -1;
            if (zzmtVarArr[i2] != null) {
                zzmh zzmhVarZzhx = zzmtVarArr[i2].zzhx();
                int i3 = 0;
                while (true) {
                    zzls[] zzlsVarArr = this.zzbbm;
                    if (i3 >= zzlsVarArr.length) {
                        break;
                    }
                    if (zzlsVarArr[i3].zzhb().zza(zzmhVarZzhx) != -1) {
                        iArr2[i2] = i3;
                        break;
                    }
                    i3++;
                }
            }
        }
        this.zzbbn.clear();
        zzmd[] zzmdVarArr2 = new zzmd[zzmtVarArr.length];
        zzmd[] zzmdVarArr3 = new zzmd[zzmtVarArr.length];
        zzmt[] zzmtVarArr2 = new zzmt[zzmtVarArr.length];
        ArrayList arrayList = new ArrayList(this.zzbbm.length);
        long j3 = j2;
        int i4 = 0;
        while (i4 < this.zzbbm.length) {
            for (int i5 = 0; i5 < zzmtVarArr.length; i5++) {
                zzmt zzmtVar = null;
                zzmdVarArr3[i5] = iArr[i5] == i4 ? zzmdVarArr[i5] : null;
                if (iArr2[i5] == i4) {
                    zzmtVar = zzmtVarArr[i5];
                }
                zzmtVarArr2[i5] = zzmtVar;
            }
            zzmt[] zzmtVarArr3 = zzmtVarArr2;
            ArrayList arrayList2 = arrayList;
            zzmt[] zzmtVarArr4 = zzmtVarArr2;
            int i6 = i4;
            long jZza = this.zzbbm[i4].zza(zzmtVarArr3, zArr, zzmdVarArr3, zArr2, j3);
            if (i6 == 0) {
                j3 = jZza;
            } else if (jZza != j3) {
                throw new IllegalStateException("Children enabled at different positions");
            }
            boolean z = false;
            for (int i7 = 0; i7 < zzmtVarArr.length; i7++) {
                if (iArr2[i7] == i6) {
                    zznr.checkState(zzmdVarArr3[i7] != null);
                    zzmdVarArr2[i7] = zzmdVarArr3[i7];
                    this.zzbbn.put(zzmdVarArr3[i7], Integer.valueOf(i6));
                    z = true;
                } else if (iArr[i7] == i6) {
                    zznr.checkState(zzmdVarArr3[i7] == null);
                }
            }
            if (z) {
                arrayList2.add(this.zzbbm[i6]);
            }
            i4 = i6 + 1;
            arrayList = arrayList2;
            zzmtVarArr2 = zzmtVarArr4;
        }
        ArrayList arrayList3 = arrayList;
        System.arraycopy(zzmdVarArr2, 0, zzmdVarArr, 0, zzmdVarArr2.length);
        this.zzbbp = new zzls[arrayList3.size()];
        arrayList3.toArray(this.zzbbp);
        this.zzbbq = new zzlf(this.zzbbp);
        return j3;
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final void zza(zzlr zzlrVar, long j2) {
        this.zzbaf = zzlrVar;
        zzls[] zzlsVarArr = this.zzbbm;
        this.zzbbo = zzlsVarArr.length;
        for (zzls zzlsVar : zzlsVarArr) {
            zzlsVar.zza(this, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlr
    public final void zza(zzls zzlsVar) {
        int i2 = this.zzbbo - 1;
        this.zzbbo = i2;
        if (i2 > 0) {
            return;
        }
        int i3 = 0;
        for (zzls zzlsVar2 : this.zzbbm) {
            i3 += zzlsVar2.zzhb().length;
        }
        zzmh[] zzmhVarArr = new zzmh[i3];
        zzls[] zzlsVarArr = this.zzbbm;
        int length = zzlsVarArr.length;
        int i4 = 0;
        int i5 = 0;
        while (i4 < length) {
            zzmk zzmkVarZzhb = zzlsVarArr[i4].zzhb();
            int i6 = zzmkVarZzhb.length;
            int i7 = i5;
            int i8 = 0;
            while (i8 < i6) {
                zzmhVarArr[i7] = zzmkVarZzhb.zzav(i8);
                i8++;
                i7++;
            }
            i4++;
            i5 = i7;
        }
        this.zzadf = new zzmk(zzmhVarArr);
        this.zzbaf.zza((zzls) this);
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final /* synthetic */ void zza(zzmg zzmgVar) {
        if (this.zzadf != null) {
            this.zzbaf.zza(this);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzls, com.google.android.gms.internal.ads.zzmg
    public final boolean zzdy(long j2) {
        return this.zzbbq.zzdy(j2);
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final void zzdz(long j2) {
        for (zzls zzlsVar : this.zzbbp) {
            zzlsVar.zzdz(j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final long zzea(long j2) {
        long jZzea = this.zzbbp[0].zzea(j2);
        int i2 = 1;
        while (true) {
            zzls[] zzlsVarArr = this.zzbbp;
            if (i2 >= zzlsVarArr.length) {
                return jZzea;
            }
            if (zzlsVarArr[i2].zzea(jZzea) != jZzea) {
                throw new IllegalStateException("Children seeked to different positions");
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzls, com.google.android.gms.internal.ads.zzmg
    public final long zzgz() {
        return this.zzbbq.zzgz();
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final void zzha() {
        for (zzls zzlsVar : this.zzbbm) {
            zzlsVar.zzha();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final zzmk zzhb() {
        return this.zzadf;
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final long zzhc() {
        long jZzhc = this.zzbbm[0].zzhc();
        int i2 = 1;
        while (true) {
            zzls[] zzlsVarArr = this.zzbbm;
            if (i2 >= zzlsVarArr.length) {
                if (jZzhc != C.TIME_UNSET) {
                    for (zzls zzlsVar : this.zzbbp) {
                        if (zzlsVar != this.zzbbm[0] && zzlsVar.zzea(jZzhc) != jZzhc) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return jZzhc;
            }
            if (zzlsVarArr[i2].zzhc() != C.TIME_UNSET) {
                throw new IllegalStateException("Child reported discontinuity");
            }
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzls
    public final long zzhd() {
        long jMin = Long.MAX_VALUE;
        for (zzls zzlsVar : this.zzbbp) {
            long jZzhd = zzlsVar.zzhd();
            if (jZzhd != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzhd);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }
}
