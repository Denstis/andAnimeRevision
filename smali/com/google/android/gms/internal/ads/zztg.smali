###### Class com.google.android.gms.internal.ads.zztg (com.google.android.gms.internal.ads.zztg)
.class public final Lcom/google/android/gms/internal/ads/zztg;
.super Lcom/google/android/gms/internal/ads/zzdul;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdul<",
        "Lcom/google/android/gms/internal/ads/zztg;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbzn:Ljava/lang/String;

.field private zzbzo:[Lcom/google/android/gms/internal/ads/zzsp$zzb;

.field private zzbzp:Lcom/google/android/gms/internal/ads/zzsv;

.field private zzbzq:Lcom/google/android/gms/internal/ads/zzsv;

.field private zzbzr:Lcom/google/android/gms/internal/ads/zzsv;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdul;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzn:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzsp$zzb;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzo:[Lcom/google/android/gms/internal/ads/zzsp$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzp:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzq:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzr:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhrh:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzduj;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzn:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzg(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzo:[Lcom/google/android/gms/internal/ads/zzsp$zzb;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzo:[Lcom/google/android/gms/internal/ads/zzsp$zzb;

    array-length v2, v1

    if-ge v0, v2, :cond_20

    aget-object v1, v1, v0

    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zze(ILcom/google/android/gms/internal/ads/zzdsg;)V

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_20
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdul;->zza(Lcom/google/android/gms/internal/ads/zzduj;)V

    return-void
.end method

.method protected final zznx()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdul;->zznx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzn:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzh(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzo:[Lcom/google/android/gms/internal/ads/zzsp$zzb;

    if-eqz v1, :cond_28

    array-length v1, v1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztg;->zzbzo:[Lcom/google/android/gms/internal/ads/zzsp$zzb;

    array-length v3, v2

    if-ge v1, v3, :cond_28

    aget-object v2, v2, v1

    if-eqz v2, :cond_25

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdsg;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    return v0
.end method
