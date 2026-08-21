###### Class com.google.android.gms.internal.ads.zzwp (com.google.android.gms.internal.ads.zzwp)
.class public abstract Lcom/google/android/gms/internal/ads/zzwp;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwm;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzh(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzwm;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzwm;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwm;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzwo;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p2, 0x1

    if-ne p1, p2, :cond_a

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzwm;->onAdMetadataChanged()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p2

    :cond_a
    const/4 p1, 0x0

    return p1
.end method
