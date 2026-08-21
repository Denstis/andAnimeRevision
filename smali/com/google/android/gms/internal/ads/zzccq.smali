###### Class com.google.android.gms.internal.ads.zzccq (com.google.android.gms.internal.ads.zzccq)
.class final Lcom/google/android/gms/internal/ads/zzccq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzfth:Lcom/google/android/gms/internal/ads/zzccj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 10

    check-cast p1, Ljava/lang/String;

    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzccj;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    const-string v2, "com.google.android.gms.ads.MobileAds"

    const-string v3, ""

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzccj;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v5, v4

    invoke-static {v0, v2, v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzccj;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzccj;->zzb(Lcom/google/android/gms/internal/ads/zzccj;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcct;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcct;-><init>(Lcom/google/android/gms/internal/ads/zzccq;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzccj;Z)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    const-string v0, "com.google.android.gms.ads.MobileAds"

    const/4 v1, 0x0

    const-string v2, "Internal Error."

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzccj;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v4, v3

    invoke-static {p1, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzccj;Ljava/lang/String;ZLjava/lang/String;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzccq;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccj;->zzc(Lcom/google/android/gms/internal/ads/zzccj;)Lcom/google/android/gms/internal/ads/zzaxv;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw p1
.end method

###### Class com.google.android.gms.internal.ads.zzcct (com.google.android.gms.internal.ads.zzcct)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcct;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcyz:Ljava/lang/String;

.field private final zzftm:Lcom/google/android/gms/internal/ads/zzccq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzccq;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcct;->zzftm:Lcom/google/android/gms/internal/ads/zzccq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcct;->zzcyz:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcct;->zzftm:Lcom/google/android/gms/internal/ads/zzccq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcct;->zzcyz:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzccq;->zzfth:Lcom/google/android/gms/internal/ads/zzccj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzccj;->zza(Lcom/google/android/gms/internal/ads/zzccj;Ljava/lang/String;)V

    return-void
.end method
