###### Class com.google.android.gms.internal.ads.zzdbg (com.google.android.gms.internal.ads.zzdbg)
.class public abstract Lcom/google/android/gms/internal/ads/zzdbg;
.super Lcom/google/android/gms/internal/ads/zzday;
.source ""

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzday<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient zzgpe:Lcom/google/android/gms/internal/ads/zzdbd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzday;-><init>()V

    return-void
.end method

.method private static varargs zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbg;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdbg<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_6e

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_67

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzdr(I)I

    move-result v2

    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_11
    if-ge v3, p0, :cond_3c

    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzdbk;->zzd(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdaz;->zzdp(I)I

    move-result v10

    :goto_21
    and-int v11, v10, v7

    aget-object v12, v6, v11

    if-nez v12, :cond_30

    add-int/lit8 v10, v8, 0x1

    aput-object v4, p1, v8

    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_39

    :cond_30
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_39

    add-int/lit8 v10, v10, 0x1

    goto :goto_21

    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_3c
    const/4 v3, 0x0

    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_4a

    aget-object p0, p1, v0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdbv;

    invoke-direct {p1, p0, v5}, Lcom/google/android/gms/internal/ads/zzdbv;-><init>(Ljava/lang/Object;I)V

    return-object p1

    :cond_4a
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzdbg;->zzdr(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_54

    move p0, v8

    goto :goto_0

    :cond_54
    array-length p0, p1

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzu(II)Z

    move-result p0

    if-eqz p0, :cond_5f

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_5f
    move-object v4, p1

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdbt;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzdbt;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    :cond_67
    aget-object p0, p1, v0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbg;

    move-result-object p0

    return-object p0

    :cond_6e
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdbt;->zzgpu:Lcom/google/android/gms/internal/ads/zzdbt;

    return-object p0
.end method

.method public static varargs zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbg;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/android/gms/internal/ads/zzdbg<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    array-length v0, p6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7ffffff9

    if-gt v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v3, "the total number of elements must fit in an int"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzdaq;->checkArgument(ZLjava/lang/Object;)V

    array-length v0, p6

    const/4 v3, 0x6

    add-int/2addr v0, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    aput-object p1, v0, v1

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const/4 p0, 0x3

    aput-object p3, v0, p0

    const/4 p0, 0x4

    aput-object p4, v0, p0

    const/4 p0, 0x5

    aput-object p5, v0, p0

    array-length p0, p6

    invoke-static {p6, v2, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbg;->zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbg;

    move-result-object p0

    return-object p0
.end method

.method public static zzae(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/ads/zzdbg<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdbv;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic zzb(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbg;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbg;->zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbg;

    move-result-object p0

    return-object p0
.end method

.method static zzdr(I)I
    .registers 7

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x1

    const v1, 0x2ccccccc

    if-ge p0, v1, :cond_27

    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_13
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    int-to-double v3, p0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_26

    shl-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    return v0

    :cond_27
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    const-string p0, "collection too large"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdaq;->checkArgument(ZLjava/lang/Object;)V

    return v1
.end method

.method public static zzds(I)Lcom/google/android/gms/internal/ads/zzdbj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/android/gms/internal/ads/zzdbj<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "expectedSize"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdax;->zzf(ILjava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdbj;-><init>(I)V

    return-object v0
.end method

.method private static zzu(II)Z
    .registers 3

    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    if-ge p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzv(II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbg;->zzu(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzdbg;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzaoq()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzaoq()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbg;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_23

    const/4 p1, 0x0

    return p1

    :cond_23
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbs;->zza(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdbs;->zzf(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzday;->zzaoj()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v0

    return-object v0
.end method

.method public zzaon()Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzgpe:Lcom/google/android/gms/internal/ads/zzdbd;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzaor()Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbg;->zzgpe:Lcom/google/android/gms/internal/ads/zzdbd;

    :cond_a
    return-object v0
.end method

.method zzaoq()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method zzaor()Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzday;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzc([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object v0

    return-object v0
.end method
