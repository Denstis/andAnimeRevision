###### Class com.google.android.gms.internal.ads.zzzc (com.google.android.gms.internal.ads.zzzc)
.class public final Lcom/google/android/gms/internal/ads/zzzc;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zzck(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcrg:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzzc;->zzh(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static zzh(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    if-nez p1, :cond_6

    goto :goto_15

    :cond_6
    :try_start_6
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object p1

    const-string v1, "NonagonUtil.isPatternMatched"

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_15
    :goto_15
    return v0
.end method
