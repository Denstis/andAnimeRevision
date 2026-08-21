###### Class com.google.android.gms.internal.ads.zzbbj (com.google.android.gms.internal.ads.zzbbj)
.class public final Lcom/google/android/gms/internal/ads/zzbbj;
.super Lcom/google/android/gms/internal/ads/zzbax;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbax;",
        "Lcom/google/android/gms/internal/ads/zzns<",
        "Lcom/google/android/gms/internal/ads/zzne;",
        ">;"
    }
.end annotation


# instance fields
.field private url:Ljava/lang/String;

.field private zzakm:Ljava/nio/ByteBuffer;

.field private final zzebk:Lcom/google/android/gms/internal/ads/zzazk;

.field private zzedu:Z

.field private final zzedv:Lcom/google/android/gms/internal/ads/zzbbk;

.field private final zzedw:Lcom/google/android/gms/internal/ads/zzbap;

.field private zzedx:Z

.field private final zzedy:Ljava/lang/Object;

.field private zzedz:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazj;Lcom/google/android/gms/internal/ads/zzazk;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbax;-><init>(Lcom/google/android/gms/internal/ads/zzazj;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedv:Lcom/google/android/gms/internal/ads/zzbbk;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbap;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedw:Lcom/google/android/gms/internal/ads/zzbap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedy:Ljava/lang/Object;

    return-void
.end method

.method private final zzxd()V
    .registers 15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedv:Lcom/google/android/gms/internal/ads/zzbbk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbk;->zzyt()J

    move-result-wide v0

    long-to-int v6, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedw:Lcom/google/android/gms/internal/ads/zzbap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzl(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    int-to-float v0, v1

    int-to-float v2, v5

    int-to-float v3, v6

    div-float/2addr v2, v3

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lez v0, :cond_25

    const/4 v2, 0x1

    const/4 v11, 0x1

    goto :goto_27

    :cond_25
    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbag;->zzyp()I

    move-result v12

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbag;->zzyq()I

    move-result v13

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbbj;->url:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzbbj;->zzfe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    int-to-long v7, v0

    int-to-long v9, v1

    move-object v2, p0

    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    return-void
.end method


# virtual methods
.method public final abort()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedu:Z

    return-void
.end method

.method public final getByteBuffer()Ljava/nio/ByteBuffer;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedy:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedx:Z

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedx:Z

    :cond_13
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedu:Z

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;

    return-object v0

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbj;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zznf;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzne;

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zznh;

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedv:Lcom/google/android/gms/internal/ads/zzbbk;

    check-cast p1, Lcom/google/android/gms/internal/ads/zznh;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbk;->zza(Lcom/google/android/gms/internal/ads/zznh;)V

    :cond_d
    return-void
.end method

.method public final bridge synthetic zzc(Ljava/lang/Object;I)V
    .registers 3

    return-void
.end method

.method public final bridge synthetic zze(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final zzfd(Ljava/lang/String;)Z
    .registers 23

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iput-object v10, v9, Lcom/google/android/gms/internal/ads/zzbbj;->url:Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbbj;->zzfe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "error"

    const/4 v13, 0x0

    :try_start_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zznh;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzbax;->zzdvd:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzazk;->zzeal:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzazk;->zzean:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    move-object/from16 v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zznh;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoe;Lcom/google/android/gms/internal/ads/zzns;IIZLcom/google/android/gms/internal/ads/zznm;)V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzazk;->zzear:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_26} :catch_13c

    if-eqz v1, :cond_35

    :try_start_28
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbab;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzbax;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/google/android/gms/internal/ads/zzbab;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzne;Lcom/google/android/gms/internal/ads/zzns;Lcom/google/android/gms/internal/ads/zzbae;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_32

    move-object v0, v1

    goto :goto_35

    :catch_32
    move-exception v0

    goto/16 :goto_13f

    :cond_35
    :goto_35
    :try_start_35
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zznf;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzne;->zza(Lcom/google/android/gms/internal/ads/zznf;)J

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbax;->zzedf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzazj;
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_49} :catch_13c

    if-eqz v1, :cond_4e

    :try_start_4b
    invoke-interface {v1, v11, v9}, Lcom/google/android/gms/internal/ads/zzazj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbax;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_32

    :cond_4e
    :try_start_4e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzza;->zzchk:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gms/internal/ads/zzza;->zzchj:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzebk:Lcom/google/android/gms/internal/ads/zzazk;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzazk;->zzeak:I

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;

    const/16 v8, 0x2000

    new-array v15, v8, [B

    move-wide/from16 v16, v2

    :goto_86
    iget-object v14, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-interface {v0, v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzne;->read([BII)I

    move-result v14
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_94} :catch_13c

    const/4 v8, -0x1

    if-ne v14, v8, :cond_a9

    const/4 v8, 0x1

    :try_start_98
    iput-boolean v8, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzedz:Z

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzedw:Lcom/google/android/gms/internal/ads/zzbap;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbap;->zzl(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-long v0, v1

    invoke-virtual {v9, v10, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzbax;->zzb(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a7} :catch_32

    :goto_a7
    const/4 v1, 0x1

    goto :goto_c8

    :cond_a9
    :try_start_a9
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzedy:Ljava/lang/Object;

    monitor-enter v8
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_13c

    :try_start_ac
    iget-boolean v13, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzedu:Z

    if-nez v13, :cond_b9

    iget-object v13, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_131

    move-object/from16 v18, v12

    const/4 v12, 0x0

    :try_start_b5
    invoke-virtual {v13, v15, v12, v14}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_bb

    :cond_b9
    move-object/from16 v18, v12

    :goto_bb
    monitor-exit v8
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_13a

    :try_start_bc
    iget-object v8, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gtz v8, :cond_c9

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbj;->zzxd()V

    goto :goto_a7

    :goto_c8
    return v1

    :cond_c9
    iget-boolean v8, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzedu:Z

    if-nez v8, :cond_10b

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v12

    sub-long v19, v12, v16

    cmp-long v8, v19, v4

    if-ltz v8, :cond_dc

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbj;->zzxd()V

    move-wide/from16 v16, v12

    :cond_dc
    sub-long/2addr v12, v2

    const-wide/16 v19, 0x3e8

    mul-long v19, v19, v6

    cmp-long v8, v12, v19

    if-gtz v8, :cond_eb

    move-object/from16 v12, v18

    const/16 v8, 0x2000

    const/4 v13, 0x0

    goto :goto_86

    :cond_eb
    const-string v12, "downloadTimeout"
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_ed} :catch_136

    const/16 v0, 0x31

    :try_start_ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Timeout exceeded. Limit: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " sec"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_10b} :catch_32

    :cond_10b
    :try_start_10b
    const-string v12, "externalAbort"
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_10d} :catch_136

    :try_start_10d
    new-instance v0, Ljava/io/IOException;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzbbj;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v2, 0x23

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Precache abort at "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_131} :catch_32

    :catchall_131
    move-exception v0

    move-object/from16 v18, v12

    :goto_134
    :try_start_134
    monitor-exit v8
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_13a

    :try_start_135
    throw v0
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_136} :catch_136

    :catch_136
    move-exception v0

    move-object/from16 v12, v18

    goto :goto_13f

    :catchall_13a
    move-exception v0

    goto :goto_134

    :catch_13c
    move-exception v0

    move-object/from16 v18, v12

    :goto_13f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to preload url "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Exception: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11, v12, v0}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method protected final zzfe(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbax;->zzfe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "cache:"

    if-eqz v0, :cond_15

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final zzys()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbj;->zzedz:Z

    return v0
.end method
