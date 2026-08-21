###### Class com.google.android.gms.internal.ads.zzcaa (com.google.android.gms.internal.ads.zzcaa)
.class public final Lcom/google/android/gms/internal/ads/zzcaa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnm;


# instance fields
.field private final zzczi:Lcom/google/android/gms/internal/ads/zzbbw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzckg:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcaa;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method


# virtual methods
.method public final zzbu(Landroid/content/Context;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcaa;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->onPause()V

    :cond_7
    return-void
.end method

.method public final zzbv(Landroid/content/Context;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcaa;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->onResume()V

    :cond_7
    return-void
.end method

.method public final zzbw(Landroid/content/Context;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcaa;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbbw;->destroy()V

    :cond_7
    return-void
.end method
