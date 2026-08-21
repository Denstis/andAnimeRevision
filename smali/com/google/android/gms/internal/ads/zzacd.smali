###### Class com.google.android.gms.internal.ads.zzacd (com.google.android.gms.internal.ads.zzacd)
.class public abstract Lcom/google/android/gms/internal/ads/zzacd;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaca;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeContentAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_90

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_7c

    :pswitch_b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->zzqp()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    goto/16 :goto_87

    :pswitch_11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->zzqo()Lcom/google/android/gms/internal/ads/zzaba;

    move-result-object p1

    goto/16 :goto_87

    :pswitch_17
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaca;->reportTouchEvent(Landroid/os/Bundle;)V

    goto :goto_4a

    :pswitch_23
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaca;->recordImpression(Landroid/os/Bundle;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_8d

    :pswitch_36
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzaca;->performClick(Landroid/os/Bundle;)V

    goto :goto_4a

    :pswitch_42
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object p1

    goto :goto_87

    :pswitch_47
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->destroy()V

    :goto_4a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8d

    :pswitch_4e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_8d

    :pswitch_59
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->getAdvertiser()Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    :pswitch_5e
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->getCallToAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    :pswitch_63
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->zzqq()Lcom/google/android/gms/internal/ads/zzabi;

    move-result-object p1

    goto :goto_87

    :pswitch_68
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->getBody()Ljava/lang/String;

    move-result-object p1

    goto :goto_7c

    :pswitch_6d
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->getImages()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_8d

    :pswitch_78
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->getHeadline()Ljava/lang/String;

    move-result-object p1

    :goto_7c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8d

    :pswitch_83
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaca;->zzqm()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    :goto_87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_8d
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_90
    .packed-switch 0x2
        :pswitch_83
        :pswitch_78
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_4e
        :pswitch_47
        :pswitch_42
        :pswitch_36
        :pswitch_23
        :pswitch_17
        :pswitch_11
        :pswitch_b
        :pswitch_5
    .end packed-switch
.end method
