package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* JADX INFO: loaded from: classes.dex */
public final class zzavw {
    public final int count;
    public final String name;
    private final double zzduf;
    private final double zzdug;
    public final double zzduh;

    public zzavw(String str, double d2, double d3, double d4, int i2) {
        this.name = str;
        this.zzdug = d2;
        this.zzduf = d3;
        this.zzduh = d4;
        this.count = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzavw)) {
            return false;
        }
        zzavw zzavwVar = (zzavw) obj;
        return Objects.equal(this.name, zzavwVar.name) && this.zzduf == zzavwVar.zzduf && this.zzdug == zzavwVar.zzdug && this.count == zzavwVar.count && Double.compare(this.zzduh, zzavwVar.zzduh) == 0;
    }

    public final int hashCode() {
        return Objects.hashCode(this.name, Double.valueOf(this.zzduf), Double.valueOf(this.zzdug), Double.valueOf(this.zzduh), Integer.valueOf(this.count));
    }

    public final String toString() {
        return Objects.toStringHelper(this).add(AppMeasurementSdk.ConditionalUserProperty.NAME, this.name).add("minBound", Double.valueOf(this.zzdug)).add("maxBound", Double.valueOf(this.zzduf)).add("percent", Double.valueOf(this.zzduh)).add("count", Integer.valueOf(this.count)).toString();
    }
}
