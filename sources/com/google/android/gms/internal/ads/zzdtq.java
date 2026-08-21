package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdqw;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzdtq {
    private static final zzdtq zzhop = new zzdtq(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzhfr;
    private int zzhks;
    private Object[] zzhnb;
    private int[] zzhoq;

    private zzdtq() {
        this(0, new int[8], new Object[8], true);
    }

    private zzdtq(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.zzhks = -1;
        this.count = i2;
        this.zzhoq = iArr;
        this.zzhnb = objArr;
        this.zzhfr = z;
    }

    static zzdtq zza(zzdtq zzdtqVar, zzdtq zzdtqVar2) {
        int i2 = zzdtqVar.count + zzdtqVar2.count;
        int[] iArrCopyOf = Arrays.copyOf(zzdtqVar.zzhoq, i2);
        System.arraycopy(zzdtqVar2.zzhoq, 0, iArrCopyOf, zzdtqVar.count, zzdtqVar2.count);
        Object[] objArrCopyOf = Arrays.copyOf(zzdtqVar.zzhnb, i2);
        System.arraycopy(zzdtqVar2.zzhnb, 0, objArrCopyOf, zzdtqVar.count, zzdtqVar2.count);
        return new zzdtq(i2, iArrCopyOf, objArrCopyOf, true);
    }

    private static void zzb(int i2, Object obj, zzduk zzdukVar) {
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            zzdukVar.zzo(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 1) {
            zzdukVar.zzi(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 2) {
            zzdukVar.zza(i3, (zzdpm) obj);
            return;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new RuntimeException(zzdrg.zzbah());
            }
            zzdukVar.zzad(i3, ((Integer) obj).intValue());
        } else if (zzdukVar.zzayy() == zzdqw.zzd.zzhlg) {
            zzdukVar.zzgm(i3);
            ((zzdtq) obj).zzb(zzdukVar);
            zzdukVar.zzgn(i3);
        } else {
            zzdukVar.zzgn(i3);
            ((zzdtq) obj).zzb(zzdukVar);
            zzdukVar.zzgm(i3);
        }
    }

    public static zzdtq zzbbx() {
        return zzhop;
    }

    static zzdtq zzbby() {
        return new zzdtq();
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzdtq)) {
            return false;
        }
        zzdtq zzdtqVar = (zzdtq) obj;
        int i2 = this.count;
        if (i2 == zzdtqVar.count) {
            int[] iArr = this.zzhoq;
            int[] iArr2 = zzdtqVar.zzhoq;
            int i3 = 0;
            while (true) {
                if (i3 >= i2) {
                    z = true;
                    break;
                }
                if (iArr[i3] != iArr2[i3]) {
                    z = false;
                    break;
                }
                i3++;
            }
            if (z) {
                Object[] objArr = this.zzhnb;
                Object[] objArr2 = zzdtqVar.zzhnb;
                int i4 = this.count;
                int i5 = 0;
                while (true) {
                    if (i5 >= i4) {
                        z2 = true;
                        break;
                    }
                    if (!objArr[i5].equals(objArr2[i5])) {
                        z2 = false;
                        break;
                    }
                    i5++;
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = this.count;
        int i3 = (i2 + 527) * 31;
        int[] iArr = this.zzhoq;
        int iHashCode = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i3 + i4) * 31;
        Object[] objArr = this.zzhnb;
        int i7 = this.count;
        for (int i8 = 0; i8 < i7; i8++) {
            iHashCode = (iHashCode * 31) + objArr[i8].hashCode();
        }
        return i6 + iHashCode;
    }

    final void zza(zzduk zzdukVar) {
        if (zzdukVar.zzayy() == zzdqw.zzd.zzhlh) {
            for (int i2 = this.count - 1; i2 >= 0; i2--) {
                zzdukVar.zzb(this.zzhoq[i2] >>> 3, this.zzhnb[i2]);
            }
            return;
        }
        for (int i3 = 0; i3 < this.count; i3++) {
            zzdukVar.zzb(this.zzhoq[i3] >>> 3, this.zzhnb[i3]);
        }
    }

    final void zza(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < this.count; i3++) {
            zzdsh.zza(sb, i2, String.valueOf(this.zzhoq[i3] >>> 3), this.zzhnb[i3]);
        }
    }

    public final void zzaxj() {
        this.zzhfr = false;
    }

    public final int zzazu() {
        int iZzk;
        int i2 = this.zzhks;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.count; i4++) {
            int i5 = this.zzhoq[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                iZzk = zzdqf.zzk(i6, ((Long) this.zzhnb[i4]).longValue());
            } else if (i7 == 1) {
                iZzk = zzdqf.zzm(i6, ((Long) this.zzhnb[i4]).longValue());
            } else if (i7 == 2) {
                iZzk = zzdqf.zzc(i6, (zzdpm) this.zzhnb[i4]);
            } else if (i7 == 3) {
                iZzk = (zzdqf.zzgd(i6) << 1) + ((zzdtq) this.zzhnb[i4]).zzazu();
            } else {
                if (i7 != 5) {
                    throw new IllegalStateException(zzdrg.zzbah());
                }
                iZzk = zzdqf.zzah(i6, ((Integer) this.zzhnb[i4]).intValue());
            }
            i3 += iZzk;
        }
        this.zzhks = i3;
        return i3;
    }

    public final void zzb(zzduk zzdukVar) {
        if (this.count == 0) {
            return;
        }
        if (zzdukVar.zzayy() == zzdqw.zzd.zzhlg) {
            for (int i2 = 0; i2 < this.count; i2++) {
                zzb(this.zzhoq[i2], this.zzhnb[i2], zzdukVar);
            }
            return;
        }
        for (int i3 = this.count - 1; i3 >= 0; i3--) {
            zzb(this.zzhoq[i3], this.zzhnb[i3], zzdukVar);
        }
    }

    public final int zzbbz() {
        int i2 = this.zzhks;
        if (i2 != -1) {
            return i2;
        }
        int iZzd = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            iZzd += zzdqf.zzd(this.zzhoq[i3] >>> 3, (zzdpm) this.zzhnb[i3]);
        }
        this.zzhks = iZzd;
        return iZzd;
    }

    final void zzc(int i2, Object obj) {
        if (!this.zzhfr) {
            throw new UnsupportedOperationException();
        }
        int i3 = this.count;
        if (i3 == this.zzhoq.length) {
            int i4 = this.count + (i3 < 4 ? 8 : i3 >> 1);
            this.zzhoq = Arrays.copyOf(this.zzhoq, i4);
            this.zzhnb = Arrays.copyOf(this.zzhnb, i4);
        }
        int[] iArr = this.zzhoq;
        int i5 = this.count;
        iArr[i5] = i2;
        this.zzhnb[i5] = obj;
        this.count = i5 + 1;
    }
}
