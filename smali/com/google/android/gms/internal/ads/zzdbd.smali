###### Class com.google.android.gms.internal.ads.zzdbd (com.google.android.gms.internal.ads.zzdbd)
.class public abstract Lcom/google/android/gms/internal/ads/zzdbd;
.super Lcom/google/android/gms/internal/ads/zzday;
.source ""

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzday<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzgpb:Lcom/google/android/gms/internal/ads/zzdbx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdbx<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbf;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpp:Lcom/google/android/gms/internal/ads/zzdbd;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdbf;-><init>(Lcom/google/android/gms/internal/ads/zzdbd;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbd;->zzgpb:Lcom/google/android/gms/internal/ads/zzdbx;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzday;-><init>()V

    return-void
.end method

.method public static zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    :goto_7
    if-gtz p0, :cond_11

    aget-object v3, v1, v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdbk;->zzd(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_11
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    return-object p0
.end method

.method public static zzaop()Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpp:Lcom/google/android/gms/internal/ads/zzdbd;

    return-object v0
.end method

.method public static zzb([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_6

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpp:Lcom/google/android/gms/internal/ads/zzdbd;

    return-object p0

    :cond_6
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_18

    aget-object v2, p0, v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdbk;->zzd(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_18
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    return-object p0
.end method

.method static zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpp:Lcom/google/android/gms/internal/ads/zzdbd;

    return-object p0

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdbn;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method static zzc([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    return-object p0
.end method

.method public static zzf(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_39

    check-cast p0, Ljava/util/Collection;

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzday;

    if-eqz v0, :cond_23

    check-cast p0, Lcom/google/android/gms/internal/ads/zzday;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzday;->zzaon()Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzday;->zzaoo()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzday;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    :cond_22
    return-object p0

    :cond_23
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_33

    aget-object v2, p0, v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdbk;->zzd(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_33
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    return-object p0

    :cond_39
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_46

    sget-object p0, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpp:Lcom/google/android/gms/internal/ads/zzdbd;

    return-object p0

    :cond_46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_55

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    return-object p0

    :cond_55
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdbc;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdbc;->zzab(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdba;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdbc;->zza(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/zzdba;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdbc;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgpa:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->zzgoz:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdbb;->size:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdbd;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdaq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    return v1

    :cond_8
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_5b

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_5b

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_32

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v0, :cond_31

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdao;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_31
    return v1

    :cond_32
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    :goto_3b
    if-ge v3, v0, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdao;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    goto :goto_3b

    :cond_54
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_5b

    return v1

    :cond_5b
    return v2
.end method

.method public hashCode()I
    .registers 5

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1a

    mul-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_17

    :goto_b
    if-ge v2, v1, :cond_27

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    return v2

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_17
    :goto_17
    if-ge v2, v1, :cond_27

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    return v2

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_27
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbd;->zzaoj()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-nez p1, :cond_18

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_c
    if-ltz p1, :cond_2e

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_15

    return p1

    :cond_15
    add-int/lit8 p1, p1, -0x1

    goto :goto_c

    :cond_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1e
    if-ltz v1, :cond_2e

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return v1

    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    :cond_2e
    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdbd;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbx;

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzs(II)I

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdbd;->zzgpb:Lcom/google/android/gms/internal/ads/zzdbx;

    return-object p1

    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdbf;-><init>(Lcom/google/android/gms/internal/ads/zzdbd;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdbd;->zzt(II)Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object p1

    return-object p1
.end method

.method zza([Ljava/lang/Object;I)I
    .registers 7

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    add-int v2, p2, v1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    add-int/2addr p2, v0

    return p2
.end method

.method public final zzaoj()Lcom/google/android/gms/internal/ads/zzdbu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbu<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbd;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbx;

    return-object v0
.end method

.method public final zzaon()Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public zzt(II)Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzf(III)V

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p2, v0, :cond_f

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdbn;->zzgpp:Lcom/google/android/gms/internal/ads/zzdbd;

    return-object p1

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbe;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdbe;-><init>(Lcom/google/android/gms/internal/ads/zzdbd;II)V

    return-object v0
.end method
