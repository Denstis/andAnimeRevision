###### Class com.google.android.gms.internal.ads.zzcxu (com.google.android.gms.internal.ads.zzcxu)
.class public final Lcom/google/android/gms/internal/ads/zzcxu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzgll:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final zzglq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final synthetic zzglr:Lcom/google/android/gms/internal/ads/zzcxs;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcxs;Ljava/lang/Object;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzglr:Lcom/google/android/gms/internal/ads/zzcxs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzgll:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzglq:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcxs;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcxr;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcxu;-><init>(Lcom/google/android/gms/internal/ads/zzcxs;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzcxy;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzcxy<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzglq:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdcy;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzddd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcxt;->zzgfh:Ljava/util/concurrent/Callable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzddd;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v7

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcxy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzglr:Lcom/google/android/gms/internal/ads/zzcxs;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzgll:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcxu;->zzglq:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcxs;->zza(Lcom/google/android/gms/internal/ads/zzcxs;)Lcom/google/android/gms/internal/ads/zzddl;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzddd;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzcxy;-><init>(Lcom/google/android/gms/internal/ads/zzcxs;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzddi;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzddi;Lcom/google/android/gms/internal/ads/zzcxr;)V

    return-object v1
.end method
