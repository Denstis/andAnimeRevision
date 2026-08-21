###### Class com.google.android.gms.internal.ads.zzare (com.google.android.gms.internal.ads.zzare)
.class public abstract Lcom/google/android/gms/internal/ads/zzare;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarb;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_36

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzarb;->onRewardedAdFailedToShow(I)V

    goto :goto_3d

    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1e

    const/4 p1, 0x0

    goto :goto_32

    :cond_1e
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzaqv;

    if-eqz v0, :cond_2c

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqv;

    goto :goto_32

    :cond_2c
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaqx;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzaqx;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_32
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzarb;->zza(Lcom/google/android/gms/internal/ads/zzaqv;)V

    goto :goto_3d

    :cond_36
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzarb;->onRewardedAdClosed()V

    goto :goto_3d

    :cond_3a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzarb;->onRewardedAdOpened()V

    :goto_3d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
