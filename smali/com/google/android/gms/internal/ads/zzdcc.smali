###### Class com.google.android.gms.internal.ads.zzdcc (com.google.android.gms.internal.ads.zzdcc)
.class final Lcom/google/android/gms/internal/ads/zzdcc;
.super Lcom/google/android/gms/internal/ads/zzdca;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdca<",
        "TI;TO;",
        "Lcom/google/android/gms/internal/ads/zzdal<",
        "-TI;+TO;>;TO;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzdal;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TI;>;",
            "Lcom/google/android/gms/internal/ads/zzdal<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdca;-><init>(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final setResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdby;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdal;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdal;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
