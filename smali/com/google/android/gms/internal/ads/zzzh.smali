###### Class com.google.android.gms.internal.ads.zzzh (com.google.android.gms.internal.ads.zzzh)
.class public final Lcom/google/android/gms/internal/ads/zzzh;
.super Lcom/google/android/gms/internal/ads/zzfn;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzf;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.ads.internal.consent.IConsentCallback"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfn;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onFailure(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfn;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfn;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfn;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfn;->zzb(ILandroid/os/Parcel;)V

    return-void
.end method
