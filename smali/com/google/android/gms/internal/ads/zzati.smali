###### Class com.google.android.gms.internal.ads.zzati (com.google.android.gms.internal.ads.zzati)
.class public abstract Lcom/google/android/gms/internal/ads/zzati;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatf;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.signals.ISignalGenerator"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 p4, 0x1

    if-ne p1, p4, :cond_36

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzath;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_1b

    const/4 p2, 0x0

    goto :goto_2f

    :cond_1b
    const-string v1, "com.google.android.gms.ads.internal.signals.ISignalCallback"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzatd;

    if-eqz v2, :cond_29

    move-object p2, v1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzatd;

    goto :goto_2f

    :cond_29
    new-instance v1, Lcom/google/android/gms/internal/ads/zzatg;

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/ads/zzatg;-><init>(Landroid/os/IBinder;)V

    move-object p2, v1

    :goto_2f
    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzatf;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzath;Lcom/google/android/gms/internal/ads/zzatd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4

    :cond_36
    const/4 p1, 0x0

    return p1
.end method
