###### Class com.google.android.gms.internal.ads.zzaue (com.google.android.gms.internal.ads.zzaue)
.class public final Lcom/google/android/gms/internal/ads/zzaue;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zzan(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxc;->zzbo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxc;->zzwn()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaud;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaud;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzauc;->zzut()Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p0

    const-string v0, "Updating ad debug logging enablement."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    const-string v0, "AdDebugLogUpdater.updateEnablement"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaxr;->zza(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/String;)V

    :cond_20
    return-void
.end method
