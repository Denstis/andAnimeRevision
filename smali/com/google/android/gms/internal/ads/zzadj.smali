###### Class com.google.android.gms.internal.ads.zzadj (com.google.android.gms.internal.ads.zzadj)
.class public abstract Lcom/google/android/gms/internal/ads/zzadj;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadg;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_104

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->isCustomClickGestureEnabled()Z

    move-result p1

    goto/16 :goto_94

    :pswitch_b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->zzqx()Lcom/google/android/gms/internal/ads/zzabh;

    move-result-object p1

    goto/16 :goto_e1

    :pswitch_11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->recordCustomClickGesture()V

    goto/16 :goto_b0

    :pswitch_16
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->zzqw()V

    goto/16 :goto_b0

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwh;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzwe;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzwe;)V

    goto/16 :goto_b0

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwl;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzwi;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzwi;)V

    goto/16 :goto_b0

    :pswitch_35
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->isCustomMuteThisAdEnabled()Z

    move-result p1

    goto :goto_94

    :pswitch_3a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getMuteThisAdReasons()Ljava/util/List;

    move-result-object p1

    goto/16 :goto_f1

    :pswitch_40
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->cancelUnconfirmedClick()V

    goto/16 :goto_b0

    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_4d

    const/4 p1, 0x0

    goto :goto_61

    :cond_4d
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzadf;

    if-eqz p4, :cond_5b

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzadf;

    goto :goto_61

    :cond_5b
    new-instance p2, Lcom/google/android/gms/internal/ads/zzadh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzadh;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_61
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->zza(Lcom/google/android/gms/internal/ads/zzadf;)V

    goto :goto_b0

    :pswitch_65
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_102

    :pswitch_71
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->zzqp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_e1

    :pswitch_77
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->zzqm()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto :goto_e1

    :pswitch_7c
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->reportTouchEvent(Landroid/os/Bundle;)V

    goto :goto_b0

    :pswitch_88
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1

    :goto_94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto/16 :goto_102

    :pswitch_9c
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzadg;->performClick(Landroid/os/Bundle;)V

    goto :goto_b0

    :pswitch_a8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->zzqo()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object p1

    goto :goto_e1

    :pswitch_ad
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->destroy()V

    :goto_b0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_102

    :pswitch_b4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_fc

    :pswitch_b9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object p1

    goto :goto_e1

    :pswitch_be
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getPrice()Ljava/lang/String;

    move-result-object p1

    goto :goto_fc

    :pswitch_c3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getStore()Ljava/lang/String;

    move-result-object p1

    goto :goto_fc

    :pswitch_c8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getStarRating()D

    move-result-wide p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_102

    :pswitch_d3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    goto :goto_fc

    :pswitch_d8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_fc

    :pswitch_dd
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->zzqn()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p1

    :goto_e1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_102

    :pswitch_e8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getBody()Ljava/lang/String;

    move-result-object p1

    goto :goto_fc

    :pswitch_ed
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getImages()Ljava/util/List;

    move-result-object p1

    :goto_f1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_102

    :pswitch_f8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzadg;->getHeadline()Ljava/lang/String;

    move-result-object p1

    :goto_fc
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_102
    const/4 p1, 0x1

    return p1

    :pswitch_data_104
    .packed-switch 0x2
        :pswitch_f8
        :pswitch_ed
        :pswitch_e8
        :pswitch_dd
        :pswitch_d8
        :pswitch_d3
        :pswitch_c8
        :pswitch_c3
        :pswitch_be
        :pswitch_b9
        :pswitch_b4
        :pswitch_ad
        :pswitch_a8
        :pswitch_9c
        :pswitch_88
        :pswitch_7c
        :pswitch_77
        :pswitch_71
        :pswitch_65
        :pswitch_45
        :pswitch_40
        :pswitch_3a
        :pswitch_35
        :pswitch_28
        :pswitch_1b
        :pswitch_16
        :pswitch_11
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method
