###### Class com.google.android.gms.internal.ads.zzdau (com.google.android.gms.internal.ads.zzdau)
.class abstract Lcom/google/android/gms/internal/ads/zzdau;
.super Lcom/google/android/gms/internal/ads/zzdbx;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdbx<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private position:I

.field private final size:I


# direct methods
.method protected constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbx;-><init>()V

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdaq;->zzs(II)I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdau;->size:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdau;->position:I

    return-void
.end method


# virtual methods
.method protected abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdau;->size:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->position:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdau;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdau;->position:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdau;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->position:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdau;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->position:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdau;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdau;->position:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
