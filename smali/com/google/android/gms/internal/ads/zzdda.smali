###### Class com.google.android.gms.internal.ads.zzdda (com.google.android.gms.internal.ads.zzdda)
.class final Lcom/google/android/gms/internal/ads/zzdda;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final zzgrm:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final zzgrn:Lcom/google/android/gms/internal/ads/zzdcz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdcz<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/android/gms/internal/ads/zzdcz;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzdcz<",
            "-TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdda;->zzgrm:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdda;->zzgrn:Lcom/google/android/gms/internal/ads/zzdcz;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdda;->zzgrm:Ljava/util/concurrent/Future;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_6} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_e
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_6} :catch_c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdda;->zzgrn:Lcom/google/android/gms/internal/ads/zzdcz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdcz;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catch_c
    move-exception v0

    goto :goto_f

    :catch_e
    move-exception v0

    :goto_f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdda;->zzgrn:Lcom/google/android/gms/internal/ads/zzdcz;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdcz;->zzb(Ljava/lang/Throwable;)V

    return-void

    :catch_15
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdda;->zzgrn:Lcom/google/android/gms/internal/ads/zzdcz;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdcz;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdak;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdam;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdda;->zzgrn:Lcom/google/android/gms/internal/ads/zzdcz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdam;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdam;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
