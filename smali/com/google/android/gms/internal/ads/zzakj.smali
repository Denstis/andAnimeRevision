###### Class com.google.android.gms.internal.ads.zzakj (com.google.android.gms.internal.ads.zzakj)
.class public abstract Lcom/google/android/gms/internal/ads/zzakj;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakg;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_c6

    const/4 p1, 0x0

    return p1

    :pswitch_5
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

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzakg;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_81

    :pswitch_21
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->zzqp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_a3

    :pswitch_27
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->zzrz()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_a3

    :pswitch_2d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->zzqo()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object p1

    goto/16 :goto_a3

    :pswitch_33
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->zzry()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_a3

    :pswitch_39
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object p1

    goto :goto_a3

    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_81

    :pswitch_4a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_c4

    :pswitch_56
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getOverrideClickHandling()Z

    move-result p1

    goto :goto_5f

    :pswitch_5b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getOverrideImpressionRecording()Z

    move-result p1

    :goto_5f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_c4

    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_81

    :pswitch_72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_81

    :pswitch_7e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->recordImpression()V

    :goto_81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c4

    :pswitch_85
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getPrice()Ljava/lang/String;

    move-result-object p1

    goto :goto_be

    :pswitch_8a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getStore()Ljava/lang/String;

    move-result-object p1

    goto :goto_be

    :pswitch_8f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getStarRating()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_c4

    :pswitch_9a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_be

    :pswitch_9f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->zzqn()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p1

    :goto_a3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_c4

    :pswitch_aa
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getBody()Ljava/lang/String;

    move-result-object p1

    goto :goto_be

    :pswitch_af
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_c4

    :pswitch_ba
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakg;->getHeadline()Ljava/lang/String;

    move-result-object p1

    :goto_be
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_c4
    const/4 p1, 0x1

    return p1

    :pswitch_data_c6
    .packed-switch 0x2
        :pswitch_ba
        :pswitch_af
        :pswitch_aa
        :pswitch_9f
        :pswitch_9a
        :pswitch_8f
        :pswitch_8a
        :pswitch_85
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_5b
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_5
    .end packed-switch
.end method
