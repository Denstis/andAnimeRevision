###### Class com.google.android.gms.internal.ads.zzdvi (com.google.android.gms.internal.ads.zzdvi)
.class public final Lcom/google/android/gms/internal/ads/zzdvi;
.super Lcom/google/android/gms/internal/ads/zzdul;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdul<",
        "Lcom/google/android/gms/internal/ads/zzdvi;",
        ">;"
    }
.end annotation


# instance fields
.field public mimeType:Ljava/lang/String;

.field public zzhwk:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzf$zzb;

.field public zzhwl:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdul;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zzhwk:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzf$zzb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvi;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zzhwl:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhrh:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzduj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zzhwk:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzf$zzb;

    if-eqz v0, :cond_e

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdut$zzb$zzf$zzb;->zzab()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzaa(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvi;->mimeType:Ljava/lang/String;

    if-eqz v0, :cond_16

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzg(ILjava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zzhwl:[B

    if-eqz v0, :cond_1e

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zza(I[B)V

    :cond_1e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdul;->zza(Lcom/google/android/gms/internal/ads/zzduj;)V

    return-void
.end method

.method protected final zznx()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdul;->zznx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zzhwk:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzf$zzb;

    if-eqz v1, :cond_14

    if-eqz v1, :cond_14

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdut$zzb$zzf$zzb;->zzab()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzae(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvi;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzh(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvi;->zzhwl:[B

    if-eqz v1, :cond_30

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzduj;->zzgd(I)I

    move-result v2

    array-length v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzduj;->zzgl(I)I

    move-result v3

    array-length v1, v1

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_30
    return v0
.end method
