###### Class com.google.android.gms.internal.ads.zzddd (com.google.android.gms.internal.ads.zzddd)
.class public final Lcom/google/android/gms/internal/ads/zzddd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzgqs:Z

.field private final zzgro:Lcom/google/android/gms/internal/ads/zzdbd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLcom/google/android/gms/internal/ads/zzdbd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "+TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzddd;->zzgqs:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzddd;->zzgro:Lcom/google/android/gms/internal/ads/zzdbd;

    return-void
.end method

.method synthetic constructor <init>(ZLcom/google/android/gms/internal/ads/zzdbd;Lcom/google/android/gms/internal/ads/zzddb;)V
    .registers 4

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzddd;-><init>(ZLcom/google/android/gms/internal/ads/zzdbd;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzddd;->zzgro:Lcom/google/android/gms/internal/ads/zzdbd;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzddd;->zzgqs:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lcom/google/android/gms/internal/ads/zzdcm;-><init>(Lcom/google/android/gms/internal/ads/zzday;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
