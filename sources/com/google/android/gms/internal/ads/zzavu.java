package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzavu {
    private final String[] zzdtx;
    private final double[] zzdty;
    private final double[] zzdtz;
    private final int[] zzdua;
    private int zzdub;

    private zzavu(zzavv zzavvVar) {
        int size = zzavvVar.zzdud.size();
        this.zzdtx = (String[]) zzavvVar.zzduc.toArray(new String[size]);
        this.zzdty = zze(zzavvVar.zzdud);
        this.zzdtz = zze(zzavvVar.zzdue);
        this.zzdua = new int[size];
        this.zzdub = 0;
    }

    private static double[] zze(List<Double> list) {
        double[] dArr = new double[list.size()];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            dArr[i2] = list.get(i2).doubleValue();
        }
        return dArr;
    }

    public final void zza(double d2) {
        this.zzdub++;
        int i2 = 0;
        while (true) {
            double[] dArr = this.zzdtz;
            if (i2 >= dArr.length) {
                return;
            }
            if (dArr[i2] <= d2 && d2 < this.zzdty[i2]) {
                int[] iArr = this.zzdua;
                iArr[i2] = iArr[i2] + 1;
            }
            if (d2 < this.zzdtz[i2]) {
                return;
            } else {
                i2++;
            }
        }
    }

    public final List<zzavw> zzwb() {
        ArrayList arrayList = new ArrayList(this.zzdtx.length);
        int i2 = 0;
        while (true) {
            String[] strArr = this.zzdtx;
            if (i2 >= strArr.length) {
                return arrayList;
            }
            String str = strArr[i2];
            double d2 = this.zzdtz[i2];
            double d3 = this.zzdty[i2];
            int[] iArr = this.zzdua;
            double d4 = iArr[i2];
            double d5 = this.zzdub;
            Double.isNaN(d4);
            Double.isNaN(d5);
            arrayList.add(new zzavw(str, d2, d3, d4 / d5, iArr[i2]));
            i2++;
        }
    }
}
