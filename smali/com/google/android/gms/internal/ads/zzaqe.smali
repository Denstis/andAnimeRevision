###### Class com.google.android.gms.internal.ads.zzaqe (com.google.android.gms.internal.ads.zzaqe)
.class public abstract Lcom/google/android/gms/internal/ads/zzaqe;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaqb;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzai(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaqb;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaqb;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqb;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaqd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaqd;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const/4 p4, 0x1

    if-eq p1, p4, :cond_ea

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e6

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_c8

    const/16 v0, 0x22

    if-eq p1, v0, :cond_c0

    packed-switch p1, :pswitch_data_fa

    const/4 p1, 0x0

    return p1

    :pswitch_13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqb;->zzpl()Z

    move-result p1

    goto/16 :goto_b9

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->setCustomData(Ljava/lang/String;)V

    goto/16 :goto_f5

    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_f5

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->setAppPackageName(Ljava/lang/String;)V

    goto/16 :goto_f5

    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_3f

    goto :goto_52

    :cond_3f
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzapz;

    if-eqz v0, :cond_4d

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapz;

    goto :goto_52

    :cond_4d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqc;-><init>(Landroid/os/IBinder;)V

    :goto_52
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Lcom/google/android/gms/internal/ads/zzapz;)V

    goto/16 :goto_f5

    :pswitch_57
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqb;->getAdMetadata()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_f8

    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvr;->zzd(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzvo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Lcom/google/android/gms/internal/ads/zzvo;)V

    goto/16 :goto_f5

    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->setUserId(Ljava/lang/String;)V

    goto/16 :goto_f5

    :pswitch_79
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqb;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_f8

    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_f5

    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_f5

    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_f5

    :pswitch_a9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqb;->destroy()V

    goto :goto_f5

    :pswitch_ad
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqb;->resume()V

    goto :goto_f5

    :pswitch_b1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqb;->pause()V

    goto :goto_f5

    :pswitch_b5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqb;->isLoaded()Z

    move-result p1

    :goto_b9
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_f8

    :cond_c0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->setImmersiveMode(Z)V

    goto :goto_f5

    :cond_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_cf

    goto :goto_e2

    :cond_cf
    const-string p2, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzaqi;

    if-eqz v0, :cond_dd

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqi;

    goto :goto_e2

    :cond_dd
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaqk;-><init>(Landroid/os/IBinder;)V

    :goto_e2
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Lcom/google/android/gms/internal/ads/zzaqi;)V

    goto :goto_f5

    :cond_e6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaqb;->show()V

    goto :goto_f5

    :cond_ea
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaqo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqo;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaqb;->zza(Lcom/google/android/gms/internal/ads/zzaqo;)V

    :goto_f5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_f8
    return p4

    nop

    :pswitch_data_fa
    .packed-switch 0x5
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_9d
        :pswitch_91
        :pswitch_85
        :pswitch_79
        :pswitch_70
        :pswitch_63
        :pswitch_57
        :pswitch_38
        :pswitch_2f
        :pswitch_22
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method
