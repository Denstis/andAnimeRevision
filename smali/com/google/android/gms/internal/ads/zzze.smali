###### Class com.google.android.gms.internal.ads.zzze (com.google.android.gms.internal.ads.zzze)
.class public abstract Lcom/google/android/gms/internal/ads/zzze;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzzf;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.consent.IConsentCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    const/4 p3, 0x2

    if-eq p1, p3, :cond_10

    const/4 p3, 0x3

    if-eq p1, p3, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzzf;->onFailure(I)V

    goto :goto_17

    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzzf;->onSuccess(Ljava/lang/String;)V

    :goto_17
    const/4 p1, 0x1

    return p1
.end method
