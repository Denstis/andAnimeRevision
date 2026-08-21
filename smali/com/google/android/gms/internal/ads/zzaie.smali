###### Class com.google.android.gms.internal.ads.zzaie (com.google.android.gms.internal.ads.zzaie)
.class public final Lcom/google/android/gms/internal/ads/zzaie;
.super Lcom/google/android/gms/internal/ads/zzayc;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzayc<",
        "Lcom/google/android/gms/internal/ads/zzaha;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private zzczv:Lcom/google/android/gms/internal/ads/zzavr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzavr<",
            "Lcom/google/android/gms/internal/ads/zzaha;",
            ">;"
        }
    .end annotation
.end field

.field private zzdam:Z

.field private zzdan:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzavr;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzavr<",
            "Lcom/google/android/gms/internal/ads/zzaha;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayc;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzczv:Lcom/google/android/gms/internal/ads/zzavr;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdam:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdan:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaie;)Lcom/google/android/gms/internal/ads/zzavr;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzczv:Lcom/google/android/gms/internal/ads/zzavr;

    return-object p0
.end method

.method private final zzrj()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdan:I

    if-ltz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdam:Z

    if-eqz v1, :cond_28

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdan:I

    if-nez v1, :cond_28

    const-string v1, "No reference is left (including root). Cleaning up engine."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaij;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzaij;-><init>(Lcom/google/android/gms/internal/ads/zzaie;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaya;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaya;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zza(Lcom/google/android/gms/internal/ads/zzaxz;Lcom/google/android/gms/internal/ads/zzaxx;)V

    goto :goto_2d

    :cond_28
    const-string v1, "There are still references to the engine. Not destroying."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method


# virtual methods
.method public final zzrg()Lcom/google/android/gms/internal/ads/zzaia;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaia;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzaia;-><init>(Lcom/google/android/gms/internal/ads/zzaie;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaih;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzaih;-><init>(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzaia;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaig;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzaig;-><init>(Lcom/google/android/gms/internal/ads/zzaie;Lcom/google/android/gms/internal/ads/zzaia;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzayc;->zza(Lcom/google/android/gms/internal/ads/zzaxz;Lcom/google/android/gms/internal/ads/zzaxx;)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdan:I

    const/4 v3, 0x1

    if-ltz v2, :cond_1c

    const/4 v2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdan:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdan:I

    monitor-exit v1

    return-object v0

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_27

    throw v0
.end method

.method protected final zzrh()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdan:I

    const/4 v2, 0x1

    if-lez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string v1, "Releasing 1 reference for JS Engine"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdan:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdan:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzrj()V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public final zzri()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaie;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdan:I

    const/4 v2, 0x1

    if-ltz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    const-string v1, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaie;->zzdam:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaie;->zzrj()V

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
