###### Class com.google.android.gms.internal.ads.zzdvl (com.google.android.gms.internal.ads.zzdvl)
.class public Lcom/google/android/gms/internal/ads/zzdvl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbe;
.implements Ljava/io/Closeable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbe;",
        "Ljava/io/Closeable;",
        "Ljava/util/Iterator<",
        "Lcom/google/android/gms/internal/ads/zzbb;",
        ">;"
    }
.end annotation


# static fields
.field private static zzcp:Lcom/google/android/gms/internal/ads/zzdvt;

.field private static final zzhwv:Lcom/google/android/gms/internal/ads/zzbb;


# instance fields
.field zzaqu:J

.field zzbch:J

.field protected zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

.field protected zzhww:Lcom/google/android/gms/internal/ads/zzba;

.field private zzhwx:Lcom/google/android/gms/internal/ads/zzbb;

.field zzhwy:J

.field private zzhwz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvo;

    const-string v1, "eof "

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwv:Lcom/google/android/gms/internal/ads/zzbb;

    const-class v0, Lcom/google/android/gms/internal/ads/zzdvl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdvt;->zzn(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdvt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvl;->zzcp:Lcom/google/android/gms/internal/ads/zzdvt;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwx:Lcom/google/android/gms/internal/ads/zzbb;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwy:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzbch:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzaqu:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwz:Ljava/util/List;

    return-void
.end method

.method private final zzbdd()Lcom/google/android/gms/internal/ads/zzbb;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwx:Lcom/google/android/gms/internal/ads/zzbb;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwv:Lcom/google/android/gms/internal/ads/zzbb;

    if-eq v0, v1, :cond_c

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwx:Lcom/google/android/gms/internal/ads/zzbb;

    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    if-eqz v0, :cond_41

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwy:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzaqu:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_41

    :try_start_18
    monitor-enter v0
    :try_end_19
    .catch Ljava/io/EOFException; {:try_start_18 .. :try_end_19} :catch_3b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_19} :catch_35

    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwy:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdvn;->zzew(J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhww:Lcom/google/android/gms/internal/ads/zzba;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-interface {v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzba;->zza(Lcom/google/android/gms/internal/ads/zzdvn;Lcom/google/android/gms/internal/ads/zzbe;)Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdvn;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwy:J

    monitor-exit v0

    return-object v1

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_32

    :try_start_34
    throw v1
    :try_end_35
    .catch Ljava/io/EOFException; {:try_start_34 .. :try_end_35} :catch_3b
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_35} :catch_35

    :catch_35
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :catch_3b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_41
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwv:Lcom/google/android/gms/internal/ads/zzbb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwx:Lcom/google/android/gms/internal/ads/zzbb;

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdvn;->close()V

    return-void
.end method

.method public hasNext()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwx:Lcom/google/android/gms/internal/ads/zzbb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwv:Lcom/google/android/gms/internal/ads/zzbb;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    return v2

    :cond_8
    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdvl;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwx:Lcom/google/android/gms/internal/ads/zzbb;
    :try_end_14
    .catch Ljava/util/NoSuchElementException; {:try_start_c .. :try_end_14} :catch_15

    return v1

    :catch_15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwv:Lcom/google/android/gms/internal/ads/zzbb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwx:Lcom/google/android/gms/internal/ads/zzbb;

    return v2
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdvl;->zzbdd()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwz:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    if-lez v1, :cond_25

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwz:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbb;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_37
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzdvn;JLcom/google/android/gms/internal/ads/zzba;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzbch:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwy:J

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->position()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdvn;->zzew(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->position()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzaqu:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhww:Lcom/google/android/gms/internal/ads/zzba;

    return-void
.end method

.method public final zzbdc()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbb;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwx:Lcom/google/android/gms/internal/ads/zzbb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwv:Lcom/google/android/gms/internal/ads/zzbb;

    if-eq v0, v1, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwz:Ljava/util/List;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzdvr;-><init>(Ljava/util/List;Ljava/util/Iterator;)V

    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwz:Ljava/util/List;

    return-object v0
.end method
