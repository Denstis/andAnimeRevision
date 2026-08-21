###### Class com.google.android.gms.internal.ads.zzaqz (com.google.android.gms.internal.ads.zzaqz)
.class public abstract Lcom/google/android/gms/internal/ads/zzaqz;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzara;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzam(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzara;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzara;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzara;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzarc;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_ce

    const/4 p1, 0x0

    return p1

    :pswitch_6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzara;->zzpk()Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/16 :goto_cc

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;)Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Z)V

    goto :goto_6f

    :pswitch_22
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzara;->getAdMetadata()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_cc

    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwp;->zzh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzwm;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/internal/ads/zzwm;)V

    goto :goto_6f

    :pswitch_3a
    sget-object p1, Lcom/google/android/gms/internal/ads/zzarr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzarr;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/internal/ads/zzarr;)V

    goto :goto_6f

    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4d

    goto :goto_60

    :cond_4d
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzarj;

    if-eqz p4, :cond_5b

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzarj;

    goto :goto_60

    :cond_5b
    new-instance p4, Lcom/google/android/gms/internal/ads/zzarm;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzarm;-><init>(Landroid/os/IBinder;)V

    :goto_60
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/internal/ads/zzarj;)V

    goto :goto_6f

    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzara;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :goto_6f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_cc

    :pswitch_73
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzara;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_cc

    :pswitch_7e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzara;->isLoaded()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_cc

    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_90

    goto :goto_a3

    :cond_90
    const-string p2, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzarb;

    if-eqz p4, :cond_9e

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzarb;

    goto :goto_a3

    :cond_9e
    new-instance p4, Lcom/google/android/gms/internal/ads/zzard;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzard;-><init>(Landroid/os/IBinder;)V

    :goto_a3
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/internal/ads/zzarb;)V

    goto :goto_6f

    :pswitch_a7
    sget-object p1, Lcom/google/android/gms/internal/ads/zztx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zztx;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_b6

    goto :goto_c8

    :cond_b6
    const-string p4, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzari;

    if-eqz v0, :cond_c3

    check-cast p4, Lcom/google/android/gms/internal/ads/zzari;

    goto :goto_c8

    :cond_c3
    new-instance p4, Lcom/google/android/gms/internal/ads/zzark;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzark;-><init>(Landroid/os/IBinder;)V

    :goto_c8
    invoke-interface {p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzara;->zza(Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzari;)V

    goto :goto_6f

    :goto_cc
    const/4 p1, 0x1

    return p1

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_89
        :pswitch_7e
        :pswitch_73
        :pswitch_64
        :pswitch_46
        :pswitch_3a
        :pswitch_2e
        :pswitch_22
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method
