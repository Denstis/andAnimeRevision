###### Class com.google.android.gms.internal.ads.zzvh (com.google.android.gms.internal.ads.zzvh)
.class public abstract Lcom/google/android/gms/internal/ads/zzvh;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzve;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_d6

    :pswitch_4
    const/4 p1, 0x0

    return p1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzagi;->zzz(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzagj;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzagj;)V

    goto/16 :goto_a7

    :pswitch_13
    sget-object p1, Lcom/google/android/gms/internal/ads/zzagd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzagd;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzagd;)V

    goto/16 :goto_a7

    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacy;->zzv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzacz;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzacz;)V

    goto/16 :goto_a7

    :pswitch_2d
    sget-object p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    goto/16 :goto_a7

    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacx;->zzu(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzacu;

    move-result-object p1

    sget-object p4, Lcom/google/android/gms/internal/ads/zzua;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzua;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzua;)V

    goto :goto_a7

    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_55

    goto :goto_68

    :cond_55
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzvz;

    if-eqz p4, :cond_63

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzvz;

    goto :goto_68

    :cond_63
    new-instance p4, Lcom/google/android/gms/internal/ads/zzvy;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzvy;-><init>(Landroid/os/IBinder;)V

    :goto_68
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzve;->zzb(Lcom/google/android/gms/internal/ads/zzvz;)V

    goto :goto_a7

    :pswitch_6c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzaay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaay;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzaay;)V

    goto :goto_a7

    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzacs;->zzt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzact;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzacr;->zzs(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaco;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzve;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzact;Lcom/google/android/gms/internal/ads/zzaco;)V

    goto :goto_a7

    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacm;->zzr(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzacn;)V

    goto :goto_a7

    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacl;->zzq(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaci;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzve;->zza(Lcom/google/android/gms/internal/ads/zzaci;)V

    :goto_a7
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_d3

    :pswitch_ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_b2

    goto :goto_c5

    :cond_b2
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzuy;

    if-eqz p4, :cond_c0

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzuy;

    goto :goto_c5

    :cond_c0
    new-instance p4, Lcom/google/android/gms/internal/ads/zzva;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzva;-><init>(Landroid/os/IBinder;)V

    :goto_c5
    invoke-interface {p0, p4}, Lcom/google/android/gms/internal/ads/zzve;->zzb(Lcom/google/android/gms/internal/ads/zzuy;)V

    goto :goto_a7

    :pswitch_c9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzve;->zzor()Lcom/google/android/gms/internal/ads/zzvd;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_d3
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_ab
        :pswitch_9c
        :pswitch_90
        :pswitch_78
        :pswitch_6c
        :pswitch_4e
        :pswitch_3a
        :pswitch_2d
        :pswitch_20
        :pswitch_4
        :pswitch_4
        :pswitch_13
        :pswitch_6
    .end packed-switch
.end method
