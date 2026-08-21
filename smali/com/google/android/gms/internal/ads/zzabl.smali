###### Class com.google.android.gms.internal.ads.zzabl (com.google.android.gms.internal.ads.zzabl)
.class public abstract Lcom/google/android/gms/internal/ads/zzabl;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabi;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzm(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzabi;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.INativeAdImage"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzabi;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabi;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const/4 p2, 0x1

    if-eq p1, p2, :cond_37

    const/4 p4, 0x2

    if-eq p1, p4, :cond_2c

    const/4 p4, 0x3

    if-eq p1, p4, :cond_21

    const/4 p4, 0x4

    if-eq p1, p4, :cond_16

    const/4 p4, 0x5

    if-eq p1, p4, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzabi;->getHeight()I

    move-result p1

    goto :goto_1a

    :cond_16
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzabi;->getWidth()I

    move-result p1

    :goto_1a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    :cond_21
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzabi;->getScale()D

    move-result-wide v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_41

    :cond_2c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzabi;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto :goto_41

    :cond_37
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzabi;->zzqi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_41
    return p2
.end method
