###### Class com.google.android.gms.internal.ads.zzlw (com.google.android.gms.internal.ads.zzlw)
.class final Lcom/google/android/gms/internal/ads/zzlw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlr;
.implements Lcom/google/android/gms/internal/ads/zzls;


# instance fields
.field private zzadf:Lcom/google/android/gms/internal/ads/zzmk;

.field private zzbaf:Lcom/google/android/gms/internal/ads/zzlr;

.field public final zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

.field private final zzbbn:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/gms/internal/ads/zzmd;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzbbo:I

.field private zzbbp:[Lcom/google/android/gms/internal/ads/zzls;

.field private zzbbq:Lcom/google/android/gms/internal/ads/zzmg;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zzls;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbn:Ljava/util/IdentityHashMap;

    return-void
.end method


# virtual methods
.method public final zza([Lcom/google/android/gms/internal/ads/zzmt;[Z[Lcom/google/android/gms/internal/ads/zzmd;[ZJ)J
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    array-length v4, v1

    new-array v4, v4, [I

    const/4 v6, 0x0

    :goto_d
    array-length v7, v1

    if-ge v6, v7, :cond_4e

    aget-object v7, v2, v6

    const/4 v8, -0x1

    if-nez v7, :cond_17

    const/4 v7, -0x1

    goto :goto_25

    :cond_17
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbn:Ljava/util/IdentityHashMap;

    aget-object v9, v2, v6

    invoke-virtual {v7, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_25
    aput v7, v3, v6

    aput v8, v4, v6

    aget-object v7, v1, v6

    if-eqz v7, :cond_4b

    aget-object v7, v1, v6

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzmt;->zzhx()Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v7

    const/4 v9, 0x0

    :goto_34
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v11, v10

    if-ge v9, v11, :cond_4b

    aget-object v10, v10, v9

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzls;->zzhb()Lcom/google/android/gms/internal/ads/zzmk;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzmk;->zza(Lcom/google/android/gms/internal/ads/zzmh;)I

    move-result v10

    if-eq v10, v8, :cond_48

    aput v9, v4, v6

    goto :goto_4b

    :cond_48
    add-int/lit8 v9, v9, 0x1

    goto :goto_34

    :cond_4b
    :goto_4b
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_4e
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbn:Ljava/util/IdentityHashMap;

    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    array-length v6, v1

    new-array v6, v6, [Lcom/google/android/gms/internal/ads/zzmd;

    array-length v7, v1

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzmd;

    array-length v8, v1

    new-array v15, v8, [Lcom/google/android/gms/internal/ads/zzmt;

    new-instance v13, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v8, v8

    invoke-direct {v13, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v16, p5

    const/4 v14, 0x0

    :goto_67
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v8, v8

    if-ge v14, v8, :cond_ef

    const/4 v8, 0x0

    :goto_6d
    array-length v9, v1

    if-ge v8, v9, :cond_86

    aget v9, v3, v8

    const/4 v10, 0x0

    if-ne v9, v14, :cond_78

    aget-object v9, v2, v8

    goto :goto_79

    :cond_78
    move-object v9, v10

    :goto_79
    aput-object v9, v7, v8

    aget v9, v4, v8

    if-ne v9, v14, :cond_81

    aget-object v10, v1, v8

    :cond_81
    aput-object v10, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6d

    :cond_86
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    aget-object v8, v8, v14

    move-object v9, v15

    move-object/from16 v10, p2

    move-object v11, v7

    move-object/from16 v12, p4

    move-object v5, v13

    move-object/from16 v18, v15

    move v15, v14

    move-wide/from16 v13, v16

    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzls;->zza([Lcom/google/android/gms/internal/ads/zzmt;[Z[Lcom/google/android/gms/internal/ads/zzmd;[ZJ)J

    move-result-wide v8

    if-nez v15, :cond_9f

    move-wide/from16 v16, v8

    goto :goto_a3

    :cond_9f
    cmp-long v10, v8, v16

    if-nez v10, :cond_e7

    :goto_a3
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_a5
    array-length v10, v1

    if-ge v8, v10, :cond_d8

    aget v10, v4, v8

    const/4 v11, 0x1

    if-ne v10, v15, :cond_c8

    aget-object v9, v7, v8

    if-eqz v9, :cond_b3

    const/4 v9, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v9, 0x0

    :goto_b4
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    aget-object v9, v7, v8

    aput-object v9, v6, v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbn:Ljava/util/IdentityHashMap;

    aget-object v10, v7, v8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto :goto_d5

    :cond_c8
    aget v10, v3, v8

    if-ne v10, v15, :cond_d5

    aget-object v10, v7, v8

    if-nez v10, :cond_d1

    goto :goto_d2

    :cond_d1
    const/4 v11, 0x0

    :goto_d2
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    :cond_d5
    :goto_d5
    add-int/lit8 v8, v8, 0x1

    goto :goto_a5

    :cond_d8
    if-eqz v9, :cond_e1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    aget-object v8, v8, v15

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e1
    add-int/lit8 v14, v15, 0x1

    move-object v13, v5

    move-object/from16 v15, v18

    goto :goto_67

    :cond_e7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_ef
    move-object v5, v13

    array-length v1, v6

    const/4 v3, 0x0

    invoke-static {v6, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzls;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbp:[Lcom/google/android/gms/internal/ads/zzls;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbp:[Lcom/google/android/gms/internal/ads/zzls;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlf;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbp:[Lcom/google/android/gms/internal/ads/zzls;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzlf;-><init>([Lcom/google/android/gms/internal/ads/zzmg;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbq:Lcom/google/android/gms/internal/ads/zzmg;

    return-wide v16
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlr;J)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbaf:Lcom/google/android/gms/internal/ads/zzlr;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbo:I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzls;->zza(Lcom/google/android/gms/internal/ads/zzlr;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzls;)V
    .registers 12

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbo:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbo:I

    if-lez p1, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v2, v0, :cond_1d

    aget-object v4, p1, v2

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzls;->zzhb()Lcom/google/android/gms/internal/ads/zzmk;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1d
    new-array p1, v3, [Lcom/google/android/gms/internal/ads/zzmh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_24
    if-ge v3, v2, :cond_42

    aget-object v5, v0, v3

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzls;->zzhb()Lcom/google/android/gms/internal/ads/zzmk;

    move-result-object v5

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    move v7, v4

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v6, :cond_3e

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzmk;->zzav(I)Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v9

    aput-object v9, p1, v7

    add-int/lit8 v4, v4, 0x1

    move v7, v8

    goto :goto_30

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_24

    :cond_42
    new-instance v0, Lcom/google/android/gms/internal/ads/zzmk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzmk;-><init>([Lcom/google/android/gms/internal/ads/zzmh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzadf:Lcom/google/android/gms/internal/ads/zzmk;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbaf:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzlr;->zza(Lcom/google/android/gms/internal/ads/zzls;)V

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzmg;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzadf:Lcom/google/android/gms/internal/ads/zzmk;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbaf:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzmf;->zza(Lcom/google/android/gms/internal/ads/zzmg;)V

    :cond_9
    return-void
.end method

.method public final zzdy(J)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbq:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmg;->zzdy(J)Z

    move-result p1

    return p1
.end method

.method public final zzdz(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbp:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzls;->zzdz(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final zzea(J)J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbp:[Lcom/google/android/gms/internal/ads/zzls;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzls;->zzea(J)J

    move-result-wide p1

    const/4 v0, 0x1

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbp:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v2, v1

    if-ge v0, v2, :cond_24

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzls;->zzea(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Children seeked to different positions"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    return-wide p1
.end method

.method public final zzgz()J
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbq:Lcom/google/android/gms/internal/ads/zzmg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmg;->zzgz()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzha()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzls;->zzha()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final zzhb()Lcom/google/android/gms/internal/ads/zzmk;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzadf:Lcom/google/android/gms/internal/ads/zzmk;

    return-object v0
.end method

.method public final zzhc()J
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzls;->zzhc()J

    move-result-wide v2

    const/4 v0, 0x1

    :goto_a
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v5, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v0, v5, :cond_29

    aget-object v4, v4, v0

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzls;->zzhc()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-nez v8, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Child reported discontinuity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    cmp-long v0, v2, v6

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbp:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v4, v0

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v4, :cond_4f

    aget-object v6, v0, v5

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbm:[Lcom/google/android/gms/internal/ads/zzls;

    aget-object v7, v7, v1

    if-eq v6, v7, :cond_4c

    invoke-interface {v6, v2, v3}, Lcom/google/android/gms/internal/ads/zzls;->zzea(J)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-nez v8, :cond_44

    goto :goto_4c

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Children seeked to different positions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_4f
    return-wide v2
.end method

.method public final zzhd()J
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlw;->zzbbp:[Lcom/google/android/gms/internal/ads/zzls;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_a
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1f

    aget-object v9, v0, v4

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzls;->zzhd()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1c

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    cmp-long v0, v5, v2

    if-nez v0, :cond_24

    return-wide v7

    :cond_24
    return-wide v5
.end method
