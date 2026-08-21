###### Class com.google.android.gms.internal.ads.zzage (com.google.android.gms.internal.ads.zzage)
.class public abstract Lcom/google/android/gms/internal/ads/zzage;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzagf;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.instream.client.IInstreamAd"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    const/4 p4, 0x3

    if-eq p1, p4, :cond_3a

    const/4 p4, 0x4

    if-eq p1, p4, :cond_33

    const/4 p4, 0x5

    if-eq p1, p4, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1b

    const/4 p2, 0x0

    goto :goto_2f

    :cond_1b
    const-string p4, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzagh;

    if-eqz v0, :cond_29

    move-object p2, p4

    check-cast p2, Lcom/google/android/gms/internal/ads/zzagh;

    goto :goto_2f

    :cond_29
    new-instance p4, Lcom/google/android/gms/internal/ads/zzagg;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzagg;-><init>(Landroid/os/IBinder;)V

    move-object p2, p4

    :goto_2f
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagf;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzagh;)V

    goto :goto_36

    :cond_33
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzagf;->destroy()V

    :goto_36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_44

    :cond_3a
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzagf;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_44
    const/4 p1, 0x1

    return p1
.end method
