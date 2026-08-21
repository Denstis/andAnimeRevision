###### Class com.google.android.gms.internal.ads.zzdcv (com.google.android.gms.internal.ads.zzdcv)
.class Lcom/google/android/gms/internal/ads/zzdcv;
.super Lcom/google/android/gms/internal/ads/zzdcs;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdby$zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdcs<",
        "TV;>;",
        "Lcom/google/android/gms/internal/ads/zzdby$zzg<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdcs;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdby;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
