###### Class com.google.android.gms.internal.ads.zzdro (com.google.android.gms.internal.ads.zzdro)
.class public final Lcom/google/android/gms/internal/ads/zzdro;
.super Lcom/google/android/gms/internal/ads/zzdpg;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrn;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdpg<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzdrn;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzhmi:Lcom/google/android/gms/internal/ads/zzdro;

.field private static final zzhmj:Lcom/google/android/gms/internal/ads/zzdrn;


# instance fields
.field private final zzhmk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdro;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdro;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmi:Lcom/google/android/gms/internal/ads/zzdro;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzaxj()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmi:Lcom/google/android/gms/internal/ads/zzdro;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmj:Lcom/google/android/gms/internal/ads/zzdrn;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdro;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdro;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    return-void
.end method

.method private static zzam(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_7
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzaxn()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    check-cast p0, [B

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzad([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .registers 4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzaxk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzaxk()V

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzdrn;

    if-eqz v0, :cond_d

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdrn;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdrn;->zzban()Ljava/util/List;

    move-result-object p2

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdro;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdro;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final clear()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzaxk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final bridge synthetic equals(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_d
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v1, :cond_23

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzaxn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzaxo()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_22
    return-object v1

    :cond_23
    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzad([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzac([B)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_34
    return-object v1
.end method

.method public final bridge synthetic hashCode()I
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdpg;->hashCode()I

    move-result v0

    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzaxk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdro;->zzam(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpg;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzaxk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdro;->zzam(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic zzaxi()Z
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzaxi()Z

    move-result v0

    return v0
.end method

.method public final zzban()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzbao()Lcom/google/android/gms/internal/ads/zzdrn;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdro;->zzaxi()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdts;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdts;-><init>(Lcom/google/android/gms/internal/ads/zzdrn;)V

    return-object v0

    :cond_c
    return-object p0
.end method

.method public final zzdb(Lcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpg;->zzaxk()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final synthetic zzfl(I)Lcom/google/android/gms/internal/ads/zzdrd;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdro;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdro;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdro;-><init>(Ljava/util/ArrayList;)V

    return-object p1

    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzgq(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdro;->zzhmk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
