###### Class com.google.android.gms.internal.ads.zzanx (com.google.android.gms.internal.ads.zzanx)
.class public final Lcom/google/android/gms/internal/ads/zzanx;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzany;


# direct methods
.method public static zzag(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzany;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzany;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzany;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
