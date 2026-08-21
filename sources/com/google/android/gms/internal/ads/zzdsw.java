package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
interface zzdsw {
    int getTag();

    double readDouble();

    float readFloat();

    String readString();

    void readStringList(List<String> list);

    <T> T zza(zzdsv<T> zzdsvVar, zzdqj zzdqjVar);

    <T> void zza(List<T> list, zzdsv<T> zzdsvVar, zzdqj zzdqjVar);

    <K, V> void zza(Map<K, V> map, zzdrx<K, V> zzdrxVar, zzdqj zzdqjVar);

    long zzaxv();

    long zzaxw();

    int zzaxx();

    long zzaxy();

    int zzaxz();

    boolean zzaya();

    String zzayb();

    zzdpm zzayc();

    int zzayd();

    int zzaye();

    int zzayf();

    long zzayg();

    int zzayh();

    long zzayi();

    int zzays();

    boolean zzayt();

    @Deprecated
    <T> T zzb(zzdsv<T> zzdsvVar, zzdqj zzdqjVar);

    @Deprecated
    <T> void zzb(List<T> list, zzdsv<T> zzdsvVar, zzdqj zzdqjVar);

    void zzk(List<Double> list);

    void zzl(List<Float> list);

    void zzm(List<Long> list);

    void zzn(List<Long> list);

    void zzo(List<Integer> list);

    void zzp(List<Long> list);

    void zzq(List<Integer> list);

    void zzr(List<Boolean> list);

    void zzs(List<String> list);

    void zzt(List<zzdpm> list);

    void zzu(List<Integer> list);

    void zzv(List<Integer> list);

    void zzw(List<Integer> list);

    void zzx(List<Long> list);

    void zzy(List<Integer> list);

    void zzz(List<Long> list);
}
