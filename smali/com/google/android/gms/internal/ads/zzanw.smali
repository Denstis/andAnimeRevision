###### Class com.google.android.gms.internal.ads.zzanw (com.google.android.gms.internal.ads.zzanw)
.class public final Lcom/google/android/gms/internal/ads/zzanw;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzant;


# direct methods
.method public static zzaf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzant;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzant;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzant;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzanv;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
