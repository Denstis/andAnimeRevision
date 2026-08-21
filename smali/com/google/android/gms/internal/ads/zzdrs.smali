###### Class com.google.android.gms.internal.ads.zzdrs (com.google.android.gms.internal.ads.zzdrs)
.class final Lcom/google/android/gms/internal/ads/zzdrs;
.super Lcom/google/android/gms/internal/ads/zzdrq;
.source ""


# static fields
.field private static final zzhmn:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdrs;->zzhmn:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdrq;-><init>(Lcom/google/android/gms/internal/ads/zzdrp;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdrp;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdrs;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;JI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdrs;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdrn;

    if-eqz v1, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdro;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/ads/zzdro;-><init>(I)V

    goto :goto_29

    :cond_14
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdss;

    if-eqz v1, :cond_24

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdrd;

    if-eqz v1, :cond_24

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrd;

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/ads/zzdrd;->zzfl(I)Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object p3

    move-object v0, p3

    goto :goto_29

    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_29
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7a

    :cond_2d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrs;->zzhmn:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_46
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v1

    goto :goto_7a

    :cond_4b
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdts;

    if-eqz v1, :cond_5f

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdro;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdro;-><init>(I)V

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdts;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdro;->addAll(Ljava/util/Collection;)Z

    goto :goto_46

    :cond_5f
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdss;

    if-eqz v1, :cond_7a

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdrd;

    if-eqz v1, :cond_7a

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdrd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzaxi()Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrd;->zzfl(I)Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object v0

    goto :goto_29

    :cond_7a
    :goto_7a
    return-object v0
.end method

.method private static zzd(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdrs;->zza(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdrs;->zzd(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zzdrs;->zza(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1b

    if-lez v2, :cond_1b

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    if-lez v1, :cond_1e

    move-object p2, v0

    :cond_1e
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzb(Ljava/lang/Object;J)V
    .registers 7

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdrn;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdrn;->zzbao()Lcom/google/android/gms/internal/ads/zzdrn;

    move-result-object v0

    goto :goto_36

    :cond_11
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrs;->zzhmn:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    :cond_1e
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdss;

    if-eqz v1, :cond_32

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdrd;

    if-eqz v1, :cond_32

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdrd;->zzaxi()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdrd;->zzaxj()V

    :cond_31
    return-void

    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_36
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
