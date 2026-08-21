###### Class com.google.android.gms.internal.ads.zzdbb (com.google.android.gms.internal.ads.zzdbb)
.class Lcom/google/android/gms/internal/ads/zzdbb;
.super Lcom/google/android/gms/internal/ads/zzdba;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdba<",
        "TE;>;"
    }
.end annotation


# instance fields
.field size:I

.field zzgoz:[Ljava/lang/Object;

.field zzgpa:Z


# direct methods
.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdba;-><init>()V

    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdax;->zzf(ILjava/lang/String;)I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    return-void
.end method

.method private final zzdq(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_2e

    array-length v1, v0

    if-ltz p1, :cond_26

    shr-int/lit8 v3, v1, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_18

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    shl-int/lit8 v1, p1, 0x1

    :cond_18
    if-gez v1, :cond_1d

    const v1, 0x7fffffff

    :cond_1d
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgpa:Z

    return-void

    :cond_26
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "cannot store more than MAX_VALUE elements"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2e
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgpa:Z

    if-eqz p1, :cond_3c

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgpa:Z

    :cond_3c
    return-void
.end method


# virtual methods
.method public synthetic zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbb;->zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbb;

    move-result-object p1

    return-object p1
.end method

.method public zzac(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbb;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/ads/zzdbb<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbb;->zzdq(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdba;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzdba<",
            "TE;>;"
        }
    .end annotation

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdbb;->zzdq(I)V

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzday;

    if-eqz v1, :cond_22

    check-cast v0, Lcom/google/android/gms/internal/ads/zzday;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzday;->zza([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    return-object p0

    :cond_22
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdba;->zze(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdba;

    return-object p0
.end method
