###### Class com.google.android.gms.internal.ads.zzaug (com.google.android.gms.internal.ads.zzaug)
.class public final Lcom/google/android/gms/internal/ads/zzaug;
.super Lcom/google/android/gms/internal/ads/zzaxi;
.source ""


# direct methods
.method public static zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaug;->zzuu()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Ads"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    return-void
.end method

.method public static zzdy(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaug;->zzuu()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public static zzuu()Z
    .registers 2

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzclv:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method
