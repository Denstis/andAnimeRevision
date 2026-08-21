###### Class com.google.android.gms.internal.ads.zzdbm (com.google.android.gms.internal.ads.zzdbm)
.class final Lcom/google/android/gms/internal/ads/zzdbm;
.super Lcom/google/android/gms/internal/ads/zzdbh;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdbh<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zzgpm:Lcom/google/android/gms/internal/ads/zzdbh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdbh<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient size:I

.field private final transient zzgpn:Ljava/lang/Object;

.field private final transient zzgpo:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbm;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzdbm;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbm;->zzgpm:Lcom/google/android/gms/internal/ads/zzdbh;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdbh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbm;->zzgpn:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbm;->zzgpo:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdbm;->size:I

    return-void
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .registers 7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x27

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Multiple entries with same key: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static zzc(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdbm;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdbm<",
            "TK;TV;>;"
        }
    .end annotation

    array-length p0, p1

    shr-int/lit8 p0, p0, 0x1

    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzdaq;->zzs(II)I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdbg;->zzdr(I)I

    move-result p0

    add-int/lit8 v1, p0, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x80

    if-gt p0, v4, :cond_4b

    new-array p0, p0, [B

    invoke-static {p0, v3}, Ljava/util/Arrays;->fill([BB)V

    :goto_18
    if-ge v2, v0, :cond_bd

    mul-int/lit8 v3, v2, 0x2

    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    aget-object v5, p1, v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdax;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdaz;->zzdp(I)I

    move-result v6

    :goto_2d
    and-int/2addr v6, v1

    aget-byte v7, p0, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_3b

    int-to-byte v3, v3

    aput-byte v3, p0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_3b
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_46
    invoke-static {v4, v5, p1, v7}, Lcom/google/android/gms/internal/ads/zzdbm;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4b
    const v4, 0x8000

    if-gt p0, v4, :cond_89

    new-array p0, p0, [S

    invoke-static {p0, v3}, Ljava/util/Arrays;->fill([SS)V

    :goto_55
    if-ge v2, v0, :cond_bd

    mul-int/lit8 v3, v2, 0x2

    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    aget-object v5, p1, v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdax;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdaz;->zzdp(I)I

    move-result v6

    :goto_6a
    and-int/2addr v6, v1

    aget-short v7, p0, v6

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_79

    int-to-short v3, v3

    aput-short v3, p0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_79
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_84

    add-int/lit8 v6, v6, 0x1

    goto :goto_6a

    :cond_84
    invoke-static {v4, v5, p1, v7}, Lcom/google/android/gms/internal/ads/zzdbm;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_89
    new-array p0, p0, [I

    invoke-static {p0, v3}, Ljava/util/Arrays;->fill([II)V

    :goto_8e
    if-ge v2, v0, :cond_bd

    mul-int/lit8 v4, v2, 0x2

    aget-object v5, p1, v4

    xor-int/lit8 v6, v4, 0x1

    aget-object v6, p1, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzdax;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdaz;->zzdp(I)I

    move-result v7

    :goto_a3
    and-int/2addr v7, v1

    aget v8, p0, v7

    if-ne v8, v3, :cond_ad

    aput v4, p0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_ad
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b8

    add-int/lit8 v7, v7, 0x1

    goto :goto_a3

    :cond_b8
    invoke-static {v5, v6, p1, v8}, Lcom/google/android/gms/internal/ads/zzdbm;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_bd
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbm;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdbm;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbm;->zzgpn:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbm;->zzgpo:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdbm;->size:I

    const/4 v3, 0x0

    if-nez p1, :cond_a

    return-object v3

    :cond_a
    const/4 v4, 0x1

    if-ne v2, v4, :cond_1a

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    aget-object p1, v1, v4

    return-object p1

    :cond_19
    return-object v3

    :cond_1a
    if-nez v0, :cond_1d

    return-object v3

    :cond_1d
    instance-of v2, v0, [B

    if-eqz v2, :cond_48

    move-object v2, v0

    check-cast v2, [B

    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdaz;->zzdp(I)I

    move-result v0

    :goto_2f
    and-int/2addr v0, v5

    aget-byte v6, v2, v0

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_38

    return-object v3

    :cond_38
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    xor-int/lit8 p1, v6, 0x1

    aget-object p1, v1, p1

    return-object p1

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_48
    instance-of v2, v0, [S

    if-eqz v2, :cond_74

    move-object v2, v0

    check-cast v2, [S

    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdaz;->zzdp(I)I

    move-result v0

    :goto_5a
    and-int/2addr v0, v5

    aget-short v6, v2, v0

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_64

    return-object v3

    :cond_64
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    xor-int/lit8 p1, v6, 0x1

    aget-object p1, v1, p1

    return-object p1

    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_74
    check-cast v0, [I

    array-length v2, v0

    sub-int/2addr v2, v4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdaz;->zzdp(I)I

    move-result v5

    :goto_80
    and-int/2addr v5, v2

    aget v6, v0, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_87

    return-object v3

    :cond_87
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_94

    xor-int/lit8 p1, v6, 0x1

    aget-object p1, v1, p1

    return-object p1

    :cond_94
    add-int/lit8 v5, v5, 0x1

    goto :goto_80
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdbm;->size:I

    return v0
.end method

.method final zzaos()Lcom/google/android/gms/internal/ads/zzdbg;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbg<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbm;->zzgpo:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdbm;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbp;-><init>(Lcom/google/android/gms/internal/ads/zzdbh;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final zzaot()Lcom/google/android/gms/internal/ads/zzdbg;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdbg<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbm;->zzgpo:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdbm;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbq;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbr;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdbr;-><init>(Lcom/google/android/gms/internal/ads/zzdbh;Lcom/google/android/gms/internal/ads/zzdbd;)V

    return-object v1
.end method

.method final zzaou()Lcom/google/android/gms/internal/ads/zzday;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzday<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbm;->zzgpo:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdbm;->size:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdbq;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method
