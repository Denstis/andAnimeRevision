###### Class com.google.android.gms.internal.ads.zzzj (com.google.android.gms.internal.ads.zzzj)
.class public abstract Lcom/google/android/gms/internal/ads/zzzj;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzg;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.consent.IConsentSdkUtil"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzzg;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.consent.IConsentSdkUtil"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzzg;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzg;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzzi;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    const/4 p4, 0x2

    if-eq p1, p4, :cond_30

    const/4 p4, 0x3

    if-eq p1, p4, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_18

    const/4 p2, 0x0

    goto :goto_2c

    :cond_18
    const-string p4, "com.google.android.gms.ads.internal.consent.IConsentCallback"

    invoke-interface {p2, p4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p4

    instance-of v0, p4, Lcom/google/android/gms/internal/ads/zzzf;

    if-eqz v0, :cond_26

    move-object p2, p4

    check-cast p2, Lcom/google/android/gms/internal/ads/zzzf;

    goto :goto_2c

    :cond_26
    new-instance p4, Lcom/google/android/gms/internal/ads/zzzh;

    invoke-direct {p4, p2}, Lcom/google/android/gms/internal/ads/zzzh;-><init>(Landroid/os/IBinder;)V

    move-object p2, p4

    :goto_2c
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzzg;->zza(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzzf;)V

    goto :goto_3b

    :cond_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzzg;->zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :goto_3b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1
.end method
