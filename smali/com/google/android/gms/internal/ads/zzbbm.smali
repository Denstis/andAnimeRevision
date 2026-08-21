###### Class com.google.android.gms.internal.ads.zzbbm (com.google.android.gms.internal.ads.zzbbm)
.class public final Lcom/google/android/gms/internal/ads/zzbbm;
.super Lcom/google/android/gms/internal/ads/zzbax;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbao;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# instance fields
.field private zzdym:Ljava/lang/String;

.field private zzedu:Z

.field private zzeed:Lcom/google/android/gms/internal/ads/zzbag;

.field private zzeee:Ljava/lang/Exception;

.field private zzeef:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazj;Lcom/google/android/gms/internal/ads/zzazk;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbax;-><init>(Lcom/google/android/gms/internal/ads/zzazj;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzazj;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbag;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbag;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbag;->zza(Lcom/google/android/gms/internal/ads/zzbao;)V

    return-void
.end method

.method private static zzb(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzfg(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzedu:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbbm;->release()V

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_2d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzdym:Ljava/lang/String;

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zzfe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeee:Ljava/lang/Exception;

    if-eqz v1, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzdym:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbbm;->zzb(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "badUrl"

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzdym:Ljava/lang/String;

    const-string v1, "externalAbort"

    const-string v2, "Programmatic precache abort."

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void

    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p1
.end method


# virtual methods
.method public final abort()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zzfg(Ljava/lang/String;)V

    return-void
.end method

.method public final release()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbag;->zza(Lcom/google/android/gms/internal/ads/zzbao;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbag;->release()V

    :cond_d
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbax;->release()V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzchd:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_30

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "all"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    return-void

    :cond_21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    :cond_30
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeee:Ljava/lang/Exception;

    const-string v0, "Precache error"

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbm;->zzfg(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(ZJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzedf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazj;

    if-eqz v0, :cond_14

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwm:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbbl;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbbl;-><init>(Lcom/google/android/gms/internal/ads/zzazj;ZJ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public final zzcs(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbag;->zzyr()Lcom/google/android/gms/internal/ads/zzbad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzcz(I)V

    return-void
.end method

.method public final zzct(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbag;->zzyr()Lcom/google/android/gms/internal/ads/zzbad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzda(I)V

    return-void
.end method

.method public final zzcu(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbag;->zzyr()Lcom/google/android/gms/internal/ads/zzbad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzcu(I)V

    return-void
.end method

.method public final zzcv(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbag;->zzyr()Lcom/google/android/gms/internal/ads/zzbad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbad;->zzcv(I)V

    return-void
.end method

.method public final zzcx(I)V
    .registers 2

    return-void
.end method

.method public final zze(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 36

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v0, p2

    iput-object v12, v11, Lcom/google/android/gms/internal/ads/zzbbm;->zzdym:Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbbm;->zzfe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "error"

    :try_start_e
    array-length v1, v0

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_12
    array-length v3, v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_163

    if-ge v2, v3, :cond_23

    :try_start_15
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1d} :catch_20

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :catch_20
    move-exception v0

    goto/16 :goto_166

    :cond_23
    :try_start_23
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzbax;->zzdvd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbag;->zza([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbax;->zzedf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazj;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_32} :catch_163

    if-eqz v0, :cond_37

    :try_start_34
    invoke-interface {v0, v13, v11}, Lcom/google/android/gms/internal/ads/zzazj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbax;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_20

    :cond_37
    :try_start_37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v16

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzchk:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzchj:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v6, v1, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzchi:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v1, -0x1

    :goto_76
    monitor-enter p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_77} :catch_163

    :try_start_77
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    cmp-long v3, v18, v6

    if-gtz v3, :cond_12f

    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzbbm;->zzedu:Z
    :try_end_83
    .catchall {:try_start_77 .. :try_end_83} :catchall_15c

    if-eqz v3, :cond_98

    :try_start_85
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbbm;->zzeee:Ljava/lang/Exception;

    if-eqz v0, :cond_8e

    const-string v1, "badUrl"
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_161

    :try_start_8b
    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzbbm;->zzeee:Ljava/lang/Exception;

    throw v0
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_155

    :cond_8e
    :try_start_8e
    const-string v1, "externalAbort"
    :try_end_90
    .catchall {:try_start_8e .. :try_end_90} :catchall_161

    :try_start_90
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Abort requested before buffering finished. "

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_155

    :cond_98
    :try_start_98
    iget-boolean v3, v11, Lcom/google/android/gms/internal/ads/zzbbm;->zzeef:Z
    :try_end_9a
    .catchall {:try_start_98 .. :try_end_9a} :catchall_15c

    const/16 v18, 0x1

    if-eqz v3, :cond_a1

    :try_start_9e
    monitor-exit p0
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_161

    goto/16 :goto_102

    :cond_a1
    :try_start_a1
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbag;->zzyo()Lcom/google/android/gms/internal/ads/zzgc;

    move-result-object v3
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_15c

    move-object/from16 v20, v14

    if-eqz v3, :cond_125

    :try_start_ab
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzgc;->getDuration()J

    move-result-wide v14

    const-wide/16 v21, 0x0

    cmp-long v8, v14, v21

    if-lez v8, :cond_107

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzgc;->getBufferedPosition()J

    move-result-wide v23

    cmp-long v3, v23, v1

    if-eqz v3, :cond_e4

    cmp-long v1, v23, v21

    if-lez v1, :cond_c3

    const/4 v8, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v8, 0x0

    :goto_c4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbag;->zzyp()I

    move-result v25

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbag;->zzyq()I

    move-result v26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v27, v4

    move-wide/from16 v4, v23

    move-wide/from16 v29, v6

    move-wide v6, v14

    move-wide/from16 v31, v9

    move/from16 v9, v25

    move/from16 v10, v26

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Ljava/lang/String;Ljava/lang/String;JJZII)V

    move-wide/from16 v1, v23

    goto :goto_ea

    :cond_e4
    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-wide/from16 v31, v9

    :goto_ea
    cmp-long v3, v23, v14

    if-ltz v3, :cond_f3

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzbax;->zzb(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_f1
    monitor-exit p0

    goto :goto_102

    :cond_f3
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbag;->getBytesTransferred()J

    move-result-wide v3
    :try_end_f9
    .catchall {:try_start_ab .. :try_end_f9} :catchall_158

    cmp-long v5, v3, v27

    if-ltz v5, :cond_103

    cmp-long v3, v23, v21

    if-lez v3, :cond_103

    goto :goto_f1

    :goto_102
    return v18

    :cond_103
    move-wide v3, v1

    move-wide/from16 v1, v31

    goto :goto_10d

    :cond_107
    move-wide/from16 v27, v4

    move-wide/from16 v29, v6

    move-wide v3, v1

    move-wide v1, v9

    :goto_10d
    :try_start_10d
    invoke-virtual {v11, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_110
    .catch Ljava/lang/InterruptedException; {:try_start_10d .. :try_end_110} :catch_11b
    .catchall {:try_start_10d .. :try_end_110} :catchall_158

    :try_start_110
    monitor-exit p0

    move-wide v9, v1

    move-wide v1, v3

    move-object/from16 v14, v20

    move-wide/from16 v4, v27

    move-wide/from16 v6, v29

    goto/16 :goto_76

    :catch_11b
    const-string v1, "interrupted"
    :try_end_11d
    .catchall {:try_start_110 .. :try_end_11d} :catchall_158

    :try_start_11d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wait interrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_125
    .catchall {:try_start_11d .. :try_end_125} :catchall_155

    :cond_125
    :try_start_125
    const-string v1, "exoPlayerReleased"
    :try_end_127
    .catchall {:try_start_125 .. :try_end_127} :catchall_158

    :try_start_127
    new-instance v0, Ljava/io/IOException;

    const-string v2, "ExoPlayer was released during preloading."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12f
    .catchall {:try_start_127 .. :try_end_12f} :catchall_155

    :cond_12f
    move-wide/from16 v29, v6

    move-object/from16 v20, v14

    :try_start_133
    const-string v1, "downloadTimeout"
    :try_end_135
    .catchall {:try_start_133 .. :try_end_135} :catchall_158

    :try_start_135
    new-instance v0, Ljava/io/IOException;

    const/16 v2, 0x2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Timeout reached. Limit: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v29

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_155
    .catchall {:try_start_135 .. :try_end_155} :catchall_155

    :catchall_155
    move-exception v0

    move-object v14, v1

    goto :goto_15f

    :catchall_158
    move-exception v0

    move-object/from16 v14, v20

    goto :goto_15f

    :catchall_15c
    move-exception v0

    move-object/from16 v20, v14

    :goto_15f
    :try_start_15f
    monitor-exit p0
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_161

    :try_start_160
    throw v0
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_161} :catch_20

    :catchall_161
    move-exception v0

    goto :goto_15f

    :catch_163
    move-exception v0

    move-object/from16 v20, v14

    :goto_166
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to preload url "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Exception: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbm;->release()V

    invoke-static {v14, v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zzb(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v12, v13, v14, v0}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method

.method public final zzfd(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbbm;->zze(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
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

.method public final zzm(II)V
    .registers 3

    return-void
.end method

.method public final zzyu()Lcom/google/android/gms/internal/ads/zzbag;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeef:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbag;->zza(Lcom/google/android/gms/internal/ads/zzbao;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbm;->zzeed:Lcom/google/android/gms/internal/ads/zzbag;

    return-object v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzbbl (com.google.android.gms.internal.ads.zzbbl)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbbl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdyt:Z

.field private final zzebv:J

.field private final zzeec:Lcom/google/android/gms/internal/ads/zzazj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazj;ZJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeec:Lcom/google/android/gms/internal/ads/zzazj;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzdyt:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzebv:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzeec:Lcom/google/android/gms/internal/ads/zzazj;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzdyt:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzbbl;->zzebv:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzazj;->zza(ZJ)V

    return-void
.end method
