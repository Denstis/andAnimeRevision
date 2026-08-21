###### Class com.google.android.gms.internal.ads.zzbay (com.google.android.gms.internal.ads.zzbay)
.class public final Lcom/google/android/gms/internal/ads/zzbay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/android/gms/internal/ads/zzbaw;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzedg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbaw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbay;->zzedg:Ljava/util/List;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzazj;)Z
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbay;->zzd(Lcom/google/android/gms/internal/ads/zzazj;)Lcom/google/android/gms/internal/ads/zzbaw;

    move-result-object p0

    if-eqz p0, :cond_d

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbaw;->zzede:Lcom/google/android/gms/internal/ads/zzbax;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbax;->abort()V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method static zzd(Lcom/google/android/gms/internal/ads/zzazj;)Lcom/google/android/gms/internal/ads/zzbaw;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlf()Lcom/google/android/gms/internal/ads/zzbay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbay;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbaw;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbaw;->zzdya:Lcom/google/android/gms/internal/ads/zzazj;

    if-ne v2, p0, :cond_8

    return-object v1

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/android/gms/internal/ads/zzbaw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbay;->zzedg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbaw;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbay;->zzedg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbaw;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbay;->zzedg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
