###### Class com.google.android.gms.internal.ads.zzaqh (com.google.android.gms.internal.ads.zzaqh)
.class public abstract Lcom/google/android/gms/internal/ads/zzaqh;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqi;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzaj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaqi;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaqi;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqi;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqk;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_4a

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqi;->onRewardedVideoCompleted()V

    goto :goto_44

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqi;->onRewardedVideoAdFailedToLoad(I)V

    goto :goto_44

    :pswitch_11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqi;->onRewardedVideoAdLeftApplication()V

    goto :goto_44

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1d

    const/4 p1, 0x0

    goto :goto_31

    :cond_1d
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardItem"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzapy;

    if-eqz p4, :cond_2b

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzapy;

    goto :goto_31

    :cond_2b
    new-instance p2, Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzaqa;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_31
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqi;->zza(Lcom/google/android/gms/internal/ads/zzapy;)V

    goto :goto_44

    :pswitch_35
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqi;->onRewardedVideoAdClosed()V

    goto :goto_44

    :pswitch_39
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqi;->onRewardedVideoStarted()V

    goto :goto_44

    :pswitch_3d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqi;->onRewardedVideoAdOpened()V

    goto :goto_44

    :pswitch_41
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqi;->onRewardedVideoAdLoaded()V

    :goto_44
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_15
        :pswitch_11
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method
