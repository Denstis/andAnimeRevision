###### Class com.google.android.gms.internal.ads.zzcrt (com.google.android.gms.internal.ads.zzcrt)
.class public final Lcom/google/android/gms/internal/ads/zzcrt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzggh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcru<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzcrr<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzcru<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzcrr<",
            "TT;>;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrt;->executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzggh:Ljava/util/Set;

    return-void
.end method

.method static final synthetic zza(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzddi;

    :try_start_10
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcrr;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcrr;->zzr(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_1b} :catch_1e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_1b} :catch_1c

    goto :goto_4

    :catch_1c
    move-exception p0

    goto :goto_1f

    :catch_1e
    move-exception p0

    :goto_1f
    const-string p1, "Derive quality signals error."

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2a
    return-object p1
.end method


# virtual methods
.method public final zzs(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzggh:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrt;->zzggh:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcru;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcru;->zzalv()Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzza;->zzclv:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcrw;

    invoke-direct {v6, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzcrw;-><init>(Lcom/google/android/gms/internal/ads/zzcru;J)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-interface {v3, v6, v2}, Lcom/google/android/gms/internal/ads/zzddi;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_45
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_49
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzddd;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcrv;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcrv;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrt;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzddd;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzcrv (com.google.android.gms.internal.ads.zzcrv)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcrv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzdbp:Ljava/lang/Object;

.field private final zzgfv:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzgfv:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzdbp:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzgfv:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrv;->zzdbp:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcrt;->zza(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzcrw (com.google.android.gms.internal.ads.zzcrw)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcrw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzggi:Lcom/google/android/gms/internal/ads/zzcru;

.field private final zzggj:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcru;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrw;->zzggi:Lcom/google/android/gms/internal/ads/zzcru;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcrw;->zzggj:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrw;->zzggi:Lcom/google/android/gms/internal/ads/zzcru;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcrw;->zzggj:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Signal runtime : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    return-void
.end method
