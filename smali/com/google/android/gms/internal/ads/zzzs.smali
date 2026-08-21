###### Class com.google.android.gms.internal.ads.zzzs (com.google.android.gms.internal.ads.zzzs)
.class public final Lcom/google/android/gms/internal/ads/zzzs;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static varargs zza(Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/internal/ads/zzzz;[Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-nez p1, :cond_6

    goto :goto_1a

    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaab;->zzcut:Z

    if-eqz v1, :cond_1a

    if-nez p1, :cond_d

    goto :goto_1a

    :cond_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzaab;->zza(Lcom/google/android/gms/internal/ads/zzzz;J[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzaab;)Lcom/google/android/gms/internal/ads/zzzz;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaab;->zzer(J)Lcom/google/android/gms/internal/ads/zzzz;

    move-result-object p0

    return-object p0
.end method
