###### Class com.google.android.gms.internal.ads.zzbeg (com.google.android.gms.internal.ads.zzbeg)
.class public abstract Lcom/google/android/gms/internal/ads/zzbeg;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbed;


# direct methods
.method public static zzan(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbed;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.measurement.IMeasurementManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzbed;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbed;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbef;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbef;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
