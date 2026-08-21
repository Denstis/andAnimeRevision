###### Class com.google.android.gms.internal.ads.zznn (com.google.android.gms.internal.ads.zznn)
.class final Lcom/google/android/gms/internal/ads/zznn;
.super Landroid/os/Handler;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/ads/zznq;",
        ">",
        "Landroid/os/Handler;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private volatile zzaei:Z

.field private final zzbfr:Lcom/google/android/gms/internal/ads/zznq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzbfs:Lcom/google/android/gms/internal/ads/zzno;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzno<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final zzbft:I

.field private final zzbfu:J

.field private zzbfv:Ljava/io/IOException;

.field private zzbfw:I

.field private volatile zzbfx:Ljava/lang/Thread;

.field private final synthetic zzbfy:Lcom/google/android/gms/internal/ads/zznl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zznl;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zznq;Lcom/google/android/gms/internal/ads/zzno;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "TT;",
            "Lcom/google/android/gms/internal/ads/zzno<",
            "TT;>;IJ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfy:Lcom/google/android/gms/internal/ads/zznl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfs:Lcom/google/android/gms/internal/ads/zzno;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbft:I

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfu:J

    return-void
.end method

.method private final execute()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfv:Ljava/io/IOException;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfy:Lcom/google/android/gms/internal/ads/zznl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznl;->zzb(Lcom/google/android/gms/internal/ads/zznl;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfy:Lcom/google/android/gms/internal/ads/zznl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznl;->zza(Lcom/google/android/gms/internal/ads/zznl;)Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final finish()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfy:Lcom/google/android/gms/internal/ads/zznl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zznl;->zza(Lcom/google/android/gms/internal/ads/zznl;Lcom/google/android/gms/internal/ads/zznn;)Lcom/google/android/gms/internal/ads/zznn;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzaei:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznn;->execute()V

    return-void

    :cond_d
    const/4 v1, 0x4

    if-eq v0, v1, :cond_7e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznn;->finish()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfu:J

    sub-long v6, v4, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznq;->zzhj()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfs:Lcom/google/android/gms/internal/ads/zzno;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzno;->zza(Lcom/google/android/gms/internal/ads/zznq;JJZ)V

    return-void

    :cond_2c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_75

    const/4 v9, 0x2

    if-eq v0, v9, :cond_6d

    const/4 v10, 0x3

    if-eq v0, v10, :cond_38

    goto :goto_6c

    :cond_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/io/IOException;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfv:Ljava/io/IOException;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfs:Lcom/google/android/gms/internal/ads/zzno;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfv:Ljava/io/IOException;

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzno;->zza(Lcom/google/android/gms/internal/ads/zznq;JJLjava/io/IOException;)I

    move-result p1

    if-ne p1, v10, :cond_52

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfy:Lcom/google/android/gms/internal/ads/zznl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfv:Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zznl;->zza(Lcom/google/android/gms/internal/ads/zznl;Ljava/io/IOException;)Ljava/io/IOException;

    return-void

    :cond_52
    if-eq p1, v9, :cond_6c

    if-ne p1, v1, :cond_58

    const/4 p1, 0x1

    goto :goto_5b

    :cond_58
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfw:I

    add-int/2addr p1, v1

    :goto_5b
    iput p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfw:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfw:I

    sub-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zznn;->zzee(J)V

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfs:Lcom/google/android/gms/internal/ads/zzno;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzno;->zza(Lcom/google/android/gms/internal/ads/zznq;JJ)V

    return-void

    :cond_75
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfs:Lcom/google/android/gms/internal/ads/zzno;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzno;->zza(Lcom/google/android/gms/internal/ads/zznq;JJZ)V

    return-void

    :cond_7e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Error;

    throw p1
.end method

.method public final run()V
    .registers 7

    const-string v0, "LoadTask"

    const/4 v1, 0x2

    const/4 v2, 0x3

    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfx:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zznq;->zzhj()Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "load:"

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2d

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_33

    :cond_2d
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_33
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzog;->beginSection(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_36} :catch_9f
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_36} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_36} :catch_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_36} :catch_5f
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_36} :catch_4c

    :try_start_36
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zznq;->zzhk()V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_3f

    :try_start_3b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    goto :goto_44

    :catchall_3f
    move-exception v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzog;->endSection()V

    throw v3

    :cond_44
    :goto_44
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zznn;->zzaei:Z

    if-nez v3, :cond_4b

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4b} :catch_9f
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_4b} :catch_8d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4b} :catch_76
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3b .. :try_end_4b} :catch_5f
    .catch Ljava/lang/Error; {:try_start_3b .. :try_end_4b} :catch_4c

    :cond_4b
    return-void

    :catch_4c
    move-exception v1

    const-string v2, "Unexpected error loading stream"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzaei:Z

    if-nez v0, :cond_5e

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_5e
    throw v1

    :catch_5f
    move-exception v1

    const-string v3, "OutOfMemory error loading stream"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzaei:Z

    if-nez v0, :cond_75

    new-instance v0, Lcom/google/android/gms/internal/ads/zznp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zznp;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_75
    return-void

    :catch_76
    move-exception v1

    const-string v3, "Unexpected exception loading stream"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzaei:Z

    if-nez v0, :cond_8c

    new-instance v0, Lcom/google/android/gms/internal/ads/zznp;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zznp;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_8c
    return-void

    :catch_8d
    nop

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznq;->zzhj()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzaei:Z

    if-nez v0, :cond_9e

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9e
    return-void

    :catch_9f
    move-exception v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzaei:Z

    if-nez v1, :cond_ab

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_ab
    return-void
.end method

.method public final zzbb(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfv:Ljava/io/IOException;

    if-eqz v0, :cond_a

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfw:I

    if-gt v1, p1, :cond_9

    goto :goto_a

    :cond_9
    throw v0

    :cond_a
    :goto_a
    return-void
.end method

.method public final zzee(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfy:Lcom/google/android/gms/internal/ads/zznl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznl;->zza(Lcom/google/android/gms/internal/ads/zznl;)Lcom/google/android/gms/internal/ads/zznn;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfy:Lcom/google/android/gms/internal/ads/zznl;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zznl;->zza(Lcom/google/android/gms/internal/ads/zznl;Lcom/google/android/gms/internal/ads/zznn;)Lcom/google/android/gms/internal/ads/zznn;

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1e

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznn;->execute()V

    return-void
.end method

.method public final zzk(Z)V
    .registers 10

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzaei:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfv:Ljava/io/IOException;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    if-nez p1, :cond_24

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_24

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznq;->cancelLoad()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfx:Ljava/lang/Thread;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfx:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_24
    :goto_24
    if-eqz p1, :cond_39

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznn;->finish()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfs:Lcom/google/android/gms/internal/ads/zzno;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfr:Lcom/google/android/gms/internal/ads/zznq;

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zznn;->zzbfu:J

    sub-long v5, v3, v5

    const/4 v7, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzno;->zza(Lcom/google/android/gms/internal/ads/zznq;JJZ)V

    :cond_39
    return-void
.end method
