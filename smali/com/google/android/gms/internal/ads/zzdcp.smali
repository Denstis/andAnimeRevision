###### Class com.google.android.gms.internal.ads.zzdcp (com.google.android.gms.internal.ads.zzdcp)
.class final Lcom/google/android/gms/internal/ads/zzdcp;
.super Lcom/google/android/gms/internal/ads/zzdco;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdco<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

.field private final zzgrh:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdcm;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcp;->zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdco;-><init>(Lcom/google/android/gms/internal/ads/zzdcm;Ljava/util/concurrent/Executor;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcp;->zzgrh:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method final setValue(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcp;->zzgrg:Lcom/google/android/gms/internal/ads/zzdcm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdby;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method final zzapg()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdco;->zzgrf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcp;->zzgrh:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzaph()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcp;->zzgrh:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
