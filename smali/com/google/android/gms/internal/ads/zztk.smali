###### Class com.google.android.gms.internal.ads.zztk (com.google.android.gms.internal.ads.zztk)
.class public final Lcom/google/android/gms/internal/ads/zztk;
.super Lcom/google/android/gms/internal/ads/zzdul;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdul<",
        "Lcom/google/android/gms/internal/ads/zztk;",
        ">;"
    }
.end annotation


# instance fields
.field public zzcal:Ljava/lang/Integer;

.field public zzcam:Ljava/lang/Integer;

.field public zzcan:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdul;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzcal:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzcam:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzcan:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhrh:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzduj;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzcal:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzaa(II)V

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzcam:Ljava/lang/Integer;

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzaa(II)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztk;->zzcan:Ljava/lang/Integer;

    if-eqz v0, :cond_24

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzaa(II)V

    :cond_24
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdul;->zza(Lcom/google/android/gms/internal/ads/zzduj;)V

    return-void
.end method

.method protected final zznx()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdul;->zznx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzcal:Ljava/lang/Integer;

    if-eqz v1, :cond_12

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzae(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzcam:Ljava/lang/Integer;

    if-eqz v1, :cond_20

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzae(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztk;->zzcan:Ljava/lang/Integer;

    if-eqz v1, :cond_2e

    const/4 v2, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzae(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    return v0
.end method
