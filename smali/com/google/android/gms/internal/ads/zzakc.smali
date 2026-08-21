###### Class com.google.android.gms.internal.ads.zzakc (com.google.android.gms.internal.ads.zzakc)
.class public abstract Lcom/google/android/gms/internal/ads/zzakc;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakd;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzab(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzakd;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzakd;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzakd;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzakf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzakf;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_b6

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->onVideoPlay()V

    goto/16 :goto_b0

    :pswitch_a
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zzb(Landroid/os/Bundle;)V

    goto/16 :goto_b0

    :pswitch_17
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->zzrx()V

    goto/16 :goto_b0

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zzcl(I)V

    goto/16 :goto_b0

    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqy;->zzal(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaqv;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zza(Lcom/google/android/gms/internal/ads/zzaqv;)V

    goto/16 :goto_b0

    :pswitch_32
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->onVideoPause()V

    goto/16 :goto_b0

    :pswitch_37
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaqt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqt;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zzb(Lcom/google/android/gms/internal/ads/zzaqt;)V

    goto/16 :goto_b0

    :pswitch_44
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->zzrw()V

    goto/16 :goto_b0

    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zzde(Ljava/lang/String;)V

    goto :goto_b0

    :pswitch_51
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->onVideoEnd()V

    goto :goto_b0

    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzach;->zzp(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzace;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakd;->zza(Lcom/google/android/gms/internal/ads/zzace;Ljava/lang/String;)V

    goto :goto_b0

    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzakd;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b0

    :pswitch_71
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdImpression()V

    goto :goto_b0

    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_7d

    const/4 p1, 0x0

    goto :goto_91

    :cond_7d
    const-string p2, "com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzake;

    if-eqz p4, :cond_8b

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzake;

    goto :goto_91

    :cond_8b
    new-instance p2, Lcom/google/android/gms/internal/ads/zzakh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzakh;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_91
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zza(Lcom/google/android/gms/internal/ads/zzake;)V

    goto :goto_b0

    :pswitch_95
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdLoaded()V

    goto :goto_b0

    :pswitch_99
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdOpened()V

    goto :goto_b0

    :pswitch_9d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdLeftApplication()V

    goto :goto_b0

    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->onAdFailedToLoad(I)V

    goto :goto_b0

    :pswitch_a9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdClosed()V

    goto :goto_b0

    :pswitch_ad
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzakd;->onAdClicked()V

    :goto_b0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a1
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_75
        :pswitch_71
        :pswitch_65
        :pswitch_55
        :pswitch_51
        :pswitch_49
        :pswitch_44
        :pswitch_37
        :pswitch_32
        :pswitch_25
        :pswitch_1c
        :pswitch_17
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method
