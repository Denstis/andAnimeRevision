package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
interface zzis {
    int zza();

    @Deprecated
    void zza(int i2);

    void zza(int i2, double d2);

    void zza(int i2, float f2);

    void zza(int i2, int i3);

    void zza(int i2, long j2);

    void zza(int i2, zzdu zzduVar);

    <K, V> void zza(int i2, zzgf<K, V> zzgfVar, Map<K, V> map);

    void zza(int i2, Object obj);

    void zza(int i2, Object obj, zzhd zzhdVar);

    void zza(int i2, String str);

    void zza(int i2, List<String> list);

    void zza(int i2, List<?> list, zzhd zzhdVar);

    void zza(int i2, List<Integer> list, boolean z);

    void zza(int i2, boolean z);

    @Deprecated
    void zzb(int i2);

    void zzb(int i2, int i3);

    void zzb(int i2, long j2);

    @Deprecated
    void zzb(int i2, Object obj, zzhd zzhdVar);

    void zzb(int i2, List<zzdu> list);

    @Deprecated
    void zzb(int i2, List<?> list, zzhd zzhdVar);

    void zzb(int i2, List<Integer> list, boolean z);

    void zzc(int i2, int i3);

    void zzc(int i2, long j2);

    void zzc(int i2, List<Long> list, boolean z);

    void zzd(int i2, int i3);

    void zzd(int i2, long j2);

    void zzd(int i2, List<Long> list, boolean z);

    void zze(int i2, int i3);

    void zze(int i2, long j2);

    void zze(int i2, List<Long> list, boolean z);

    void zzf(int i2, int i3);

    void zzf(int i2, List<Float> list, boolean z);

    void zzg(int i2, List<Double> list, boolean z);

    void zzh(int i2, List<Integer> list, boolean z);

    void zzi(int i2, List<Boolean> list, boolean z);

    void zzj(int i2, List<Integer> list, boolean z);

    void zzk(int i2, List<Integer> list, boolean z);

    void zzl(int i2, List<Long> list, boolean z);

    void zzm(int i2, List<Integer> list, boolean z);

    void zzn(int i2, List<Long> list, boolean z);
}
