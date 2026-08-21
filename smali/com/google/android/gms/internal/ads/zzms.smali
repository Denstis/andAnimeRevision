###### Class com.google.android.gms.internal.ads.zzms (com.google.android.gms.internal.ads.zzms)
.class public abstract Lcom/google/android/gms/internal/ads/zzms;
.super Lcom/google/android/gms/internal/ads/zzmy;
.source ""


# instance fields
.field private zzagf:I

.field private final zzbdz:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzmk;",
            "Lcom/google/android/gms/internal/ads/zzmu;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbea:Landroid/util/SparseBooleanArray;

.field private zzbeb:Lcom/google/android/gms/internal/ads/zzmr;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzmy;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbdz:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbea:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzagf:I

    return-void
.end method


# virtual methods
.method public final zza([Lcom/google/android/gms/internal/ads/zzgw;Lcom/google/android/gms/internal/ads/zzmk;)Lcom/google/android/gms/internal/ads/zzna;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [[Lcom/google/android/gms/internal/ads/zzmh;

    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v10, v5, [[[I

    const/4 v6, 0x0

    :goto_16
    array-length v7, v4

    if-ge v6, v7, :cond_26

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    new-array v8, v7, [Lcom/google/android/gms/internal/ads/zzmh;

    aput-object v8, v4, v6

    new-array v7, v7, [[I

    aput-object v7, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_26
    array-length v6, v1

    new-array v9, v6, [I

    const/4 v6, 0x0

    :goto_2a
    array-length v7, v9

    if-ge v6, v7, :cond_38

    aget-object v7, v1, v6

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzgw;->zzdq()I

    move-result v7

    aput v7, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    :cond_38
    const/4 v6, 0x0

    :goto_39
    iget v7, v2, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    if-ge v6, v7, :cond_9e

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzmk;->zzav(I)Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v7

    array-length v8, v1

    move v12, v8

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_45
    array-length v13, v1

    if-ge v8, v13, :cond_69

    aget-object v13, v1, v8

    move v14, v12

    move v12, v11

    const/4 v11, 0x0

    :goto_4d
    iget v15, v7, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    if-ge v11, v15, :cond_64

    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zzmh;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v15

    invoke-interface {v13, v15}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Lcom/google/android/gms/internal/ads/zzgo;)I

    move-result v15

    const/4 v5, 0x3

    and-int/2addr v15, v5

    if-le v15, v12, :cond_61

    if-eq v15, v5, :cond_6a

    move v14, v8

    move v12, v15

    :cond_61
    add-int/lit8 v11, v11, 0x1

    goto :goto_4d

    :cond_64
    add-int/lit8 v8, v8, 0x1

    move v11, v12

    move v12, v14

    goto :goto_45

    :cond_69
    move v8, v12

    :cond_6a
    array-length v5, v1

    if-ne v8, v5, :cond_72

    iget v5, v7, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    new-array v5, v5, [I

    goto :goto_8b

    :cond_72
    aget-object v5, v1, v8

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    new-array v11, v11, [I

    const/4 v12, 0x0

    :goto_79
    iget v13, v7, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    if-ge v12, v13, :cond_8a

    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/zzmh;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v13

    invoke-interface {v5, v13}, Lcom/google/android/gms/internal/ads/zzgw;->zza(Lcom/google/android/gms/internal/ads/zzgo;)I

    move-result v13

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_79

    :cond_8a
    move-object v5, v11

    :goto_8b
    aget v11, v3, v8

    aget-object v12, v4, v8

    aput-object v7, v12, v11

    aget-object v7, v10, v8

    aput-object v5, v7, v11

    aget v5, v3, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_9e
    array-length v5, v1

    new-array v8, v5, [Lcom/google/android/gms/internal/ads/zzmk;

    array-length v5, v1

    new-array v7, v5, [I

    const/4 v5, 0x0

    :goto_a5
    array-length v6, v1

    if-ge v5, v6, :cond_ce

    aget v6, v3, v5

    new-instance v11, Lcom/google/android/gms/internal/ads/zzmk;

    aget-object v12, v4, v5

    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/android/gms/internal/ads/zzmh;

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/ads/zzmk;-><init>([Lcom/google/android/gms/internal/ads/zzmh;)V

    aput-object v11, v8, v5

    aget-object v11, v10, v5

    invoke-static {v11, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    aput-object v6, v10, v5

    aget-object v6, v1, v5

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzgw;->getTrackType()I

    move-result v6

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    :cond_ce
    array-length v5, v1

    aget v3, v3, v5

    new-instance v11, Lcom/google/android/gms/internal/ads/zzmk;

    array-length v5, v1

    aget-object v4, v4, v5

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/ads/zzmh;

    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zzmk;-><init>([Lcom/google/android/gms/internal/ads/zzmh;)V

    invoke-virtual {v0, v1, v8, v10}, Lcom/google/android/gms/internal/ads/zzms;->zza([Lcom/google/android/gms/internal/ads/zzgw;[Lcom/google/android/gms/internal/ads/zzmk;[[[I)[Lcom/google/android/gms/internal/ads/zzmt;

    move-result-object v3

    const/4 v4, 0x0

    :goto_e4
    array-length v5, v1

    const/4 v12, 0x0

    if-ge v4, v5, :cond_112

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzms;->zzbea:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_f3

    aput-object v12, v3, v4

    goto :goto_109

    :cond_f3
    aget-object v5, v8, v4

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzms;->zzbdz:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_100

    goto :goto_107

    :cond_100
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/google/android/gms/internal/ads/zzmu;

    :goto_107
    if-nez v12, :cond_10c

    :goto_109
    add-int/lit8 v4, v4, 0x1

    goto :goto_e4

    :cond_10c
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v1

    :cond_112
    new-instance v4, Lcom/google/android/gms/internal/ads/zzmr;

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzmr;-><init>([I[Lcom/google/android/gms/internal/ads/zzmk;[I[[[ILcom/google/android/gms/internal/ads/zzmk;)V

    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzgz;

    const/4 v6, 0x0

    :goto_11c
    array-length v7, v1

    if-ge v6, v7, :cond_12c

    aget-object v7, v3, v6

    if-eqz v7, :cond_126

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgz;->zzage:Lcom/google/android/gms/internal/ads/zzgz;

    goto :goto_127

    :cond_126
    move-object v7, v12

    :goto_127
    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_11c

    :cond_12c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzna;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzmv;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzmv;-><init>([Lcom/google/android/gms/internal/ads/zzmt;)V

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzna;-><init>(Lcom/google/android/gms/internal/ads/zzmk;Lcom/google/android/gms/internal/ads/zzmv;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzgz;)V

    return-object v1
.end method

.method protected abstract zza([Lcom/google/android/gms/internal/ads/zzgw;[Lcom/google/android/gms/internal/ads/zzmk;[[[I)[Lcom/google/android/gms/internal/ads/zzmt;
.end method

.method public final zzd(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmr;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbeb:Lcom/google/android/gms/internal/ads/zzmr;

    return-void
.end method

.method public final zzf(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbea:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzms;->zzbea:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzmy;->invalidate()V

    return-void
.end method
