###### Class com.google.android.gms.internal.ads.zzdpp (com.google.android.gms.internal.ads.zzdpp)
.class final Lcom/google/android/gms/internal/ads/zzdpp;
.super Lcom/google/android/gms/internal/ads/zzdpr;
.source ""


# instance fields
.field private final limit:I

.field private position:I

.field private final synthetic zzhge:Lcom/google/android/gms/internal/ads/zzdpm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->zzhge:Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpr;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->position:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->zzhge:Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->limit:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpp;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->limit:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final nextByte()B
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpp;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->limit:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->position:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdpp;->zzhge:Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzfn(I)B

    move-result v0

    return v0

    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
