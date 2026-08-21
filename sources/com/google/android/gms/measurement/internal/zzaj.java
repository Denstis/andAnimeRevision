package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
final class zzaj {
    final String zza;
    final String zzb;
    final long zzc;
    final long zzd;
    final long zze;
    final long zzf;
    final long zzg;
    final Long zzh;
    final Long zzi;
    final Long zzj;
    final Boolean zzk;

    zzaj(String str, String str2, long j2, long j3, long j4, long j5, long j6, Long l, Long l2, Long l3, Boolean bool) {
        Preconditions.checkNotEmpty(str);
        Preconditions.checkNotEmpty(str2);
        Preconditions.checkArgument(j2 >= 0);
        Preconditions.checkArgument(j3 >= 0);
        Preconditions.checkArgument(j4 >= 0);
        Preconditions.checkArgument(j6 >= 0);
        this.zza = str;
        this.zzb = str2;
        this.zzc = j2;
        this.zzd = j3;
        this.zze = j4;
        this.zzf = j5;
        this.zzg = j6;
        this.zzh = l;
        this.zzi = l2;
        this.zzj = l3;
        this.zzk = bool;
    }

    zzaj(String str, String str2, long j2, long j3, long j4, long j5, Long l, Long l2, Long l3, Boolean bool) {
        this(str, str2, j2, j3, 0L, j4, 0L, null, null, null, null);
    }

    final zzaj zza(long j2) {
        return new zzaj(this.zza, this.zzb, this.zzc, this.zzd, this.zze, j2, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk);
    }

    final zzaj zza(long j2, long j3) {
        return new zzaj(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, j2, Long.valueOf(j3), this.zzi, this.zzj, this.zzk);
    }

    final zzaj zza(Long l, Long l2, Boolean bool) {
        return new zzaj(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, l, l2, (bool == null || bool.booleanValue()) ? bool : null);
    }
}
