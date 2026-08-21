###### Class com.google.android.gms.internal.ads.zzach (com.google.android.gms.internal.ads.zzach)
.class public abstract Lcom/google/android/gms/internal/ads/zzach;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzace;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzace;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzace;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzace;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzacg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzacg;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_84

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->zzqu()V

    goto :goto_50

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzace;->zzv(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_50

    :pswitch_15
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->zzqt()Z

    move-result p1

    goto :goto_30

    :pswitch_1a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->zzqs()Z

    move-result p1

    goto :goto_30

    :pswitch_1f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->zzqm()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_6c

    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzace;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    :goto_30
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_81

    :pswitch_37
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->zzqr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_6c

    :pswitch_3c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->destroy()V

    goto :goto_50

    :pswitch_40
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object p1

    goto :goto_6c

    :pswitch_45
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->recordImpression()V

    goto :goto_50

    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzace;->performClick(Ljava/lang/String;)V

    :goto_50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_81

    :pswitch_54
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p1

    goto :goto_7b

    :pswitch_59
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzace;->getAvailableAssetNames()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_81

    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzace;->zzcp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p1

    :goto_6c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_81

    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzace;->zzco(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_7b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_81
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_73
        :pswitch_64
        :pswitch_59
        :pswitch_54
        :pswitch_49
        :pswitch_45
        :pswitch_40
        :pswitch_3c
        :pswitch_37
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method
