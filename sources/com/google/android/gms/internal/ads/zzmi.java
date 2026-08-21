package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public final class zzmi extends zzgy {
    private static final Object zzbcx = new Object();
    private final boolean zzags;
    private final boolean zzagt;
    private final long zzbcy;
    private final long zzbcz;
    private final long zzbda;
    private final long zzbdb;

    private zzmi(long j2, long j3, long j4, long j5, boolean z, boolean z2) {
        this.zzbcy = j2;
        this.zzbcz = j3;
        this.zzbda = 0L;
        this.zzbdb = 0L;
        this.zzags = z;
        this.zzagt = false;
    }

    public zzmi(long j2, boolean z) {
        this(j2, j2, 0L, 0L, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    public final zzha zza(int i2, zzha zzhaVar, boolean z) {
        zznr.zzc(i2, 0, 1);
        Object obj = z ? zzbcx : null;
        return zzhaVar.zza(obj, obj, 0, this.zzbcy, 0L, false);
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    public final zzhd zza(int i2, zzhd zzhdVar, boolean z, long j2) {
        zznr.zzc(i2, 0, 1);
        boolean z2 = this.zzags;
        long j3 = this.zzbcz;
        zzhdVar.zzagg = null;
        zzhdVar.zzagq = C.TIME_UNSET;
        zzhdVar.zzagr = C.TIME_UNSET;
        zzhdVar.zzags = z2;
        zzhdVar.zzagt = false;
        zzhdVar.zzagw = 0L;
        zzhdVar.zzagh = j3;
        zzhdVar.zzagu = 0;
        zzhdVar.zzagv = 0;
        zzhdVar.zzagx = 0L;
        return zzhdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    public final int zzc(Object obj) {
        return zzbcx.equals(obj) ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    public final int zzep() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    public final int zzeq() {
        return 1;
    }
}
