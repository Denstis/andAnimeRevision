package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class zzhy {
    private static final zzhy zza = new zzhy(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzhy() {
        this(0, new int[8], new Object[8], true);
    }

    private zzhy(int i2, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i2;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzhy zza() {
        return zza;
    }

    static zzhy zza(zzhy zzhyVar, zzhy zzhyVar2) {
        int i2 = zzhyVar.zzb + zzhyVar2.zzb;
        int[] iArrCopyOf = Arrays.copyOf(zzhyVar.zzc, i2);
        System.arraycopy(zzhyVar2.zzc, 0, iArrCopyOf, zzhyVar.zzb, zzhyVar2.zzb);
        Object[] objArrCopyOf = Arrays.copyOf(zzhyVar.zzd, i2);
        System.arraycopy(zzhyVar2.zzd, 0, objArrCopyOf, zzhyVar.zzb, zzhyVar2.zzb);
        return new zzhy(i2, iArrCopyOf, objArrCopyOf, true);
    }

    private static void zza(int i2, Object obj, zzis zzisVar) {
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            zzisVar.zza(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 1) {
            zzisVar.zzd(i3, ((Long) obj).longValue());
            return;
        }
        if (i4 == 2) {
            zzisVar.zza(i3, (zzdu) obj);
            return;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new RuntimeException(zzfo.zzf());
            }
            zzisVar.zzd(i3, ((Integer) obj).intValue());
        } else if (zzisVar.zza() == zzfd.zze.zzj) {
            zzisVar.zza(i3);
            ((zzhy) obj).zzb(zzisVar);
            zzisVar.zzb(i3);
        } else {
            zzisVar.zzb(i3);
            ((zzhy) obj).zzb(zzisVar);
            zzisVar.zza(i3);
        }
    }

    static zzhy zzb() {
        return new zzhy();
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhy)) {
            return false;
        }
        zzhy zzhyVar = (zzhy) obj;
        int i2 = this.zzb;
        if (i2 == zzhyVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzhyVar.zzc;
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
                Object[] objArr = this.zzd;
                Object[] objArr2 = zzhyVar.zzd;
                int i4 = this.zzb;
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
        int i2 = this.zzb;
        int i3 = (i2 + 527) * 31;
        int[] iArr = this.zzc;
        int iHashCode = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i3 + i4) * 31;
        Object[] objArr = this.zzd;
        int i7 = this.zzb;
        for (int i8 = 0; i8 < i7; i8++) {
            iHashCode = (iHashCode * 31) + objArr[i8].hashCode();
        }
        return i6 + iHashCode;
    }

    final void zza(int i2, Object obj) {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
        int i3 = this.zzb;
        if (i3 == this.zzc.length) {
            int i4 = this.zzb + (i3 < 4 ? 8 : i3 >> 1);
            this.zzc = Arrays.copyOf(this.zzc, i4);
            this.zzd = Arrays.copyOf(this.zzd, i4);
        }
        int[] iArr = this.zzc;
        int i5 = this.zzb;
        iArr[i5] = i2;
        this.zzd[i5] = obj;
        this.zzb = i5 + 1;
    }

    final void zza(zzis zzisVar) {
        if (zzisVar.zza() == zzfd.zze.zzk) {
            for (int i2 = this.zzb - 1; i2 >= 0; i2--) {
                zzisVar.zza(this.zzc[i2] >>> 3, this.zzd[i2]);
            }
            return;
        }
        for (int i3 = 0; i3 < this.zzb; i3++) {
            zzisVar.zza(this.zzc[i3] >>> 3, this.zzd[i3]);
        }
    }

    final void zza(StringBuilder sb, int i2) {
        for (int i3 = 0; i3 < this.zzb; i3++) {
            zzgp.zza(sb, i2, String.valueOf(this.zzc[i3] >>> 3), this.zzd[i3]);
        }
    }

    public final void zzb(zzis zzisVar) {
        if (this.zzb == 0) {
            return;
        }
        if (zzisVar.zza() == zzfd.zze.zzj) {
            for (int i2 = 0; i2 < this.zzb; i2++) {
                zza(this.zzc[i2], this.zzd[i2], zzisVar);
            }
            return;
        }
        for (int i3 = this.zzb - 1; i3 >= 0; i3--) {
            zza(this.zzc[i3], this.zzd[i3], zzisVar);
        }
    }

    public final void zzc() {
        this.zzf = false;
    }

    public final int zzd() {
        int i2 = this.zze;
        if (i2 != -1) {
            return i2;
        }
        int iZzd = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            iZzd += zzen.zzd(this.zzc[i3] >>> 3, (zzdu) this.zzd[i3]);
        }
        this.zze = iZzd;
        return iZzd;
    }

    public final int zze() {
        int iZze;
        int i2 = this.zze;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.zzb; i4++) {
            int i5 = this.zzc[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                iZze = zzen.zze(i6, ((Long) this.zzd[i4]).longValue());
            } else if (i7 == 1) {
                iZze = zzen.zzg(i6, ((Long) this.zzd[i4]).longValue());
            } else if (i7 == 2) {
                iZze = zzen.zzc(i6, (zzdu) this.zzd[i4]);
            } else if (i7 == 3) {
                iZze = (zzen.zze(i6) << 1) + ((zzhy) this.zzd[i4]).zze();
            } else {
                if (i7 != 5) {
                    throw new IllegalStateException(zzfo.zzf());
                }
                iZze = zzen.zzi(i6, ((Integer) this.zzd[i4]).intValue());
            }
            i3 += iZze;
        }
        this.zze = i3;
        return i3;
    }
}
