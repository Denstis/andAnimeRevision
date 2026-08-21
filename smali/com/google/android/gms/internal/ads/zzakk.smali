###### Class com.google.android.gms.internal.ads.zzakk (com.google.android.gms.internal.ads.zzakk)
.class public abstract Lcom/google/android/gms/internal/ads/zzakk;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakl;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_b2

    :pswitch_3
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

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzakl;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_7d

    :pswitch_21
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->zzqp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_8f

    :pswitch_27
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->zzrz()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_8f

    :pswitch_2c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->zzqo()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object p1

    goto :goto_8f

    :pswitch_31
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object p1

    goto :goto_8f

    :pswitch_36
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->zzry()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_8f

    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakl;->zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_7d

    :pswitch_47
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_b0

    :pswitch_52
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->getOverrideClickHandling()Z

    move-result p1

    goto :goto_5b

    :pswitch_57
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->getOverrideImpressionRecording()Z

    move-result p1

    :goto_5b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_b0

    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakl;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_7d

    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakl;->zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_7d

    :pswitch_7a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->recordImpression()V

    :goto_7d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b0

    :pswitch_81
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    goto :goto_aa

    :pswitch_86
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_aa

    :pswitch_8b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->zzqq()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p1

    :goto_8f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_b0

    :pswitch_96
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->getBody()Ljava/lang/String;

    move-result-object p1

    goto :goto_aa

    :pswitch_9b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_b0

    :pswitch_a6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakl;->getHeadline()Ljava/lang/String;

    move-result-object p1

    :goto_aa
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_b0
    const/4 p1, 0x1

    return p1

    :pswitch_data_b2
    .packed-switch 0x2
        :pswitch_a6
        :pswitch_9b
        :pswitch_96
        :pswitch_8b
        :pswitch_86
        :pswitch_81
        :pswitch_7a
        :pswitch_6e
        :pswitch_62
        :pswitch_57
        :pswitch_52
        :pswitch_47
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_3
        :pswitch_3
        :pswitch_2c
        :pswitch_27
        :pswitch_21
        :pswitch_5
    .end packed-switch
.end method
