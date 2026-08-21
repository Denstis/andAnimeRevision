###### Class com.google.android.gms.internal.ads.zzwq (com.google.android.gms.internal.ads.zzwq)
.class public abstract Lcom/google/android/gms/internal/ads/zzwq;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwr;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzi(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzwr;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IVideoController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzwr;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwr;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzwt;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_7e

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->stop()V

    goto/16 :goto_79

    :pswitch_a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->isClickToExpandEnabled()Z

    move-result p1

    goto :goto_63

    :pswitch_f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzoz()Lcom/google/android/gms/internal/ads/zzws;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_7c

    :pswitch_1a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->isCustomControlsEnabled()Z

    move-result p1

    goto :goto_63

    :pswitch_1f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->getAspectRatio()F

    move-result p1

    goto :goto_4d

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2c

    const/4 p1, 0x0

    goto :goto_40

    :cond_2c
    const-string p2, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzws;

    if-eqz p4, :cond_3a

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzws;

    goto :goto_40

    :cond_3a
    new-instance p2, Lcom/google/android/gms/internal/ads/zzwu;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzwu;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_40
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zza(Lcom/google/android/gms/internal/ads/zzws;)V

    goto :goto_79

    :pswitch_44
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzoy()F

    move-result p1

    goto :goto_4d

    :pswitch_49
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->zzox()F

    move-result p1

    :goto_4d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_7c

    :pswitch_54
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->getPlaybackState()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7c

    :pswitch_5f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->isMuted()Z

    move-result p1

    :goto_63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_7c

    :pswitch_6a
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->mute(Z)V

    goto :goto_79

    :pswitch_72
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->pause()V

    goto :goto_79

    :pswitch_76
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwr;->play()V

    :goto_79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_7c
    const/4 p1, 0x1

    return p1

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_76
        :pswitch_72
        :pswitch_6a
        :pswitch_5f
        :pswitch_54
        :pswitch_49
        :pswitch_44
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method
