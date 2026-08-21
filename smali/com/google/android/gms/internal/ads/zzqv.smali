###### Class com.google.android.gms.internal.ads.zzqv (com.google.android.gms.internal.ads.zzqv)
.class public abstract Lcom/google/android/gms/internal/ads/zzqv;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqw;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p4, 0x2

    if-eq p1, p4, :cond_2b

    const/4 p4, 0x3

    if-eq p1, p4, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_10

    const/4 p1, 0x0

    goto :goto_24

    :cond_10
    const-string p2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzrc;

    if-eqz p4, :cond_1e

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzrc;

    goto :goto_24

    :cond_1e
    new-instance p2, Lcom/google/android/gms/internal/ads/zzre;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzre;-><init>(Landroid/os/IBinder;)V

    move-object p1, p2

    :goto_24
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzqw;->zza(Lcom/google/android/gms/internal/ads/zzrc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_35

    :cond_2b
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzdg()Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_35
    const/4 p1, 0x1

    return p1
.end method
