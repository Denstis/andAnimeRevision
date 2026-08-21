###### Class com.google.android.gms.internal.ads.zzadk (com.google.android.gms.internal.ads.zzadk)
.class public final Lcom/google/android/gms/internal/ads/zzadk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/formats/UnifiedNativeAd$MediaContent;


# instance fields
.field private final zzcwp:Lcom/google/android/gms/internal/ads/zzabh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzcwp:Lcom/google/android/gms/internal/ads/zzabh;

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzcwp:Lcom/google/android/gms/internal/ads/zzabh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabh;->getAspectRatio()F

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    const/4 v0, 0x0

    return v0
.end method

.method public final getMainImage()Landroid/graphics/drawable/Drawable;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzcwp:Lcom/google/android/gms/internal/ads/zzabh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzabh;->zzql()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public final setMainImage(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzcwp:Lcom/google/android/gms/internal/ads/zzabh;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabh;->zzt(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzqy()Lcom/google/android/gms/internal/ads/zzabh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadk;->zzcwp:Lcom/google/android/gms/internal/ads/zzabh;

    return-object v0
.end method
