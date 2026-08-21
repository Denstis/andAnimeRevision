###### Class com.google.android.gms.internal.ads.zzbkq (com.google.android.gms.internal.ads.zzbkq)
.class public final Lcom/google/android/gms/internal/ads/zzbkq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzffk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbkk;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcy;->zzah(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkq;->zzffk:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbkk;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkq;->zzffk:Ljava/util/List;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcga;)Lcom/google/android/gms/internal/ads/zzcga;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcga<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbkk;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcga<",
            "Lcom/google/android/gms/internal/ads/zzbkq;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgd;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbks;->zzdos:Lcom/google/android/gms/internal/ads/zzdal;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcgd;-><init>(Lcom/google/android/gms/internal/ads/zzcga;Lcom/google/android/gms/internal/ads/zzdal;)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcih;)Lcom/google/android/gms/internal/ads/zzcga;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcih<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbkk;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzcga<",
            "Lcom/google/android/gms/internal/ads/zzbkq;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgd;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbkt;->zzdos:Lcom/google/android/gms/internal/ads/zzdal;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzcgd;-><init>(Lcom/google/android/gms/internal/ads/zzcga;Lcom/google/android/gms/internal/ads/zzdal;)V

    return-object v0
.end method
