###### Class com.google.android.gms.internal.ads.zzra (com.google.android.gms.internal.ads.zzra)
.class public abstract Lcom/google/android/gms/internal/ads/zzra;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqx;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzqx;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzqx;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqx;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzqz;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    const/4 p4, 0x1

    if-eq p1, p4, :cond_10

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->onAppOpenAdFailedToLoad(I)V

    goto :goto_2f

    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_18

    const/4 p1, 0x0

    goto :goto_2c

    :cond_18
    const-string p2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzqw;

    if-eqz v0, :cond_26

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqw;

    goto :goto_2c

    :cond_26
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqy;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzqy;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_2c
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzqx;->zza(Lcom/google/android/gms/internal/ads/zzqw;)V

    :goto_2f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
