###### Class com.google.android.gms.internal.ads.zztj (com.google.android.gms.internal.ads.zztj)
.class public final Lcom/google/android/gms/internal/ads/zztj;
.super Lcom/google/android/gms/internal/ads/zzdul;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdul<",
        "Lcom/google/android/gms/internal/ads/zztj;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcad:Ljava/lang/String;

.field private zzcae:Lcom/google/android/gms/internal/ads/zzsp$zzo;

.field private zzcaf:Ljava/lang/Integer;

.field public zzcag:Lcom/google/android/gms/internal/ads/zztk;

.field private zzcah:Ljava/lang/Integer;

.field private zzcai:Lcom/google/android/gms/internal/ads/zzsv;

.field private zzcaj:Lcom/google/android/gms/internal/ads/zzsv;

.field private zzcak:Lcom/google/android/gms/internal/ads/zzsv;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdul;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcad:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcae:Lcom/google/android/gms/internal/ads/zzsp$zzo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcaf:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcag:Lcom/google/android/gms/internal/ads/zztk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcah:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcai:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcaj:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcak:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhrh:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzduj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcad:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzg(ILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcag:Lcom/google/android/gms/internal/ads/zztk;

    if-eqz v0, :cond_10

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zza(ILcom/google/android/gms/internal/ads/zzdus;)V

    :cond_10
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdul;->zza(Lcom/google/android/gms/internal/ads/zzduj;)V

    return-void
.end method

.method protected final zznx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdul;->zznx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcad:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzh(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztj;->zzcag:Lcom/google/android/gms/internal/ads/zztk;

    if-eqz v1, :cond_18

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzb(ILcom/google/android/gms/internal/ads/zzdus;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    return v0
.end method
