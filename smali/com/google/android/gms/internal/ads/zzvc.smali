###### Class com.google.android.gms.internal.ads.zzvc (com.google.android.gms.internal.ads.zzvc)
.class public abstract Lcom/google/android/gms/internal/ads/zzvc;
.super Lcom/google/android/gms/internal/ads/zzfm;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvd;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdLoader"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfm;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_31

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    const/4 v0, 0x4

    if-eq p1, v0, :cond_21

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    sget-object p1, Lcom/google/android/gms/internal/ads/zztx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zztx;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzvd;->zza(Lcom/google/android/gms/internal/ads/zztx;I)V

    goto :goto_47

    :cond_21
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvd;->zzju()Ljava/lang/String;

    move-result-object p1

    goto :goto_35

    :cond_26
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvd;->isLoading()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzfp;->writeBoolean(Landroid/os/Parcel;Z)V

    goto :goto_4a

    :cond_31
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzvd;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    :goto_35
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4a

    :cond_3c
    sget-object p1, Lcom/google/android/gms/internal/ads/zztx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfp;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zztx;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzvd;->zzb(Lcom/google/android/gms/internal/ads/zztx;)V

    :goto_47
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4a
    return p4
.end method
