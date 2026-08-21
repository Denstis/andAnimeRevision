###### Class com.google.android.gms.internal.ads.zzdbz (com.google.android.gms.internal.ads.zzdbz)
.class final Lcom/google/android/gms/internal/ads/zzdbz;
.super Lcom/google/android/gms/internal/ads/zzdbw;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdbw<",
        "TV;TX;",
        "Lcom/google/android/gms/internal/ads/zzdcj<",
        "-TX;+TV;>;",
        "Lcom/google/android/gms/internal/ads/zzddi<",
        "+TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdcj;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lcom/google/android/gms/internal/ads/zzdcj<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbw;-><init>(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final synthetic setResult(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzddi;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdby;->setFuture(Lcom/google/android/gms/internal/ads/zzddi;)Z

    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdcj;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdcj;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p2

    const-string v0, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdaq;->zza(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method
