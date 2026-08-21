###### Class com.google.android.gms.internal.ads.zzasf (com.google.android.gms.internal.ads.zzasf)
.class public final Lcom/google/android/gms/internal/ads/zzasf;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static isEnabled()Z
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcpj:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static zzdv(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcpj:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    :cond_15
    return-void
.end method
