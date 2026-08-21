###### Class com.google.android.gms.internal.ads.zzmm (com.google.android.gms.internal.ads.zzmm)
.class public Lcom/google/android/gms/internal/ads/zzmm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzmt;


# instance fields
.field private final length:I

.field private zzafv:I

.field private final zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

.field private final zzbde:Lcom/google/android/gms/internal/ads/zzmh;

.field private final zzbdf:[I

.field private final zzbdg:[J


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzmh;[I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzmh;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbde:Lcom/google/android/gms/internal/ads/zzmh;

    array-length v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->length:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->length:I

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    const/4 v0, 0x0

    :goto_1f
    array-length v2, p2

    if-ge v0, v2, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzmh;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2f
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzmo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzmo;-><init>(Lcom/google/android/gms/internal/ads/zzml;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzmm;->length:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbdf:[I

    :goto_40
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzmm;->length:I

    if-ge v1, p2, :cond_53

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbdf:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzmh;->zzh(Lcom/google/android/gms/internal/ads/zzgo;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_53
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbdg:[J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_25

    :cond_12
    check-cast p1, Lcom/google/android/gms/internal/ads/zzmm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbde:Lcom/google/android/gms/internal/ads/zzmh;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzmm;->zzbde:Lcom/google/android/gms/internal/ads/zzmh;

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbdf:[I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzmm;->zzbdf:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    :goto_25
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzafv:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbde:Lcom/google/android/gms/internal/ads/zzmh;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbdf:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzafv:I

    :cond_15
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzafv:I

    return v0
.end method

.method public final length()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbdf:[I

    array-length v0, v0

    return v0
.end method

.method public final zzau(I)Lcom/google/android/gms/internal/ads/zzgo;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbby:[Lcom/google/android/gms/internal/ads/zzgo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzaw(I)I
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbdf:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public final zzhx()Lcom/google/android/gms/internal/ads/zzmh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmm;->zzbde:Lcom/google/android/gms/internal/ads/zzmh;

    return-object v0
.end method
