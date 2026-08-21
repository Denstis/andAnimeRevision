###### Class com.google.android.gms.internal.ads.zzddz (com.google.android.gms.internal.ads.zzddz)
.class final Lcom/google/android/gms/internal/ads/zzddz;
.super Lcom/google/android/gms/internal/ads/zzddh;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzddh<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final zzgrh:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final synthetic zzgsg:Lcom/google/android/gms/internal/ads/zzddw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddw;Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzgsg:Lcom/google/android/gms/internal/ads/zzddw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzddh;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzgrh:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final isDone()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzgsg:Lcom/google/android/gms/internal/ads/zzddw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdby;->isDone()Z

    move-result v0

    return v0
.end method

.method final zzapg()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzgrh:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzaph()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzgrh:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzb(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzgsg:Lcom/google/android/gms/internal/ads/zzddw;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdby;->set(Ljava/lang/Object;)Z

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzddz;->zzgsg:Lcom/google/android/gms/internal/ads/zzddw;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdby;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method
