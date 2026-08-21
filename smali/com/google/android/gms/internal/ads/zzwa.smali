###### Class com.google.android.gms.internal.ads.zzwa (com.google.android.gms.internal.ads.zzwa)
.class public abstract Lcom/google/android/gms/internal/ads/zzwa;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwb;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_a0

    const/4 p1, 0x0

    return p1

    :pswitch_5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzyd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzyd;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->zza(Lcom/google/android/gms/internal/ads/zzyd;)V

    goto/16 :goto_9b

    :pswitch_12
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwb;->zzou()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9e

    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzafx;->zzy(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzafu;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->zza(Lcom/google/android/gms/internal/ads/zzafu;)V

    goto/16 :goto_9b

    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajw;->zzaa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzajx;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->zza(Lcom/google/android/gms/internal/ads/zzajx;)V

    goto :goto_9b

    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->zzbz(Ljava/lang/String;)V

    goto :goto_9b

    :pswitch_3f
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwb;->getVersionString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9e

    :pswitch_4a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwb;->zzot()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_9e

    :pswitch_55
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwb;->zzos()F

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_9e

    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwb;->zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_9b

    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwb;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    goto :goto_9b

    :pswitch_80
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->setAppMuted(Z)V

    goto :goto_9b

    :pswitch_88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->zzby(Ljava/lang/String;)V

    goto :goto_9b

    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->setAppVolume(F)V

    goto :goto_9b

    :pswitch_98
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwb;->initialize()V

    :goto_9b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_9e
    const/4 p1, 0x1

    return p1

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_98
        :pswitch_90
        :pswitch_88
        :pswitch_80
        :pswitch_70
        :pswitch_60
        :pswitch_55
        :pswitch_4a
        :pswitch_3f
        :pswitch_37
        :pswitch_2b
        :pswitch_1e
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method
