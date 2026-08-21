package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class zzdvw {
    public static final zzdvw zzhxh = new zzdvw(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzdvw zzhxi = new zzdvw(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzdvw zzhxj = new zzdvw(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    private static final zzdvw zzhxk = new zzdvw(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f4079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double f4080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final double f4081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final double f4082d;
    private final double w;
    private final double zzhxd;
    private final double zzhxe;
    private final double zzhxf;
    private final double zzhxg;

    private zzdvw(double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9, double d10) {
        this.zzhxd = d6;
        this.zzhxe = d7;
        this.w = d8;
        this.f4079a = d2;
        this.f4080b = d3;
        this.f4081c = d4;
        this.f4082d = d5;
        this.zzhxf = d9;
        this.zzhxg = d10;
    }

    public static zzdvw zzp(ByteBuffer byteBuffer) {
        double dZzd = zzbc.zzd(byteBuffer);
        double dZzd2 = zzbc.zzd(byteBuffer);
        double dZze = zzbc.zze(byteBuffer);
        return new zzdvw(dZzd, dZzd2, zzbc.zzd(byteBuffer), zzbc.zzd(byteBuffer), dZze, zzbc.zze(byteBuffer), zzbc.zze(byteBuffer), zzbc.zzd(byteBuffer), zzbc.zzd(byteBuffer));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzdvw.class != obj.getClass()) {
            return false;
        }
        zzdvw zzdvwVar = (zzdvw) obj;
        return Double.compare(zzdvwVar.f4079a, this.f4079a) == 0 && Double.compare(zzdvwVar.f4080b, this.f4080b) == 0 && Double.compare(zzdvwVar.f4081c, this.f4081c) == 0 && Double.compare(zzdvwVar.f4082d, this.f4082d) == 0 && Double.compare(zzdvwVar.zzhxf, this.zzhxf) == 0 && Double.compare(zzdvwVar.zzhxg, this.zzhxg) == 0 && Double.compare(zzdvwVar.zzhxd, this.zzhxd) == 0 && Double.compare(zzdvwVar.zzhxe, this.zzhxe) == 0 && Double.compare(zzdvwVar.w, this.w) == 0;
    }

    public final int hashCode() {
        long jDoubleToLongBits = Double.doubleToLongBits(this.zzhxd);
        long jDoubleToLongBits2 = Double.doubleToLongBits(this.zzhxe);
        int i2 = (((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32))) * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)));
        long jDoubleToLongBits3 = Double.doubleToLongBits(this.w);
        int i3 = (i2 * 31) + ((int) (jDoubleToLongBits3 ^ (jDoubleToLongBits3 >>> 32)));
        long jDoubleToLongBits4 = Double.doubleToLongBits(this.f4079a);
        int i4 = (i3 * 31) + ((int) (jDoubleToLongBits4 ^ (jDoubleToLongBits4 >>> 32)));
        long jDoubleToLongBits5 = Double.doubleToLongBits(this.f4080b);
        int i5 = (i4 * 31) + ((int) (jDoubleToLongBits5 ^ (jDoubleToLongBits5 >>> 32)));
        long jDoubleToLongBits6 = Double.doubleToLongBits(this.f4081c);
        int i6 = (i5 * 31) + ((int) (jDoubleToLongBits6 ^ (jDoubleToLongBits6 >>> 32)));
        long jDoubleToLongBits7 = Double.doubleToLongBits(this.f4082d);
        int i7 = (i6 * 31) + ((int) (jDoubleToLongBits7 ^ (jDoubleToLongBits7 >>> 32)));
        long jDoubleToLongBits8 = Double.doubleToLongBits(this.zzhxf);
        int i8 = (i7 * 31) + ((int) (jDoubleToLongBits8 ^ (jDoubleToLongBits8 >>> 32)));
        long jDoubleToLongBits9 = Double.doubleToLongBits(this.zzhxg);
        return (i8 * 31) + ((int) (jDoubleToLongBits9 ^ (jDoubleToLongBits9 >>> 32)));
    }

    public final String toString() {
        if (equals(zzhxh)) {
            return "Rotate 0°";
        }
        if (equals(zzhxi)) {
            return "Rotate 90°";
        }
        if (equals(zzhxj)) {
            return "Rotate 180°";
        }
        if (equals(zzhxk)) {
            return "Rotate 270°";
        }
        double d2 = this.zzhxd;
        double d3 = this.zzhxe;
        double d4 = this.w;
        double d5 = this.f4079a;
        double d6 = this.f4080b;
        double d7 = this.f4081c;
        double d8 = this.f4082d;
        double d9 = this.zzhxf;
        double d10 = this.zzhxg;
        StringBuilder sb = new StringBuilder(260);
        sb.append("Matrix{u=");
        sb.append(d2);
        sb.append(", v=");
        sb.append(d3);
        sb.append(", w=");
        sb.append(d4);
        sb.append(", a=");
        sb.append(d5);
        sb.append(", b=");
        sb.append(d6);
        sb.append(", c=");
        sb.append(d7);
        sb.append(", d=");
        sb.append(d8);
        sb.append(", tx=");
        sb.append(d9);
        sb.append(", ty=");
        sb.append(d10);
        sb.append("}");
        return sb.toString();
    }
}
