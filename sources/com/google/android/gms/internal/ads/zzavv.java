package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzavv {
    private final List<String> zzduc = new ArrayList();
    private final List<Double> zzdud = new ArrayList();
    private final List<Double> zzdue = new ArrayList();

    public final zzavv zza(String str, double d2, double d3) {
        int i2 = 0;
        while (i2 < this.zzduc.size()) {
            double dDoubleValue = this.zzdue.get(i2).doubleValue();
            double dDoubleValue2 = this.zzdud.get(i2).doubleValue();
            if (d2 < dDoubleValue || (dDoubleValue == d2 && d3 < dDoubleValue2)) {
                break;
            }
            i2++;
        }
        this.zzduc.add(i2, str);
        this.zzdue.add(i2, Double.valueOf(d2));
        this.zzdud.add(i2, Double.valueOf(d3));
        return this;
    }

    public final zzavu zzwc() {
        return new zzavu(this);
    }
}
