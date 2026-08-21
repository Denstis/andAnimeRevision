###### Class com.google.android.gms.internal.ads.zzccs (com.google.android.gms.internal.ads.zzccs)
.class final Lcom/google/android/gms/internal/ads/zzccs;
.super Lcom/google/android/gms/internal/ads/zzafs;
.source ""


# instance fields
.field private final synthetic zzfth:Lcom/google/android/gms/internal/ads/zzccj;

.field private final synthetic zzfti:Ljava/lang/Object;

.field private final synthetic zzftj:Ljava/lang/String;

.field private final synthetic zzftk:J

.field private final synthetic zzftl:Lcom/google/android/gms/internal/ads/zzaxv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccj;Ljava/lang/Object;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfti:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftj:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftk:J

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftl:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafs;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializationFailed(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfti:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftj:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftk:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v4}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzccj;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzd(Lcom/google/android/gms/internal/ads/zzccj;)Lcom/google/android/gms/internal/ads/zzcbt;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftj:Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzcbt;->zzr(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftl:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public final onInitializationSucceeded()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfti:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftj:Ljava/lang/String;

    const-string v3, ""

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftk:J

    sub-long/2addr v4, v6

    long-to-int v5, v4

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzccj;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzccj;->zzd(Lcom/google/android/gms/internal/ads/zzccj;)Lcom/google/android/gms/internal/ads/zzcbt;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcbt;->zzfz(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccs;->zzftl:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method
