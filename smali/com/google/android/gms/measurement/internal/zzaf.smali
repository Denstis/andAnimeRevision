###### Class com.google.android.gms.measurement.internal.zzaf (com.google.android.gms.measurement.internal.zzaf)
.class abstract Lcom/google/android/gms/measurement/internal/zzaf;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile zzb:Landroid/os/Handler;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzgt;

.field private final zzc:Ljava/lang/Runnable;

.field private volatile zzd:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgt;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzai;-><init>(Lcom/google/android/gms/measurement/internal/zzaf;Lcom/google/android/gms/measurement/internal/zzgt;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzaf;J)J
    .registers 3

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    return-wide p1
.end method

.method private final zzd()Landroid/os/Handler;
    .registers 4

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Landroid/os/Handler;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Landroid/os/Handler;

    return-object v0

    :cond_7
    const-class v0, Lcom/google/android/gms/measurement/internal/zzaf;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Landroid/os/Handler;

    if-nez v1, :cond_1f

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzj;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzgt;->zzn()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzj;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Landroid/os/Handler;

    :cond_1f
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->zzb:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public abstract zza()V
.end method

.method public final zza(J)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgt;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zza:Lcom/google/android/gms/measurement/internal/zzgt;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzgt;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "Failed to schedule delayed post. time"

    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_34
    return-void
.end method

.method public final zzb()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method final zzc()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzd()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaf;->zzc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
