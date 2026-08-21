###### Class com.google.android.gms.internal.ads.zzbhb (com.google.android.gms.internal.ads.zzbhb)
.class public final Lcom/google/android/gms/internal/ads/zzbhb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnm;


# instance fields
.field private final zzfbf:Lcom/google/android/gms/internal/ads/zzcwm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwm;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhb;->zzfbf:Lcom/google/android/gms/internal/ads/zzcwm;

    return-void
.end method


# virtual methods
.method public final zzbu(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhb;->zzfbf:Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwm;->pause()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzcwh; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, "Cannot invoke onPause for the mediation adapter."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzbv(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhb;->zzfbf:Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwm;->resume()V

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhb;->zzfbf:Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcwm;->onContextChanged(Landroid/content/Context;)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzcwh; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception p1

    const-string v0, "Cannot invoke onResume for the mediation adapter."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzbw(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhb;->zzfbf:Lcom/google/android/gms/internal/ads/zzcwm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwm;->destroy()V
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzcwh; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, "Cannot invoke onDestroy for the mediation adapter."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
