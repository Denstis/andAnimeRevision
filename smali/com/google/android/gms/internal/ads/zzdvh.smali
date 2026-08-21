###### Class com.google.android.gms.internal.ads.zzdvh (com.google.android.gms.internal.ads.zzdvh)
.class public final Lcom/google/android/gms/internal/ads/zzdvh;
.super Lcom/google/android/gms/internal/ads/zzdul;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdul<",
        "Lcom/google/android/gms/internal/ads/zzdvh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzhwb:[Lcom/google/android/gms/internal/ads/zzdvh;


# instance fields
.field public url:Ljava/lang/String;

.field public zzhwc:Ljava/lang/Integer;

.field public zzhwd:Lcom/google/android/gms/internal/ads/zzdvg;

.field private zzhwe:Lcom/google/android/gms/internal/ads/zzdvf;

.field private zzhwf:Ljava/lang/Integer;

.field private zzhwg:[I

.field private zzhwh:Ljava/lang/String;

.field public zzhwi:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzh$zza;

.field public zzhwj:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdul;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwc:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwd:Lcom/google/android/gms/internal/ads/zzdvg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwe:Lcom/google/android/gms/internal/ads/zzdvf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwf:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduu;->zzhmz:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwg:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwi:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzh$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduu;->zzhrq:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwj:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhrh:I

    return-void
.end method

.method public static zzbcz()[Lcom/google/android/gms/internal/ads/zzdvh;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwb:[Lcom/google/android/gms/internal/ads/zzdvh;

    if-nez v0, :cond_15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdup;->zzhre:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwb:[Lcom/google/android/gms/internal/ads/zzdvh;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzdvh;

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwb:[Lcom/google/android/gms/internal/ads/zzdvh;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwb:[Lcom/google/android/gms/internal/ads/zzdvh;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzduj;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwc:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzaa(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->url:Ljava/lang/String;

    if-eqz v0, :cond_12

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzg(ILjava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwd:Lcom/google/android/gms/internal/ads/zzdvg;

    if-eqz v0, :cond_1a

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zza(ILcom/google/android/gms/internal/ads/zzdus;)V

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwg:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    array-length v0, v0

    if-lez v0, :cond_31

    const/4 v0, 0x0

    :goto_23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwg:[I

    array-length v3, v2

    if-ge v0, v3, :cond_31

    const/4 v3, 0x6

    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzduj;->zzaa(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwi:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzh$zza;

    if-eqz v0, :cond_40

    if-eqz v0, :cond_40

    const/16 v2, 0x8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdut$zzb$zzh$zza;->zzab()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzaa(II)V

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwj:[Ljava/lang/String;

    if-eqz v0, :cond_58

    array-length v0, v0

    if-lez v0, :cond_58

    :goto_47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwj:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_58

    aget-object v0, v0, v1

    if-eqz v0, :cond_55

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzg(ILjava/lang/String;)V

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_58
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdul;->zza(Lcom/google/android/gms/internal/ads/zzduj;)V

    return-void
.end method

.method protected final zznx()I
    .registers 8

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdul;->zznx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzae(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->url:Ljava/lang/String;

    if-eqz v1, :cond_1a

    const/4 v3, 0x2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzh(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwd:Lcom/google/android/gms/internal/ads/zzdvg;

    if-eqz v1, :cond_24

    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzb(ILcom/google/android/gms/internal/ads/zzdus;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwg:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_42

    array-length v1, v1

    if-lez v1, :cond_42

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_2e
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwg:[I

    array-length v6, v5

    if-ge v1, v6, :cond_3d

    aget v5, v5, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzduj;->zzge(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_3d
    add-int/2addr v0, v4

    array-length v1, v5

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwi:Lcom/google/android/gms/internal/ads/zzdut$zzb$zzh$zza;

    if-eqz v1, :cond_53

    if-eqz v1, :cond_53

    const/16 v4, 0x8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdut$zzb$zzh$zza;->zzab()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzae(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwj:[Ljava/lang/String;

    if-eqz v1, :cond_73

    array-length v1, v1

    if-lez v1, :cond_73

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_5c
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhwj:[Ljava/lang/String;

    array-length v6, v5

    if-ge v3, v6, :cond_6f

    aget-object v5, v5, v3

    if-eqz v5, :cond_6c

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzduj;->zzhj(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_6f
    add-int/2addr v0, v1

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    :cond_73
    return v0
.end method
