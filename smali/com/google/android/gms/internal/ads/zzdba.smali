###### Class com.google.android.gms.internal.ads.zzdba (com.google.android.gms.internal.ads.zzdba)
.class public abstract Lcom/google/android/gms/internal/ads/zzdba;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/zzdba;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzdba<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdba;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;

    goto :goto_0

    :cond_e
    return-object p0
.end method

.method public abstract zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/zzdba<",
            "TE;>;"
        }
    .end annotation
.end method

.method public zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdba;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzdba<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdba;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;

    goto :goto_4

    :cond_12
    return-object p0
.end method
