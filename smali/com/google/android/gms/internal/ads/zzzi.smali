###### Class com.google.android.gms.internal.ads.zzzi (com.google.android.gms.internal.ads.zzzi)
.class public final Lcom/google/android/gms/internal/ads/zzzi;
.super Lcom/google/android/gms/internal/ads/zzfn;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzg;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.ads.internal.consent.IConsentSdkUtil"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfn;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzzf;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfn;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfn;->zza(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfn;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfn;->zza(ILandroid/os/Parcel;)V

    return-void
.end method
