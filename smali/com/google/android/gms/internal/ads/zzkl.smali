###### Class com.google.android.gms.internal.ads.zzkl (com.google.android.gms.internal.ads.zzkl)
.class public abstract Lcom/google/android/gms/internal/ads/zzkl;
.super Lcom/google/android/gms/internal/ads/zzgb;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final zzaxm:[B


# instance fields
.field private zzafx:Lcom/google/android/gms/internal/ads/zzgo;

.field private zzajd:[Ljava/nio/ByteBuffer;

.field private final zzaxn:Lcom/google/android/gms/internal/ads/zzkn;

.field private final zzaxo:Lcom/google/android/gms/internal/ads/zzis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzis<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxp:Z

.field private final zzaxq:Lcom/google/android/gms/internal/ads/zzik;

.field private final zzaxr:Lcom/google/android/gms/internal/ads/zzik;

.field private final zzaxs:Lcom/google/android/gms/internal/ads/zzgq;

.field private final zzaxt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaxu:Landroid/media/MediaCodec$BufferInfo;

.field private zzaxv:Lcom/google/android/gms/internal/ads/zziq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zziq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxw:Lcom/google/android/gms/internal/ads/zziq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zziq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzaxx:Landroid/media/MediaCodec;

.field private zzaxy:Lcom/google/android/gms/internal/ads/zzkm;

.field private zzaxz:Z

.field private zzaya:Z

.field private zzayb:Z

.field private zzayc:Z

.field private zzayd:Z

.field private zzaye:Z

.field private zzayf:Z

.field private zzayg:Z

.field private zzayh:Z

.field private zzayi:[Ljava/nio/ByteBuffer;

.field private zzayj:J

.field private zzayk:I

.field private zzayl:I

.field private zzaym:Z

.field private zzayn:Z

.field private zzayo:I

.field private zzayp:I

.field private zzayq:Z

.field private zzayr:Z

.field private zzays:Z

.field private zzayt:Z

.field private zzayu:Z

.field private zzayv:Z

.field protected zzayw:Lcom/google/android/gms/internal/ads/zzil;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbj(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxm:[B

    return-void
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzis;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/internal/ads/zzkn;",
            "Lcom/google/android/gms/internal/ads/zzis<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgb;-><init>(I)V

    sget p1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zznr;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzkn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxn:Lcom/google/android/gms/internal/ads/zzkn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxp:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzik;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzik;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzik;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzik;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxr:Lcom/google/android/gms/internal/ads/zzik;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgq;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxs:Lcom/google/android/gms/internal/ads/zzgq;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxt:Ljava/util/List;

    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxu:Landroid/media/MediaCodec$BufferInfo;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayp:I

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzko;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object p1

    throw p1
.end method

.method private final zzd(JJ)Z
    .registers 21

    move-object/from16 v12, p0

    iget v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-gez v0, :cond_e2

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaye:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2a

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayr:Z

    if-eqz v0, :cond_2a

    :try_start_13
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxu:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_34

    :catch_1e
    nop

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgt()V

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayt:Z

    if-eqz v0, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgr()V

    :cond_29
    return v15

    :cond_2a
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget-object v3, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxu:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    :goto_34
    iget v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    if-ltz v0, :cond_94

    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayh:Z

    if-eqz v1, :cond_46

    iput-boolean v15, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayh:Z

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v15}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v13, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    return v14

    :cond_46
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxu:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_54

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgt()V

    iput v13, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    return v15

    :cond_54
    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzajd:[Ljava/nio/ByteBuffer;

    aget-object v0, v2, v0

    if-eqz v0, :cond_69

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxu:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_69
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxu:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v2, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxt:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_74
    if-ge v3, v2, :cond_90

    iget-object v4, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxt:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-nez v6, :cond_8d

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxt:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_91

    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    :cond_90
    const/4 v0, 0x0

    :goto_91
    iput-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaym:Z

    goto :goto_e2

    :cond_94
    const/4 v1, -0x2

    if-ne v0, v1, :cond_c5

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayb:Z

    if-eqz v1, :cond_b6

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_b6

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_b6

    iput-boolean v14, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayh:Z

    goto :goto_c4

    :cond_b6
    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayf:Z

    if-eqz v1, :cond_bf

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_bf
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-virtual {v12, v1, v0}, Lcom/google/android/gms/internal/ads/zzkl;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    :goto_c4
    return v14

    :cond_c5
    const/4 v1, -0x3

    if-ne v0, v1, :cond_d1

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzajd:[Ljava/nio/ByteBuffer;

    return v14

    :cond_d1
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayc:Z

    if-eqz v0, :cond_e1

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzays:Z

    if-nez v0, :cond_de

    iget v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e1

    :cond_de
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgt()V

    :cond_e1
    return v15

    :cond_e2
    :goto_e2
    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaye:Z

    if-eqz v0, :cond_115

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayr:Z

    if-eqz v0, :cond_115

    :try_start_ea
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzajd:[Ljava/nio/ByteBuffer;

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    aget-object v6, v0, v1

    iget v7, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxu:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxu:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaym:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzkl;->zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0
    :try_end_108
    .catch Ljava/lang/IllegalStateException; {:try_start_ea .. :try_end_108} :catch_109

    goto :goto_12f

    :catch_109
    nop

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgt()V

    iget-boolean v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayt:Z

    if-eqz v0, :cond_114

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgr()V

    :cond_114
    return v15

    :cond_115
    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzajd:[Ljava/nio/ByteBuffer;

    iget v7, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    aget-object v6, v0, v7

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxu:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v9, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v11, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaym:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzkl;->zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z

    move-result v0

    :goto_12f
    if-eqz v0, :cond_138

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzaxu:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput v13, v12, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    return v14

    :cond_138
    return v15
.end method

.method private final zzgs()Z
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d6

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayp:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzays:Z

    if-eqz v2, :cond_10

    goto/16 :goto_1d6

    :cond_10
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    if-gez v2, :cond_2c

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    if-gez v0, :cond_21

    return v1

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayi:[Ljava/nio/ByteBuffer;

    aget-object v0, v4, v0

    iput-object v0, v2, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzik;->clear()V

    :cond_2c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayp:I

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_49

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayc:Z

    if-nez v0, :cond_46

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayr:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    :cond_46
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayp:I

    return v1

    :cond_49
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayg:Z

    if-eqz v0, :cond_6b

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayg:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzkl;->zzaxm:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    const/4 v7, 0x0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxm:[B

    array-length v8, v0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayq:Z

    return v4

    :cond_6b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayu:Z

    if-eqz v0, :cond_72

    const/4 v0, -0x4

    const/4 v5, 0x0

    goto :goto_aa

    :cond_72
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    if-ne v0, v4, :cond_97

    const/4 v0, 0x0

    :goto_77
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgo;->zzafe:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_95

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzgo;->zzafe:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    :cond_95
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    :cond_97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxs:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {p0, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzgb;->zza(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;Z)I

    move-result v5

    move v13, v5

    move v5, v0

    move v0, v13

    :goto_aa
    const/4 v6, -0x3

    if-ne v0, v6, :cond_ae

    return v1

    :cond_ae
    const/4 v6, -0x5

    if-ne v0, v6, :cond_c4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    if-ne v0, v3, :cond_bc

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzik;->clear()V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    :cond_bc
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxs:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgq;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzkl;->zzd(Lcom/google/android/gms/internal/ads/zzgo;)V

    return v4

    :cond_c4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzih;->zzfv()Z

    move-result v0

    if-eqz v0, :cond_100

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    if-ne v0, v3, :cond_d7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzik;->clear()V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    :cond_d7
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzays:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayq:Z

    if-nez v0, :cond_e1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgt()V

    return v1

    :cond_e1
    :try_start_e1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayc:Z

    if-nez v0, :cond_f5

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayr:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x4

    invoke-virtual/range {v5 .. v11}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I
    :try_end_f5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e1 .. :try_end_f5} :catch_f6

    :cond_f5
    return v1

    :catch_f6
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v0

    throw v0

    :cond_100
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayv:Z

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzih;->zzfw()Z

    move-result v0

    if-nez v0, :cond_118

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzik;->clear()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    if-ne v0, v3, :cond_117

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    :cond_117
    return v4

    :cond_118
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzik;->zzfx()Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v3, :cond_144

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zziq;->getState()I

    move-result v3

    if-eqz v3, :cond_135

    const/4 v6, 0x4

    if-eq v3, v6, :cond_144

    if-nez v0, :cond_133

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxp:Z

    if-nez v3, :cond_144

    :cond_133
    const/4 v3, 0x1

    goto :goto_145

    :cond_135
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziq;->zzga()Lcom/google/android/gms/internal/ads/zzip;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v0

    throw v0

    :cond_144
    const/4 v3, 0x0

    :goto_145
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayu:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayu:Z

    if-eqz v3, :cond_14c

    return v1

    :cond_14c
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxz:Z

    if-eqz v3, :cond_166

    if-nez v0, :cond_166

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zznx;->zzk(Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-nez v3, :cond_164

    return v4

    :cond_164
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxz:Z

    :cond_166
    :try_start_166
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/zzik;->zzamb:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzih;->zzfu()Z

    move-result v3

    if-eqz v3, :cond_17b

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxt:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17b
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzik;)V

    if-eqz v0, :cond_1ad

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzik;->zzama:Lcom/google/android/gms/internal/ads/zzig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzig;->zzft()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v9

    if-nez v5, :cond_194

    goto :goto_1a3

    :cond_194
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_19c

    new-array v0, v4, [I

    iput-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_19c
    iget-object v0, v9, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    aget v3, v0, v1

    add-int/2addr v3, v5

    aput v3, v0, v1

    :goto_1a3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_1be

    :cond_1ad
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_1be
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayq:Z

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzamf:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzamf:I
    :try_end_1cb
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_166 .. :try_end_1cb} :catch_1cc

    return v4

    :catch_1cc
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v0

    throw v0

    :cond_1d6
    :goto_1d6
    return v1
.end method

.method private final zzgt()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayp:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgr()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgo()V

    return-void

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayt:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzfo()V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayu:Z

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->zzdt()Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    if-gez v0, :cond_27

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayj:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayj:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_29

    :cond_27
    const/4 v0, 0x1

    return v0

    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method protected onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    return-void
.end method

.method protected onStarted()V
    .registers 1

    return-void
.end method

.method protected onStopped()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgo;)I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxn:Lcom/google/android/gms/internal/ads/zzkn;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzgo;)I

    move-result p1
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzkt; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object p1

    throw p1
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzgo;)I
.end method

.method protected zza(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzgo;Z)Lcom/google/android/gms/internal/ads/zzkm;
    .registers 4

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkn;->zzc(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object p1

    return-object p1
.end method

.method protected zza(JZ)V
    .registers 4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzays:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayt:Z

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    if-eqz p2, :cond_4f

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayj:J

    const/4 p2, -0x1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayv:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayu:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaym:Z

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxt:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayg:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayh:Z

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaya:Z

    if-nez p3, :cond_3f

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayd:Z

    if-eqz p3, :cond_32

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayr:Z

    if-eqz p3, :cond_32

    goto :goto_3f

    :cond_32
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayp:I

    if-eqz p3, :cond_37

    goto :goto_3f

    :cond_37
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-virtual {p3}, Landroid/media/MediaCodec;->flush()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayq:Z

    goto :goto_45

    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgr()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgo()V

    :goto_45
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayn:Z

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    if-eqz p1, :cond_4f

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    :cond_4f
    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/ads/zzik;)V
    .registers 2

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzkm;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzgo;Landroid/media/MediaCrypto;)V
.end method

.method protected abstract zza(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;IIJZ)Z
.end method

.method protected zza(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzgo;)Z
    .registers 5

    const/4 p1, 0x0

    return p1
.end method

.method protected zza(Lcom/google/android/gms/internal/ads/zzkm;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(JJ)V
    .registers 10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayt:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzfo()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    const/4 v1, -0x4

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxr:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzik;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxs:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxr:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {p0, v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzgb;->zza(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;Z)I

    move-result v0

    if-ne v0, v2, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxs:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzgq;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzkl;->zzd(Lcom/google/android/gms/internal/ads/zzgo;)V

    goto :goto_37

    :cond_26
    if-ne v0, v1, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxr:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzih;->zzfv()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzays:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgt()V

    :cond_36
    return-void

    :cond_37
    :goto_37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgo()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    if-eqz v0, :cond_53

    const-string v0, "drainAndFeed"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzog;->beginSection(Ljava/lang/String;)V

    :cond_43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzkl;->zzd(JJ)Z

    move-result v0

    if-nez v0, :cond_43

    :cond_49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgs()Z

    move-result p1

    if-nez p1, :cond_49

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    goto :goto_7e

    :cond_53
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgb;->zzdj(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxr:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzik;->clear()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxs:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxr:Lcom/google/android/gms/internal/ads/zzik;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgb;->zza(Lcom/google/android/gms/internal/ads/zzgq;Lcom/google/android/gms/internal/ads/zzik;Z)I

    move-result p1

    if-ne p1, v2, :cond_6e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxs:Lcom/google/android/gms/internal/ads/zzgq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgq;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkl;->zzd(Lcom/google/android/gms/internal/ads/zzgo;)V

    goto :goto_7e

    :cond_6e
    if-ne p1, v1, :cond_7e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxr:Lcom/google/android/gms/internal/ads/zzik;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzih;->zzfv()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzays:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgt()V

    :cond_7e
    :goto_7e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzil;->zzfy()V

    return-void
.end method

.method protected zzc(Ljava/lang/String;JJ)V
    .registers 6

    return-void
.end method

.method protected zzd(Lcom/google/android/gms/internal/ads/zzgo;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzaff:Lcom/google/android/gms/internal/ads/zzin;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    move-object v2, v1

    goto :goto_f

    :cond_d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgo;->zzaff:Lcom/google/android/gms/internal/ads/zzin;

    :goto_f
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzof;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgo;->zzaff:Lcom/google/android/gms/internal/ads/zzin;

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    if-eqz p1, :cond_3b

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzgo;->zzaff:Lcom/google/android/gms/internal/ads/zzin;

    invoke-interface {p1, v1, v3}, Lcom/google/android/gms/internal/ads/zzis;->zza(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzin;)Lcom/google/android/gms/internal/ads/zziq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-ne p1, v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V

    goto :goto_4d

    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Media requires a DrmSessionManager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getIndex()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object p1

    throw p1

    :cond_4b
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-ne p1, v1, :cond_7e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    if-eqz p1, :cond_7e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxy:Lcom/google/android/gms/internal/ads/zzkm;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzkm;->zzayx:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-virtual {p0, p1, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Landroid/media/MediaCodec;ZLcom/google/android/gms/internal/ads/zzgo;Lcom/google/android/gms/internal/ads/zzgo;)Z

    move-result p1

    if-eqz p1, :cond_7e

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayn:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayb:Z

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    if-ne v1, v3, :cond_7a

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    if-ne p1, v0, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v2, 0x0

    :goto_7b
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayg:Z

    return-void

    :cond_7e
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayq:Z

    if-eqz p1, :cond_85

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayp:I

    return-void

    :cond_85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgr()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgo()V

    return-void
.end method

.method protected zzd(Z)V
    .registers 2

    new-instance p1, Lcom/google/android/gms/internal/ads/zzil;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzil;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    return-void
.end method

.method public final zzdq()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method protected zzdr()V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgr()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4a

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_2d

    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eq v1, v2, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_27

    :cond_22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    return-void

    :catchall_27
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    throw v1

    :catchall_2d
    move-exception v1

    :try_start_2e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eq v2, v3, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_44

    :cond_3f
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    throw v1

    :catchall_44
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    throw v1

    :catchall_4a
    move-exception v1

    :try_start_4b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_72

    :cond_56
    :try_start_56
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eq v2, v3, :cond_67

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_6c

    :cond_67
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    throw v1

    :catchall_6c
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    throw v1

    :catchall_72
    move-exception v1

    :try_start_73
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eq v2, v3, :cond_84

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V
    :try_end_84
    .catchall {:try_start_73 .. :try_end_84} :catchall_89

    :cond_84
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    throw v1

    :catchall_89
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    throw v1
.end method

.method public zzeo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayt:Z

    return v0
.end method

.method protected zzfo()V
    .registers 1

    return-void
.end method

.method protected final zzgo()V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    if-nez v0, :cond_21b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    if-nez v0, :cond_a

    goto/16 :goto_21b

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zziq;->getState()I

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziq;->zzfz()Lcom/google/android/gms/internal/ads/zzir;

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zziq;->zzga()Lcom/google/android/gms/internal/ads/zzip;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgd;->zza(Ljava/lang/Exception;I)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v0

    throw v0

    :cond_3b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxy:Lcom/google/android/gms/internal/ads/zzkm;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_6b

    :try_start_41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxn:Lcom/google/android/gms/internal/ads/zzkn;

    invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzkn;Lcom/google/android/gms/internal/ads/zzgo;Z)Lcom/google/android/gms/internal/ads/zzkm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxy:Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxy:Lcom/google/android/gms/internal/ads/zzkm;
    :try_end_4b
    .catch Lcom/google/android/gms/internal/ads/zzkt; {:try_start_41 .. :try_end_4b} :catch_4c

    goto :goto_5a

    :catch_4c
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzko;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    const v5, -0xc34e

    invoke-direct {v1, v4, v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzko;-><init>(Lcom/google/android/gms/internal/ads/zzgo;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzko;)V

    :goto_5a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxy:Lcom/google/android/gms/internal/ads/zzkm;

    if-nez v0, :cond_6b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzko;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    const v4, -0xc34f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzko;-><init>(Lcom/google/android/gms/internal/ads/zzgo;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzko;)V

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxy:Lcom/google/android/gms/internal/ads/zzkm;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzkm;)Z

    move-result v0

    if-nez v0, :cond_74

    return-void

    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxy:Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzkm;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    sget v4, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v5, 0x15

    const/4 v10, 0x1

    if-ge v4, v5, :cond_93

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzgo;->zzafe:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_93

    const-string v1, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    const/4 v1, 0x1

    goto :goto_94

    :cond_93
    const/4 v1, 0x0

    :goto_94
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxz:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v4, 0x13

    const/16 v6, 0x12

    if-lt v1, v6, :cond_d1

    if-ne v1, v6, :cond_b0

    const-string v1, "OMX.SEC.avc.dec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d1

    const-string v1, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d1

    :cond_b0
    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-ne v1, v4, :cond_cf

    sget-object v1, Lcom/google/android/gms/internal/ads/zzof;->MODEL:Ljava/lang/String;

    const-string v7, "SM-G800"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cf

    const-string v1, "OMX.Exynos.avc.dec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d1

    const-string v1, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    goto :goto_d1

    :cond_cf
    const/4 v1, 0x0

    goto :goto_d2

    :cond_d1
    :goto_d1
    const/4 v1, 0x1

    :goto_d2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaya:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v7, 0x18

    if-ge v1, v7, :cond_114

    const-string v1, "OMX.Nvidia.h264.decode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea

    const-string v1, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    :cond_ea
    sget-object v1, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v7, "flounder"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_112

    sget-object v1, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v7, "flounder_lte"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_112

    sget-object v1, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v7, "grouper"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_112

    sget-object v1, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v7, "tilapia"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    :cond_112
    const/4 v1, 0x1

    goto :goto_115

    :cond_114
    const/4 v1, 0x0

    :goto_115
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayb:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v7, 0x11

    if-gt v1, v7, :cond_12f

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12d

    const-string v1, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12f

    :cond_12d
    const/4 v1, 0x1

    goto :goto_130

    :cond_12f
    const/4 v1, 0x0

    :goto_130
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayc:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v7, 0x17

    if-gt v1, v7, :cond_140

    const-string v1, "OMX.google.vorbis.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15e

    :cond_140
    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-gt v1, v4, :cond_160

    sget-object v1, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v4, "hb2000"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    const-string v1, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15e

    const-string v1, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_160

    :cond_15e
    const/4 v1, 0x1

    goto :goto_161

    :cond_160
    const/4 v1, 0x0

    :goto_161
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayd:Z

    sget v1, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-ne v1, v5, :cond_171

    const-string v1, "OMX.google.aac.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_171

    const/4 v1, 0x1

    goto :goto_172

    :cond_171
    const/4 v1, 0x0

    :goto_172
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaye:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    sget v4, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-gt v4, v6, :cond_188

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgo;->zzafm:I

    if-ne v1, v10, :cond_188

    const-string v1, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_188

    const/4 v1, 0x1

    goto :goto_189

    :cond_188
    const/4 v1, 0x0

    :goto_189
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayf:Z

    :try_start_18b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-string v1, "createCodec:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1a0

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1a6

    :cond_1a0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    :goto_1a6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzog;->beginSection(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    const-string v1, "configureCodec"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzog;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxy:Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-virtual {p0, v1, v6, v7, v2}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzkm;Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzgo;Landroid/media/MediaCrypto;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    const-string v1, "startCodec"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzog;->beginSection(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v4

    move-object v4, p0

    move-object v5, v0

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzkl;->zzc(Ljava/lang/String;JJ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayi:[Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzajd:[Ljava/nio/ByteBuffer;
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1eb} :catch_1ec

    goto :goto_1f7

    :catch_1ec
    move-exception v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzko;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    invoke-direct {v2, v4, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzko;-><init>(Lcom/google/android/gms/internal/ads/zzgo;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzko;)V

    :goto_1f7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgb;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_206

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    goto :goto_20b

    :cond_206
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_20b
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayj:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayv:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzamd:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzil;->zzamd:I

    :cond_21b
    :goto_21b
    return-void
.end method

.method protected final zzgp()Landroid/media/MediaCodec;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    return-object v0
.end method

.method protected final zzgq()Lcom/google/android/gms/internal/ads/zzkm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxy:Lcom/google/android/gms/internal/ads/zzkm;

    return-object v0
.end method

.method protected zzgr()V
    .registers 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayj:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayk:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayl:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayu:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaym:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayi:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzajd:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxy:Lcom/google/android/gms/internal/ads/zzkm;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayn:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayq:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaya:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayr:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayp:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxq:Lcom/google/android/gms/internal/ads/zzik;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzik;->zzcq:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    if-eqz v0, :cond_b3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzayw:Lcom/google/android/gms/internal/ads/zzil;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzil;->zzame:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/gms/internal/ads/zzil;->zzame:I

    :try_start_47
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_7e

    :try_start_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_66

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v0, :cond_65

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    if-eq v2, v0, :cond_65

    :try_start_59
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_61

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    return-void

    :catchall_61
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    throw v0

    :cond_65
    return-void

    :catchall_66
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v2, :cond_7d

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    if-eq v3, v2, :cond_7d

    :try_start_71
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_79

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    goto :goto_7d

    :catchall_79
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    throw v0

    :cond_7d
    :goto_7d
    throw v0

    :catchall_7e
    move-exception v0

    :try_start_7f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_9b

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v2, :cond_9a

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    if-eq v3, v2, :cond_9a

    :try_start_8e
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_96

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    goto :goto_9a

    :catchall_96
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    throw v0

    :cond_9a
    :goto_9a
    throw v0

    :catchall_9b
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxx:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    if-eqz v2, :cond_b2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxw:Lcom/google/android/gms/internal/ads/zziq;

    if-eq v3, v2, :cond_b2

    :try_start_a6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxo:Lcom/google/android/gms/internal/ads/zzis;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzis;->zza(Lcom/google/android/gms/internal/ads/zziq;)V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_ae

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    goto :goto_b2

    :catchall_ae
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaxv:Lcom/google/android/gms/internal/ads/zziq;

    throw v0

    :cond_b2
    :goto_b2
    throw v0

    :cond_b3
    return-void
.end method
