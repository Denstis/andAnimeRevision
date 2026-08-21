###### Class com.google.android.gms.internal.ads.zznf (com.google.android.gms.internal.ads.zznf)
.class public final Lcom/google/android/gms/internal/ads/zznf;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final flags:I

.field public final uri:Landroid/net/Uri;

.field public final zzamq:J

.field public final zzbek:[B

.field public final zzbel:J

.field public final zzcb:J

.field public final zzce:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Landroid/net/Uri;I)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;I)V
    .registers 11

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;JJJLjava/lang/String;I)V
    .registers 21

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .registers 17

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;JJLjava/lang/String;I)V
    .registers 18

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-ltz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_e

    :cond_d
    const/4 v4, 0x0

    :goto_e
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    cmp-long v4, p5, v2

    if-ltz v4, :cond_17

    const/4 v4, 0x1

    goto :goto_18

    :cond_17
    const/4 v4, 0x0

    :goto_18
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    cmp-long v4, p7, v2

    if-gtz v4, :cond_27

    const-wide/16 v2, -0x1

    cmp-long v4, p7, v2

    if-nez v4, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :cond_27
    :goto_27
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznf;->zzbek:[B

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zznf;->zzbel:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zznf;->zzce:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/internal/ads/zznf;->flags:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznf;->zzbek:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zznf;->zzbel:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zznf;->zzce:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/gms/internal/ads/zznf;->flags:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x5d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "DataSpec["

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzaz(I)Z
    .registers 3

    iget p1, p0, Lcom/google/android/gms/internal/ads/zznf;->flags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_7

    return v0

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
