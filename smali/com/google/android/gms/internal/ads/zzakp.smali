###### Class com.google.android.gms.internal.ads.zzakp (com.google.android.gms.internal.ads.zzakp)
.class public abstract Lcom/google/android/gms/internal/ads/zzakp;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakm;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzac(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzakm;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzakm;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzakm;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzako;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzako;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_c8

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getMediaContentAspectRatio()F

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_c6

    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakm;->zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_48

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzakm;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_48

    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakm;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_48

    :pswitch_45
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->recordImpression()V

    :goto_48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_c6

    :pswitch_4d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getOverrideClickHandling()Z

    move-result p1

    goto :goto_56

    :pswitch_52
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getOverrideImpressionRecording()Z

    move-result p1

    :goto_56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_c6

    :pswitch_5e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_c6

    :pswitch_69
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->zzqp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_a5

    :pswitch_6e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->zzrz()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_a5

    :pswitch_73
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->zzry()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_a5

    :pswitch_78
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->zzqo()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object p1

    goto :goto_a5

    :pswitch_7d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object p1

    goto :goto_a5

    :pswitch_82
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getPrice()Ljava/lang/String;

    move-result-object p1

    goto :goto_c0

    :pswitch_87
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getStore()Ljava/lang/String;

    move-result-object p1

    goto :goto_c0

    :pswitch_8c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getStarRating()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_c6

    :pswitch_97
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    goto :goto_c0

    :pswitch_9c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_c0

    :pswitch_a1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->zzqn()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p1

    :goto_a5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_c6

    :pswitch_ac
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getBody()Ljava/lang/String;

    move-result-object p1

    goto :goto_c0

    :pswitch_b1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_c6

    :pswitch_bc
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakm;->getHeadline()Ljava/lang/String;

    move-result-object p1

    :goto_c0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_c6
    const/4 p1, 0x1

    return p1

    :pswitch_data_c8
    .packed-switch 0x2
        :pswitch_bc
        :pswitch_b1
        :pswitch_ac
        :pswitch_a1
        :pswitch_9c
        :pswitch_97
        :pswitch_8c
        :pswitch_87
        :pswitch_82
        :pswitch_7d
        :pswitch_78
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_5e
        :pswitch_52
        :pswitch_4d
        :pswitch_45
        :pswitch_39
        :pswitch_1d
        :pswitch_11
        :pswitch_5
    .end packed-switch
.end method
