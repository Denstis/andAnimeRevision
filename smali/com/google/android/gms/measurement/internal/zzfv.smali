###### Class com.google.android.gms.measurement.internal.zzfv (com.google.android.gms.measurement.internal.zzfv)
.class final Lcom/google/android/gms/measurement/internal/zzfv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzft;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzft;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zzb:Lcom/google/android/gms/measurement/internal/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzft;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfv;->zza:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method
