###### Class com.google.android.gms.internal.ads.zzdbp (com.google.android.gms.internal.ads.zzdbp)
.class final Lcom/google/android/gms/internal/ads/zzdbp;
.super Lcom/google/android/gms/internal/ads/zzdbg;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdbg<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient size:I

.field private final transient zzgpo:[Ljava/lang/Object;

.field private final transient zzgps:Lcom/google/android/gms/internal/ads/zzdbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdbh<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient zzgpt:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdbh;[Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdbh<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzgps:Lcom/google/android/gms/internal/ads/zzdbh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzgpo:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzgpt:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdbp;->size:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdbp;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->size:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdbp;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzgpo:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbp;->zzgps:Lcom/google/android/gms/internal/ads/zzdbh;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdbh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbp;->zzaoj()Lcom/google/android/gms/internal/ads/zzdbu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbp;->size:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzaon()Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdbd;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzaoj()Lcom/google/android/gms/internal/ads/zzdbu;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbu<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzaon()Lcom/google/android/gms/internal/ads/zzdbd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbd;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbu;

    return-object v0
.end method

.method final zzaoo()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzaor()Lcom/google/android/gms/internal/ads/zzdbd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbd<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdbo;-><init>(Lcom/google/android/gms/internal/ads/zzdbp;)V

    return-object v0
.end method
