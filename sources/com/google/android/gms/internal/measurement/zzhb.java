package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;

/* JADX INFO: loaded from: classes.dex */
final class zzhb implements zzgm {
    private final zzgo zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    zzhb(zzgo zzgoVar, String str, Object[] objArr) {
        this.zza = zzgoVar;
        this.zzb = str;
        this.zzc = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.zzd = cCharAt;
            return;
        }
        int i2 = cCharAt & 8191;
        int i3 = 13;
        int i4 = 1;
        while (true) {
            int i5 = i4 + 1;
            char cCharAt2 = str.charAt(i4);
            if (cCharAt2 < 55296) {
                this.zzd = i2 | (cCharAt2 << i3);
                return;
            } else {
                i2 |= (cCharAt2 & 8191) << i3;
                i3 += 13;
                i4 = i5;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzgm
    public final int zza() {
        return (this.zzd & 1) == 1 ? zzfd.zze.zzh : zzfd.zze.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzgm
    public final boolean zzb() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.zzgm
    public final zzgo zzc() {
        return this.zza;
    }

    final String zzd() {
        return this.zzb;
    }

    final Object[] zze() {
        return this.zzc;
    }
}
