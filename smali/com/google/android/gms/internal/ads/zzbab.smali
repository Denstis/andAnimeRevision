###### Class com.google.android.gms.internal.ads.zzbab (com.google.android.gms.internal.ads.zzbab)
.class public final Lcom/google/android/gms/internal/ads/zzbab;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzne;


# instance fields
.field private isOpen:Z

.field private uri:Landroid/net/Uri;

.field private zzebw:Ljava/io/InputStream;

.field private final zzebx:Lcom/google/android/gms/internal/ads/zzne;

.field private final zzeby:Lcom/google/android/gms/internal/ads/zzns;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzns<",
            "Lcom/google/android/gms/internal/ads/zzne;",
            ">;"
        }
    .end annotation
.end field

.field private final zzebz:Lcom/google/android/gms/internal/ads/zzbae;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzne;Lcom/google/android/gms/internal/ads/zzns;Lcom/google/android/gms/internal/ads/zzbae;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzne;",
            "Lcom/google/android/gms/internal/ads/zzns<",
            "Lcom/google/android/gms/internal/ads/zzne;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzbae;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzebx:Lcom/google/android/gms/internal/ads/zzne;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzeby:Lcom/google/android/gms/internal/ads/zzns;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzebz:Lcom/google/android/gms/internal/ads/zzbae;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->isOpen:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->isOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzebw:Ljava/io/InputStream;

    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzebw:Ljava/io/InputStream;

    goto :goto_19

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzebx:Lcom/google/android/gms/internal/ads/zzne;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzne;->close()V

    :goto_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzeby:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz v0, :cond_20

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzns;->zze(Ljava/lang/Object;)V

    :cond_20
    return-void

    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempt to close an already closed CacheDataSource."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final read([BII)I
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->isOpen:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzebw:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzebx:Lcom/google/android/gms/internal/ads/zzne;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzne;->read([BII)I

    move-result p1

    :goto_13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbab;->zzeby:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz p2, :cond_1a

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzns;->zzc(Ljava/lang/Object;I)V

    :cond_1a
    return p1

    :cond_1b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Attempt to read closed CacheDataSource."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznf;)J
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "ms"

    const-string v3, "Cache connection took "

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbab;->isOpen:Z

    if-nez v4, :cond_144

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzbab;->isOpen:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzbab;->uri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzeby:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz v5, :cond_1a

    invoke-interface {v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzns;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zznf;)V

    :cond_1a
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzrp;->zze(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzrp;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzza;->zzcps:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_fe

    if-eqz v5, :cond_11c

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    iput-wide v9, v5, Lcom/google/android/gms/internal/ads/zzrp;->zzbro:J

    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzrp;->zzbrn:Z

    if-eqz v6, :cond_41

    sget-object v6, Lcom/google/android/gms/internal/ads/zzza;->zzcpu:Lcom/google/android/gms/internal/ads/zzyp;

    goto :goto_43

    :cond_41
    sget-object v6, Lcom/google/android/gms/internal/ads/zzza;->zzcpt:Lcom/google/android/gms/internal/ads/zzyp;

    :goto_43
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzld()Lcom/google/android/gms/internal/ads/zzse;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzlk:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/zzse;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzrp;)Ljava/util/concurrent/Future;

    move-result-object v6

    const/4 v13, 0x0

    const/16 v14, 0x2c

    :try_start_65
    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v9, v10, v15}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/InputStream;

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzebw:Ljava/io/InputStream;
    :try_end_6f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_65 .. :try_end_6f} :catch_b3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_65 .. :try_end_6f} :catch_b3
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_6f} :catch_95
    .catchall {:try_start_65 .. :try_end_6f} :catchall_93

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v11

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzebz:Lcom/google/android/gms/internal/ads/zzbae;

    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(ZJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    return-wide v7

    :catchall_93
    move-exception v0

    goto :goto_da

    :catch_95
    :try_start_95
    invoke-interface {v6, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_93

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v11

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzebz:Lcom/google/android/gms/internal/ads/zzbae;

    invoke-interface {v4, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(ZJ)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_c9

    :catch_b3
    :try_start_b3
    invoke-interface {v6, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_93

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v11

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzebz:Lcom/google/android/gms/internal/ads/zzbae;

    invoke-interface {v4, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(ZJ)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_c9
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    goto :goto_11c

    :goto_da
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v11

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzebz:Lcom/google/android/gms/internal/ads/zzbae;

    invoke-interface {v6, v13, v4, v5}, Lcom/google/android/gms/internal/ads/zzbae;->zzb(ZJ)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    throw v0

    :cond_fe
    const/4 v2, 0x0

    if-eqz v5, :cond_10d

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzrp;->zzbro:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkp()Lcom/google/android/gms/internal/ads/zzrh;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzrh;->zza(Lcom/google/android/gms/internal/ads/zzrp;)Lcom/google/android/gms/internal/ads/zzro;

    move-result-object v2

    :cond_10d
    if-eqz v2, :cond_11c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzro;->zzmi()Z

    move-result v3

    if-eqz v3, :cond_11c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzro;->zzmj()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzebw:Ljava/io/InputStream;

    return-wide v7

    :cond_11c
    :goto_11c
    if-eqz v5, :cond_13d

    new-instance v2, Lcom/google/android/gms/internal/ads/zznf;

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzrp;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zznf;->zzbek:[B

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zznf;->zzbel:J

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznf;->zzce:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zznf;->flags:I

    move-object v9, v2

    move-wide/from16 v16, v3

    move-object/from16 v18, v5

    move/from16 v19, v0

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/ads/zznf;-><init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V

    move-object v0, v2

    :cond_13d
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbab;->zzebx:Lcom/google/android/gms/internal/ads/zzne;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzne;->zza(Lcom/google/android/gms/internal/ads/zznf;)J

    move-result-wide v2

    return-wide v2

    :cond_144
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Attempt to open an already open CacheDataSource."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
