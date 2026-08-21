package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzms extends zzmy {
    private zzmr zzbeb;
    private final SparseArray<Map<zzmk, zzmu>> zzbdz = new SparseArray<>();
    private final SparseBooleanArray zzbea = new SparseBooleanArray();
    private int zzagf = 0;

    @Override // com.google.android.gms.internal.ads.zzmy
    public final zzna zza(zzgw[] zzgwVarArr, zzmk zzmkVar) {
        int[] iArr;
        int[] iArr2 = new int[zzgwVarArr.length + 1];
        zzmh[][] zzmhVarArr = new zzmh[zzgwVarArr.length + 1][];
        int[][][] iArr3 = new int[zzgwVarArr.length + 1][][];
        for (int i2 = 0; i2 < zzmhVarArr.length; i2++) {
            int i3 = zzmkVar.length;
            zzmhVarArr[i2] = new zzmh[i3];
            iArr3[i2] = new int[i3][];
        }
        int[] iArr4 = new int[zzgwVarArr.length];
        for (int i4 = 0; i4 < iArr4.length; i4++) {
            iArr4[i4] = zzgwVarArr[i4].zzdq();
        }
        for (int i5 = 0; i5 < zzmkVar.length; i5++) {
            zzmh zzmhVarZzav = zzmkVar.zzav(i5);
            int length = zzgwVarArr.length;
            int i6 = 0;
            int i7 = 0;
            while (true) {
                if (i6 >= zzgwVarArr.length) {
                    i6 = length;
                    break;
                }
                zzgw zzgwVar = zzgwVarArr[i6];
                int i8 = length;
                int i9 = i7;
                for (int i10 = 0; i10 < zzmhVarZzav.length; i10++) {
                    int iZza = zzgwVar.zza(zzmhVarZzav.zzau(i10)) & 3;
                    if (iZza > i9) {
                        if (iZza == 3) {
                            break;
                        }
                        i8 = i6;
                        i9 = iZza;
                    }
                }
                i6++;
                i7 = i9;
                length = i8;
            }
            if (i6 == zzgwVarArr.length) {
                iArr = new int[zzmhVarZzav.length];
            } else {
                zzgw zzgwVar2 = zzgwVarArr[i6];
                int[] iArr5 = new int[zzmhVarZzav.length];
                for (int i11 = 0; i11 < zzmhVarZzav.length; i11++) {
                    iArr5[i11] = zzgwVar2.zza(zzmhVarZzav.zzau(i11));
                }
                iArr = iArr5;
            }
            int i12 = iArr2[i6];
            zzmhVarArr[i6][i12] = zzmhVarZzav;
            iArr3[i6][i12] = iArr;
            iArr2[i6] = iArr2[i6] + 1;
        }
        zzmk[] zzmkVarArr = new zzmk[zzgwVarArr.length];
        int[] iArr6 = new int[zzgwVarArr.length];
        for (int i13 = 0; i13 < zzgwVarArr.length; i13++) {
            int i14 = iArr2[i13];
            zzmkVarArr[i13] = new zzmk((zzmh[]) Arrays.copyOf(zzmhVarArr[i13], i14));
            iArr3[i13] = (int[][]) Arrays.copyOf(iArr3[i13], i14);
            iArr6[i13] = zzgwVarArr[i13].getTrackType();
        }
        zzmk zzmkVar2 = new zzmk((zzmh[]) Arrays.copyOf(zzmhVarArr[zzgwVarArr.length], iArr2[zzgwVarArr.length]));
        zzmt[] zzmtVarArrZza = zza(zzgwVarArr, zzmkVarArr, iArr3);
        int i15 = 0;
        while (true) {
            if (i15 >= zzgwVarArr.length) {
                zzmr zzmrVar = new zzmr(iArr6, zzmkVarArr, iArr4, iArr3, zzmkVar2);
                zzgz[] zzgzVarArr = new zzgz[zzgwVarArr.length];
                for (int i16 = 0; i16 < zzgwVarArr.length; i16++) {
                    zzgzVarArr[i16] = zzmtVarArrZza[i16] != null ? zzgz.zzage : null;
                }
                return new zzna(zzmkVar, new zzmv(zzmtVarArrZza), zzmrVar, zzgzVarArr);
            }
            if (this.zzbea.get(i15)) {
                zzmtVarArrZza[i15] = null;
            } else {
                zzmk zzmkVar3 = zzmkVarArr[i15];
                Map<zzmk, zzmu> map = this.zzbdz.get(i15);
                if ((map != null ? map.get(zzmkVar3) : null) != null) {
                    throw new NoSuchMethodError();
                }
            }
            i15++;
        }
    }

    protected abstract zzmt[] zza(zzgw[] zzgwVarArr, zzmk[] zzmkVarArr, int[][][] iArr);

    @Override // com.google.android.gms.internal.ads.zzmy
    public final void zzd(Object obj) {
        this.zzbeb = (zzmr) obj;
    }

    public final void zzf(int i2, boolean z) {
        if (this.zzbea.get(i2) == z) {
            return;
        }
        this.zzbea.put(i2, z);
        invalidate();
    }
}
