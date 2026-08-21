###### Class com.google.android.gms.internal.ads.zzabp (com.google.android.gms.internal.ads.zzabp)
.class public abstract Lcom/google/android/gms/internal/ads/zzabp;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabm;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzn(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzabm;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzabm;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabm;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzabo;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    packed-switch p1, :pswitch_data_8e

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabm;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto/16 :goto_88

    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1a

    const/4 p1, 0x0

    goto :goto_2e

    :cond_1a
    const-string p2, "com.google.android.gms.ads.internal.formats.client.IMediaContent"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzabh;

    if-eqz p4, :cond_28

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabh;

    goto :goto_2e

    :cond_28
    new-instance p2, Lcom/google/android/gms/internal/ads/zzabj;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzabj;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_2e
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabm;->zza(Lcom/google/android/gms/internal/ads/zzabh;)V

    goto :goto_88

    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabm;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_88

    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabm;->zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_88

    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzabm;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V

    goto :goto_88

    :pswitch_5a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzabm;->destroy()V

    goto :goto_88

    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabm;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_88

    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabm;->zzcj(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_8b

    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzabm;->zzc(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :goto_88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_8b
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_79
        :pswitch_6a
        :pswitch_5e
        :pswitch_5a
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method
