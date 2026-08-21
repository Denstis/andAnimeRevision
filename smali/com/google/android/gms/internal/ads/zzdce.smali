###### Class com.google.android.gms.internal.ads.zzdce (com.google.android.gms.internal.ads.zzdce)
.class Lcom/google/android/gms/internal/ads/zzdce;
.super Lcom/google/android/gms/internal/ads/zzdby$zzj;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdce$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdby$zzj<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private zzgqv:Lcom/google/android/gms/internal/ads/zzdce$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdce$zza;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzdce;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdce;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdby$zzj;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdce;Lcom/google/android/gms/internal/ads/zzdce$zza;)Lcom/google/android/gms/internal/ads/zzdce$zza;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdce;->zzgqv:Lcom/google/android/gms/internal/ads/zzdce$zza;

    return-object p1
.end method

.method private static zza(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_f

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic zzapd()Ljava/util/logging/Logger;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdce;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic zzb(Ljava/util/Set;Ljava/lang/Throwable;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdce;->zza(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final afterDone()V
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdby;->afterDone()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce;->zzgqv:Lcom/google/android/gms/internal/ads/zzdce$zza;

    if-eqz v0, :cond_39

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdce;->zzgqv:Lcom/google/android/gms/internal/ads/zzdce$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zza(Lcom/google/android/gms/internal/ads/zzdce$zza;)Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdby;->wasInterrupted()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdce$zza;->interruptTask()V

    :cond_17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdby;->isCancelled()Z

    move-result v0

    if-eqz v1, :cond_1f

    const/4 v3, 0x1

    goto :goto_20

    :cond_1f
    const/4 v3, 0x0

    :goto_20
    and-int/2addr v0, v3

    if-eqz v0, :cond_39

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzday;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbu;

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzddi;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_29

    :cond_39
    return-void
.end method

.method protected final pendingToString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce;->zzgqv:Lcom/google/android/gms/internal/ads/zzdce$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zza(Lcom/google/android/gms/internal/ads/zzdce$zza;)Lcom/google/android/gms/internal/ads/zzday;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "futures=["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    return-object v1
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzdce$zza;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdce$zza;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdce;->zzgqv:Lcom/google/android/gms/internal/ads/zzdce$zza;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdce$zza;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdce.zza (com.google.android.gms.internal.ads.zzdce$zza)
.class abstract Lcom/google/android/gms/internal/ads/zzdce$zza;
.super Lcom/google/android/gms/internal/ads/zzdcf;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "zza"
.end annotation


# instance fields
.field private zzgqr:Lcom/google/android/gms/internal/ads/zzday;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzday<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final zzgqs:Z

.field private final zzgqt:Z

.field private final synthetic zzgqu:Lcom/google/android/gms/internal/ads/zzdce;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdce;Lcom/google/android/gms/internal/ads/zzday;ZZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzday<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TInputT;>;>;ZZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqu:Lcom/google/android/gms/internal/ads/zzdce;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdcf;-><init>(I)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzday;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqr:Lcom/google/android/gms/internal/ads/zzday;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqs:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqt:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdce$zza;)Lcom/google/android/gms/internal/ads/zzday;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqr:Lcom/google/android/gms/internal/ads/zzday;

    return-object p0
.end method

.method private final zza(ILjava/util/concurrent/Future;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future<",
            "+TInputT;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqs:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqu:Lcom/google/android/gms/internal/ads/zzdce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdby;->isDone()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqu:Lcom/google/android/gms/internal/ads/zzdce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdby;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    const-string v2, "Future was done before all dependencies completed"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdaq;->checkState(ZLjava/lang/Object;)V

    :try_start_1e
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v2, "Tried to set value from future which is not done"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdaq;->checkState(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqs:Z

    if-eqz v0, :cond_4b

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqu:Lcom/google/android/gms/internal/ads/zzdce;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdce;->zza(Lcom/google/android/gms/internal/ads/zzdce;Lcom/google/android/gms/internal/ads/zzdce$zza;)Lcom/google/android/gms/internal/ads/zzdce$zza;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqu:Lcom/google/android/gms/internal/ads/zzdce;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzdby;->cancel(Z)Z

    return-void

    :cond_3d
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqt:Z

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqs:Z

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zza(ZILjava/lang/Object;)V

    :cond_4a
    return-void

    :cond_4b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqt:Z

    if-eqz v0, :cond_5e

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqs:Z

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zza(ZILjava/lang/Object;)V
    :try_end_5e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1e .. :try_end_5e} :catch_64
    .catchall {:try_start_1e .. :try_end_5e} :catchall_5f

    :cond_5e
    return-void

    :catchall_5f
    move-exception p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzh(Ljava/lang/Throwable;)V

    return-void

    :catch_64
    move-exception p1

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzh(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdce$zza;ILjava/util/concurrent/Future;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zza(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method private final zzaoz()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqr:Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzapc()V

    return-void

    :cond_c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqs:Z

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqr:Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzday;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdbu;

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzddi;

    add-int/lit8 v3, v0, 0x1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdcg;

    invoke-direct {v4, p0, v0, v2}, Lcom/google/android/gms/internal/ads/zzdcg;-><init>(Lcom/google/android/gms/internal/ads/zzdce$zza;ILcom/google/android/gms/internal/ads/zzddi;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdcq;->zzgri:Lcom/google/android/gms/internal/ads/zzdcq;

    invoke-interface {v2, v4, v0}, Lcom/google/android/gms/internal/ads/zzddi;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v0, v3

    goto :goto_19

    :cond_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqr:Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzday;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbu;

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzddi;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdcq;->zzgri:Lcom/google/android/gms/internal/ads/zzdcq;

    invoke-interface {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzddi;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_3c

    :cond_4e
    return-void
.end method

.method private final zzapa()V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdcf;->zzapf()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    :goto_b
    const-string v4, "Less than 0 remaining futures"

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdaq;->checkState(ZLjava/lang/Object;)V

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqt:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqs:Z

    xor-int/2addr v2, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqr:Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzday;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbu;

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzddi;

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zza(ILjava/util/concurrent/Future;)V

    move v1, v3

    goto :goto_22

    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzapc()V

    :cond_38
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdce$zza;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzaoz()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdce$zza;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzapa()V

    return-void
.end method

.method private final zzh(Ljava/lang/Throwable;)V
    .registers 9

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqs:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqu:Lcom/google/android/gms/internal/ads/zzdce;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdby;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzapb()V

    goto :goto_1e

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdcf;->zzape()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzdce;->zzb(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v2

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    const/4 v2, 0x1

    :goto_1f
    instance-of v3, p1, Ljava/lang/Error;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqs:Z

    xor-int/2addr v0, v1

    and-int/2addr v0, v4

    and-int/2addr v0, v2

    or-int/2addr v0, v3

    if-eqz v0, :cond_3f

    if-eqz v3, :cond_2e

    const-string v0, "Input Future failed with Error"

    goto :goto_30

    :cond_2e
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    :goto_30
    move-object v5, v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdce;->zzapd()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.common.util.concurrent.AggregateFuture$RunningState"

    const-string v4, "handleException"

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3f
    return-void
.end method


# virtual methods
.method interruptTask()V
    .registers 1

    return-void
.end method

.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzapa()V

    return-void
.end method

.method abstract zza(ZILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITInputT;)V"
        }
    .end annotation
.end method

.method zzapb()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqr:Lcom/google/android/gms/internal/ads/zzday;

    return-void
.end method

.method abstract zzapc()V
.end method

.method final zzg(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqu:Lcom/google/android/gms/internal/ads/zzdce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdby;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdce$zza;->zzgqu:Lcom/google/android/gms/internal/ads/zzdce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdby;->zzaow()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdce;->zzb(Ljava/util/Set;Ljava/lang/Throwable;)Z

    :cond_11
    return-void
.end method
