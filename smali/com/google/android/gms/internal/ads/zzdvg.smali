###### Class com.google.android.gms.internal.ads.zzdvg (com.google.android.gms.internal.ads.zzdvg)
.class public final Lcom/google/android/gms/internal/ads/zzdvg;
.super Lcom/google/android/gms/internal/ads/zzdul;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdul<",
        "Lcom/google/android/gms/internal/ads/zzdvg;",
        ">;"
    }
.end annotation


# instance fields
.field private zzhvw:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzd$zzb;

.field public zzhvx:[Lcom/google/android/gms/internal/ads/zzdut$zzb$zzc;

.field private zzhvy:[B

.field private zzhvz:[B

.field private zzhwa:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdul;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhvw:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzd$zzb;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzdut$zzb$zzc;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhvx:[Lcom/google/android/gms/internal/ads/zzdut$zzb$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhvy:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhvz:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhwa:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhrh:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzduj;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhvx:[Lcom/google/android/gms/internal/ads/zzdut$zzb$zzc;

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    const/4 v0, 0x0

    :goto_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhvx:[Lcom/google/android/gms/internal/ads/zzdut$zzb$zzc;

    array-length v2, v1

    if-ge v0, v2, :cond_18

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zze(ILcom/google/android/gms/internal/ads/zzdsg;)V

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdul;->zza(Lcom/google/android/gms/internal/ads/zzduj;)V

    return-void
.end method

.method protected final zznx()I
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdul;->zznx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhvx:[Lcom/google/android/gms/internal/ads/zzdut$zzb$zzc;

    if-eqz v1, :cond_1e

    array-length v1, v1

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    :goto_c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvg;->zzhvx:[Lcom/google/android/gms/internal/ads/zzdut$zzb$zzc;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    aget-object v2, v2, v1

    if-eqz v2, :cond_1b

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdsg;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1e
    return v0
.end method
