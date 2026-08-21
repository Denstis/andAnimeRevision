###### Class com.google.android.gms.internal.ads.zzabd (com.google.android.gms.internal.ads.zzabd)
.class public abstract Lcom/google/android/gms/internal/ads/zzabd;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaba;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzl(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaba;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzaba;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaba;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzabc;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_13

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaba;->zzqe()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_1d

    :cond_13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzaba;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1d
    const/4 p1, 0x1

    return p1
.end method
