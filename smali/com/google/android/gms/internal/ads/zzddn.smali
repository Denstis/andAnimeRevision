###### Class com.google.android.gms.internal.ads.zzddn (com.google.android.gms.internal.ads.zzddn)
.class final Lcom/google/android/gms/internal/ads/zzddn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field zzgrv:Z

.field private final synthetic zzgrw:Ljava/util/concurrent/Executor;

.field private final synthetic zzgrx:Lcom/google/android/gms/internal/ads/zzdby;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdby;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddn;->zzgrw:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddn;->zzgrx:Lcom/google/android/gms/internal/ads/zzdby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzddn;->zzgrv:Z

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddn;->zzgrw:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzddm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzddm;-><init>(Lcom/google/android/gms/internal/ads/zzddn;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzddn;->zzgrv:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddn;->zzgrx:Lcom/google/android/gms/internal/ads/zzdby;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdby;->setException(Ljava/lang/Throwable;)Z

    :cond_15
    return-void
.end method
