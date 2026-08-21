###### Class com.google.android.gms.internal.ads.zztl (com.google.android.gms.internal.ads.zztl)
.class public final Lcom/google/android/gms/internal/ads/zztl;
.super Lcom/google/android/gms/internal/ads/zzdul;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdul<",
        "Lcom/google/android/gms/internal/ads/zztl;",
        ">;"
    }
.end annotation


# instance fields
.field private zzcao:Ljava/lang/Integer;

.field public zzcap:Ljava/lang/String;

.field private zzcaq:Ljava/lang/Integer;

.field private zzcar:Lcom/google/android/gms/internal/ads/zzsv;

.field private zzcas:Lcom/google/android/gms/internal/ads/zztk;

.field public zzcat:[J

.field public zzcau:Lcom/google/android/gms/internal/ads/zztj;

.field private zzcav:Lcom/google/android/gms/internal/ads/zzti;

.field private zzcaw:Lcom/google/android/gms/internal/ads/zzsp$zzh;

.field public zzcax:Lcom/google/android/gms/internal/ads/zzth;

.field public zzcay:Lcom/google/android/gms/internal/ads/zzsp$zzj;

.field public zzcaz:Lcom/google/android/gms/internal/ads/zzsp$zzw;

.field private zzcba:Lcom/google/android/gms/internal/ads/zzsp$zza;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdul;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcao:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcap:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcaq:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcar:Lcom/google/android/gms/internal/ads/zzsv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcas:Lcom/google/android/gms/internal/ads/zztk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduu;->zzhrm:[J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcat:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcau:Lcom/google/android/gms/internal/ads/zztj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcav:Lcom/google/android/gms/internal/ads/zzti;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcaw:Lcom/google/android/gms/internal/ads/zzsp$zzh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcax:Lcom/google/android/gms/internal/ads/zzth;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcay:Lcom/google/android/gms/internal/ads/zzsp$zzj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcaz:Lcom/google/android/gms/internal/ads/zzsp$zzw;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcba:Lcom/google/android/gms/internal/ads/zzsp$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdul;->zzhqy:Lcom/google/android/gms/internal/ads/zzdun;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdus;->zzhrh:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzduj;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcap:Ljava/lang/String;

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzg(ILjava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcat:[J

    if-eqz v0, :cond_24

    array-length v0, v0

    if-lez v0, :cond_24

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcat:[J

    array-length v3, v2

    if-ge v1, v3, :cond_24

    aget-wide v3, v2, v1

    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zzz(II)V

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzduj;->zzfm(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcau:Lcom/google/android/gms/internal/ads/zztj;

    if-eqz v0, :cond_2d

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zza(ILcom/google/android/gms/internal/ads/zzdus;)V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcax:Lcom/google/android/gms/internal/ads/zzth;

    if-eqz v0, :cond_36

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zza(ILcom/google/android/gms/internal/ads/zzdus;)V

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcay:Lcom/google/android/gms/internal/ads/zzsp$zzj;

    if-eqz v0, :cond_3f

    const/16 v1, 0x13

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zze(ILcom/google/android/gms/internal/ads/zzdsg;)V

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcaz:Lcom/google/android/gms/internal/ads/zzsp$zzw;

    if-eqz v0, :cond_48

    const/16 v1, 0x14

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzduj;->zze(ILcom/google/android/gms/internal/ads/zzdsg;)V

    :cond_48
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdul;->zza(Lcom/google/android/gms/internal/ads/zzduj;)V

    return-void
.end method

.method protected final zznx()I
    .registers 13

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdul;->zznx()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcap:Ljava/lang/String;

    const/16 v2, 0xa

    if-eqz v1, :cond_f

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzh(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcat:[J

    if-eqz v1, :cond_88

    array-length v1, v1

    if-lez v1, :cond_88

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_18
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcat:[J

    array-length v5, v4

    const/4 v6, 0x1

    if-ge v1, v5, :cond_83

    aget-wide v7, v4, v1

    const-wide/16 v4, -0x80

    and-long/2addr v4, v7

    const-wide/16 v9, 0x0

    cmp-long v11, v4, v9

    if-nez v11, :cond_2b

    const/4 v4, 0x1

    goto :goto_7f

    :cond_2b
    const-wide/16 v4, -0x4000

    and-long/2addr v4, v7

    cmp-long v6, v4, v9

    if-nez v6, :cond_34

    const/4 v4, 0x2

    goto :goto_7f

    :cond_34
    const-wide/32 v4, -0x200000

    and-long/2addr v4, v7

    cmp-long v6, v4, v9

    if-nez v6, :cond_3e

    const/4 v4, 0x3

    goto :goto_7f

    :cond_3e
    const-wide/32 v4, -0x10000000

    and-long/2addr v4, v7

    cmp-long v6, v4, v9

    if-nez v6, :cond_48

    const/4 v4, 0x4

    goto :goto_7f

    :cond_48
    const-wide v4, -0x800000000L

    and-long/2addr v4, v7

    cmp-long v6, v4, v9

    if-nez v6, :cond_54

    const/4 v4, 0x5

    goto :goto_7f

    :cond_54
    const-wide v4, -0x40000000000L

    and-long/2addr v4, v7

    cmp-long v6, v4, v9

    if-nez v6, :cond_60

    const/4 v4, 0x6

    goto :goto_7f

    :cond_60
    const-wide/high16 v4, -0x2000000000000L

    and-long/2addr v4, v7

    cmp-long v6, v4, v9

    if-nez v6, :cond_69

    const/4 v4, 0x7

    goto :goto_7f

    :cond_69
    const-wide/high16 v4, -0x100000000000000L

    and-long/2addr v4, v7

    cmp-long v6, v4, v9

    if-nez v6, :cond_73

    const/16 v4, 0x8

    goto :goto_7f

    :cond_73
    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v4, v7

    cmp-long v6, v4, v9

    if-nez v6, :cond_7d

    const/16 v4, 0x9

    goto :goto_7f

    :cond_7d
    const/16 v4, 0xa

    :goto_7f
    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_83
    add-int/2addr v0, v3

    array-length v1, v4

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcau:Lcom/google/android/gms/internal/ads/zztj;

    if-eqz v1, :cond_93

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzb(ILcom/google/android/gms/internal/ads/zzdus;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_93
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcax:Lcom/google/android/gms/internal/ads/zzth;

    if-eqz v1, :cond_9e

    const/16 v2, 0x12

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzduj;->zzb(ILcom/google/android/gms/internal/ads/zzdus;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcay:Lcom/google/android/gms/internal/ads/zzsp$zzj;

    if-eqz v1, :cond_a9

    const/16 v2, 0x13

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdsg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztl;->zzcaz:Lcom/google/android/gms/internal/ads/zzsp$zzw;

    if-eqz v1, :cond_b4

    const/16 v2, 0x14

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdsg;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b4
    return v0
.end method
