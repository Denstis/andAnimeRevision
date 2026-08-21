###### Class com.google.android.gms.internal.ads.zzjm (com.google.android.gms.internal.ads.zzjm)
.class public final Lcom/google/android/gms/internal/ads/zzjm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zziw;


# static fields
.field private static final zzank:Lcom/google/android/gms/internal/ads/zzix;

.field private static final zzanl:[B

.field private static final zzanm:[B

.field private static final zzann:Ljava/util/UUID;


# instance fields
.field private zzagh:J

.field private final zzanc:Lcom/google/android/gms/internal/ads/zzjp;

.field private final zzano:Lcom/google/android/gms/internal/ads/zzjk;

.field private final zzanp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzjn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzanq:Z

.field private final zzanr:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzans:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzant:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzanu:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzanv:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzanw:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzanx:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzany:Lcom/google/android/gms/internal/ads/zzoc;

.field private final zzanz:Lcom/google/android/gms/internal/ads/zzoc;

.field private zzaoa:Ljava/nio/ByteBuffer;

.field private zzaob:J

.field private zzaoc:J

.field private zzaod:J

.field private zzaoe:J

.field private zzaof:Lcom/google/android/gms/internal/ads/zzjn;

.field private zzaog:Z

.field private zzaoh:I

.field private zzaoi:J

.field private zzaoj:Z

.field private zzaok:J

.field private zzaol:J

.field private zzaom:J

.field private zzaon:Lcom/google/android/gms/internal/ads/zznw;

.field private zzaoo:Lcom/google/android/gms/internal/ads/zznw;

.field private zzaop:Z

.field private zzaoq:I

.field private zzaor:J

.field private zzaos:J

.field private zzaot:I

.field private zzaou:I

.field private zzaov:[I

.field private zzaow:I

.field private zzaox:I

.field private zzaoy:I

.field private zzaoz:I

.field private zzapa:Z

.field private zzapb:Z

.field private zzapc:Z

.field private zzapd:Z

.field private zzape:B

.field private zzapf:I

.field private zzapg:I

.field private zzaph:I

.field private zzapi:Z

.field private zzapj:Z

.field private zzapk:Lcom/google/android/gms/internal/ads/zziy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzjl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzjm;->zzank:Lcom/google/android/gms/internal/ads/zzix;

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/android/gms/internal/ads/zzjm;->zzanl:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_40

    sput-object v0, Lcom/google/android/gms/internal/ads/zzjm;->zzanm:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzjm;->zzann:Ljava/util/UUID;

    return-void

    nop

    :array_2c
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_40
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjm;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzjf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzjf;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzjm;-><init>(Lcom/google/android/gms/internal/ads/zzjk;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzjk;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoe:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzagh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaok:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaol:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaom:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzano:Lcom/google/android/gms/internal/ads/zzjk;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzano:Lcom/google/android/gms/internal/ads/zzjk;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzjo;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzjo;-><init>(Lcom/google/android/gms/internal/ads/zzjm;Lcom/google/android/gms/internal/ads/zzjl;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzjk;->zza(Lcom/google/android/gms/internal/ads/zzjj;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanq:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzjp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzjp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanc:Lcom/google/android/gms/internal/ads/zzjp;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanp:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoc;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzoc;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoc;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzoc;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanu:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoc;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzoc;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanv:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoc;

    sget-object v0, Lcom/google/android/gms/internal/ads/zznx;->zzbfz:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzoc;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanr:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoc;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzoc;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzans:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzoc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanw:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzoc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanx:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoc;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzoc;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzany:Lcom/google/android/gms/internal/ads/zzoc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzoc;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzoc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanz:Lcom/google/android/gms/internal/ads/zzoc;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zziv;Lcom/google/android/gms/internal/ads/zzjd;I)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanw:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzim()I

    move-result v0

    if-lez v0, :cond_12

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanw:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zzoc;I)V

    goto :goto_17

    :cond_12
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zziv;IZ)I

    move-result p1

    :goto_17
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    return p1
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zziv;Lcom/google/android/gms/internal/ads/zzjn;I)V
    .registers 13

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzapl:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    sget-object p2, Lcom/google/android/gms/internal/ads/zzjm;->zzanl:[B

    array-length p2, p2

    add-int/2addr p2, p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanx:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanx:Lcom/google/android/gms/internal/ads/zzoc;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzjm;->zzanl:[B

    add-int v3, p2, p3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanx:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    sget-object v2, Lcom/google/android/gms/internal/ads/zzjm;->zzanl:[B

    array-length v2, v2

    invoke-interface {p1, v0, v2, p3}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanx:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanx:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzoc;->zzbf(I)V

    return-void

    :cond_38
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzaqp:Lcom/google/android/gms/internal/ads/zzjd;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapa:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_17b

    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzapn:Z

    if-eqz v2, :cond_16f

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoy:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoy:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapb:Z

    const/16 v5, 0x80

    if-nez v2, :cond_76

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    aget-byte v6, v2, v1

    and-int/2addr v6, v5

    if-eq v6, v5, :cond_6e

    aget-byte v2, v2, v1

    iput-byte v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzape:B

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapb:Z

    goto :goto_76

    :cond_6e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_76
    :goto_76
    iget-byte v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzape:B

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v4, :cond_179

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_81

    const/4 v2, 0x1

    goto :goto_82

    :cond_81
    const/4 v2, 0x0

    :goto_82
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoy:I

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoy:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapc:Z

    if-nez v6, :cond_c7

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzany:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    const/16 v7, 0x8

    invoke-interface {p1, v6, v1, v7}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapc:Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    if-eqz v2, :cond_a4

    goto :goto_a5

    :cond_a4
    const/4 v5, 0x0

    :goto_a5
    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v6, v1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-interface {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zzoc;I)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzany:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzany:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-interface {v0, v5, v7}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zzoc;I)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    :cond_c7
    if-eqz v2, :cond_179

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapd:Z

    if-nez v2, :cond_e8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapf:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapd:Z

    :cond_e8
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapf:I

    shl-int/2addr v2, v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzoc;->reset(I)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-interface {p1, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapf:I

    div-int/2addr v2, v3

    add-int/2addr v2, v4

    int-to-short v2, v2

    mul-int/lit8 v5, v2, 0x6

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoa:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_10e

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ge v6, v5, :cond_114

    :cond_10e
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoa:Ljava/nio/ByteBuffer;

    :cond_114
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoa:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoa:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_120
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapf:I

    if-ge v2, v7, :cond_142

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v7

    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_137

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoa:Ljava/nio/ByteBuffer;

    sub-int v6, v7, v6

    int-to-short v6, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_13e

    :cond_137
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoa:Ljava/nio/ByteBuffer;

    sub-int v6, v7, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_13e
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_120

    :cond_142
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    sub-int v2, p3, v2

    sub-int/2addr v2, v6

    rem-int/2addr v7, v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoa:Ljava/nio/ByteBuffer;

    if-ne v7, v4, :cond_150

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_159

    :cond_150
    int-to-short v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoa:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_159
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanz:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoa:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzb([BI)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanz:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-interface {v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zzoc;I)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    goto :goto_179

    :cond_16f
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzapo:[B

    if-eqz v2, :cond_179

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanw:Lcom/google/android/gms/internal/ads/zzoc;

    array-length v6, v2

    invoke-virtual {v5, v2, v6}, Lcom/google/android/gms/internal/ads/zzoc;->zzb([BI)V

    :cond_179
    :goto_179
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapa:Z

    :cond_17b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanw:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzoc;->limit()I

    move-result v2

    add-int/2addr p3, v2

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzapl:Ljava/lang/String;

    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x4

    if-nez v2, :cond_1a2

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzapl:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_198

    goto :goto_1a2

    :cond_198
    :goto_198
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    if-ge v2, p3, :cond_1fa

    sub-int v2, p3, v2

    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzjm;->zza(Lcom/google/android/gms/internal/ads/zziv;Lcom/google/android/gms/internal/ads/zzjd;I)I

    goto :goto_198

    :cond_1a2
    :goto_1a2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzans:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    aput-byte v1, v2, v1

    aput-byte v1, v2, v4

    aput-byte v1, v2, v3

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzaqq:I

    rsub-int/lit8 v4, v3, 0x4

    :goto_1b0
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    if-ge v6, p3, :cond_1fa

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapg:I

    if-nez v6, :cond_1f2

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanw:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzoc;->zzim()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v4, v6

    sub-int v8, v3, v6

    invoke-interface {p1, v2, v7, v8}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    if-lez v6, :cond_1d0

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanw:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v7, v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzoc;->zze([BII)V

    :cond_1d0
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzans:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzans:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapg:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanr:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanr:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-interface {v0, v6, v5}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zzoc;I)V

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    goto :goto_1b0

    :cond_1f2
    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/gms/internal/ads/zzjm;->zza(Lcom/google/android/gms/internal/ads/zziv;Lcom/google/android/gms/internal/ads/zzjd;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapg:I

    goto :goto_1b0

    :cond_1fa
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzapl:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_213

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanu:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanu:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zzoc;I)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    :cond_213
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzjn;J)V
    .registers 15

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapl:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanx:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaos:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_1e

    sget-object v2, Lcom/google/android/gms/internal/ads/zzjm;->zzanm:[B

    goto :goto_71

    :cond_1e
    const-wide v4, 0xd693a400L

    div-long v7, v2, v4

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v4, 0x3938700

    div-long v4, v2, v4

    long-to-int v5, v4

    const v4, 0x3938700

    mul-int v4, v4, v5

    int-to-long v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v9, 0xf4240

    div-long v9, v2, v9

    long-to-int v4, v9

    const v7, 0xf4240

    mul-int v7, v7, v4

    int-to-long v9, v7

    sub-long/2addr v2, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v2, v9

    long-to-int v3, v2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const/4 v5, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const-string v3, "%02d:%02d:%02d,%03d"

    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzof;->zzbh(Ljava/lang/String;)[B

    move-result-object v2

    :goto_71
    const/16 v3, 0x13

    const/16 v4, 0xc

    invoke-static {v2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqp:Lcom/google/android/gms/internal/ads/zzjd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanx:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzoc;->limit()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzjd;->zza(Lcom/google/android/gms/internal/ads/zzoc;I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanx:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzoc;->limit()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    :cond_8e
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqp:Lcom/google/android/gms/internal/ads/zzjd;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoy:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapp:Lcom/google/android/gms/internal/ads/zzjg;

    move-wide v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzjd;->zza(JIIILcom/google/android/gms/internal/ads/zzjg;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapi:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjm;->zzgg()V

    return-void
.end method

.method private static zza([II)[I
    .registers 3

    if-nez p0, :cond_5

    new-array p0, p1, [I

    return-object p0

    :cond_5
    array-length v0, p0

    if-lt v0, p1, :cond_9

    return-object p0

    :cond_9
    array-length p0, p0

    shl-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method static zzag(I)I
    .registers 1

    sparse-switch p0, :sswitch_data_10

    const/4 p0, 0x0

    return p0

    :sswitch_5
    const/4 p0, 0x5

    return p0

    :sswitch_7
    const/4 p0, 0x4

    return p0

    :sswitch_9
    const/4 p0, 0x1

    return p0

    :sswitch_b
    const/4 p0, 0x3

    return p0

    :sswitch_d
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_d
        0x86 -> :sswitch_b
        0x88 -> :sswitch_d
        0x9b -> :sswitch_d
        0x9f -> :sswitch_d
        0xa0 -> :sswitch_9
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xae -> :sswitch_9
        0xb0 -> :sswitch_d
        0xb3 -> :sswitch_d
        0xb5 -> :sswitch_5
        0xb7 -> :sswitch_9
        0xba -> :sswitch_d
        0xbb -> :sswitch_9
        0xd7 -> :sswitch_d
        0xe0 -> :sswitch_9
        0xe1 -> :sswitch_9
        0xe7 -> :sswitch_d
        0xf1 -> :sswitch_d
        0xfb -> :sswitch_d
        0x4254 -> :sswitch_d
        0x4255 -> :sswitch_7
        0x4282 -> :sswitch_b
        0x4285 -> :sswitch_d
        0x42f7 -> :sswitch_d
        0x4489 -> :sswitch_5
        0x47e1 -> :sswitch_d
        0x47e2 -> :sswitch_7
        0x47e7 -> :sswitch_9
        0x47e8 -> :sswitch_d
        0x4dbb -> :sswitch_9
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_d
        0x5034 -> :sswitch_9
        0x5035 -> :sswitch_9
        0x53ab -> :sswitch_7
        0x53ac -> :sswitch_d
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_d
        0x54b2 -> :sswitch_d
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_d
        0x55b0 -> :sswitch_9
        0x55b9 -> :sswitch_d
        0x55ba -> :sswitch_d
        0x55bb -> :sswitch_d
        0x55bc -> :sswitch_d
        0x55bd -> :sswitch_d
        0x55d0 -> :sswitch_9
        0x55d1 -> :sswitch_5
        0x55d2 -> :sswitch_5
        0x55d3 -> :sswitch_5
        0x55d4 -> :sswitch_5
        0x55d5 -> :sswitch_5
        0x55d6 -> :sswitch_5
        0x55d7 -> :sswitch_5
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_5
        0x55da -> :sswitch_5
        0x56aa -> :sswitch_d
        0x56bb -> :sswitch_d
        0x6240 -> :sswitch_9
        0x6264 -> :sswitch_d
        0x63a2 -> :sswitch_7
        0x6d80 -> :sswitch_9
        0x7670 -> :sswitch_9
        0x7672 -> :sswitch_7
        0x22b59c -> :sswitch_b
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_d
        0x114d9b74 -> :sswitch_9
        0x1549a966 -> :sswitch_9
        0x1654ae6b -> :sswitch_9
        0x18538067 -> :sswitch_9
        0x1a45dfa3 -> :sswitch_9
        0x1c53bb6b -> :sswitch_9
        0x1f43b675 -> :sswitch_9
    .end sparse-switch
.end method

.method static zzah(I)Z
    .registers 2

    const v0, 0x1549a966

    if-eq p0, v0, :cond_17

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_17

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_17

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zziv;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->limit()I

    move-result v0

    if-lt v0, p2, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    array-length v2, v1

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzoc;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzoc;->zzb([BI)V

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->limit()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzoc;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzoc;->zzbf(I)V

    return-void
.end method

.method private final zzdu(J)J
    .registers 9

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_13

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzgg()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoz:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaph:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapg:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapa:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapd:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapf:I

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzape:B

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanw:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->reset()V

    return-void
.end method

.method static synthetic zzgh()Ljava/util/UUID;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzjm;->zzann:Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method public final release()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zziv;Lcom/google/android/gms/internal/ads/zzjc;)I
    .registers 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapi:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_3a

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapi:Z

    if-nez v3, :cond_3a

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzano:Lcom/google/android/gms/internal/ads/zzjk;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzjk;->zzb(Lcom/google/android/gms/internal/ads/zziv;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziv;->getPosition()J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoj:Z

    if-eqz v5, :cond_25

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaol:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaok:J

    iput-wide v3, p2, Lcom/google/android/gms/internal/ads/zzjc;->zzamq:J

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoj:Z

    :goto_23
    const/4 v3, 0x1

    goto :goto_37

    :cond_25
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaog:Z

    if-eqz v3, :cond_36

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaol:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_36

    iput-wide v3, p2, Lcom/google/android/gms/internal/ads/zzjc;->zzamq:J

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaol:J

    goto :goto_23

    :cond_36
    const/4 v3, 0x0

    :goto_37
    if-eqz v3, :cond_5

    return v1

    :cond_3a
    if-eqz v2, :cond_3d

    return v0

    :cond_3d
    const/4 p1, -0x1

    return p1
.end method

.method final zza(ID)V
    .registers 5

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_48

    packed-switch p1, :pswitch_data_52

    goto :goto_11

    :pswitch_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqj:F

    :goto_11
    return-void

    :pswitch_12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqi:F

    return-void

    :pswitch_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqh:F

    return-void

    :pswitch_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqg:F

    return-void

    :pswitch_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqf:F

    return-void

    :pswitch_2a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqe:F

    return-void

    :pswitch_30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqd:F

    return-void

    :pswitch_36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqc:F

    return-void

    :pswitch_3c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqb:F

    return-void

    :pswitch_42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqa:F

    return-void

    :cond_48
    double-to-long p1, p2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoe:J

    return-void

    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    double-to-int p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzafn:I

    return-void

    :pswitch_data_52
    .packed-switch 0x55d1
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

.method final zza(IILcom/google/android/gms/internal/ads/zziv;)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v4, :cond_91

    if-eq v1, v5, :cond_91

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_85

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_76

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_58

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_4c

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_33

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzjn;->zzafk:[B

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzjn;->zzafk:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    return-void

    :cond_33
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgv;

    const/16 v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzjn;->zzapq:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    return-void

    :cond_58
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzanv:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzanv:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    sub-int/2addr v6, v2

    invoke-interface {v3, v1, v6, v2}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzanv:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzanv:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzio()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoh:I

    return-void

    :cond_76
    new-array v1, v2, [B

    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-direct {v3, v8, v1}, Lcom/google/android/gms/internal/ads/zzjg;-><init>(I[B)V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzjn;->zzapp:Lcom/google/android/gms/internal/ads/zzjg;

    return-void

    :cond_85
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzjn;->zzapo:[B

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzjn;->zzapo:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zziv;->readFully([BII)V

    return-void

    :cond_91
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoq:I

    const/16 v9, 0x8

    if-nez v4, :cond_b6

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzanc:Lcom/google/android/gms/internal/ads/zzjp;

    invoke-virtual {v4, v3, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzjp;->zza(Lcom/google/android/gms/internal/ads/zziv;ZZI)J

    move-result-wide v10

    long-to-int v4, v10

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaow:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzanc:Lcom/google/android/gms/internal/ads/zzjp;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzjp;->zzgi()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaox:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaos:J

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoq:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->reset()V

    :cond_b6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzanp:Landroid/util/SparseArray;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaow:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzjn;

    if-nez v4, :cond_cc

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaox:I

    sub-int v1, v2, v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zziv;->zzab(I)V

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoq:I

    return-void

    :cond_cc
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoq:I

    if-ne v10, v8, :cond_280

    const/4 v10, 0x3

    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzjm;->zzb(Lcom/google/android/gms/internal/ads/zziv;I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v8

    const/16 v13, 0xff

    if-nez v11, :cond_f7

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaou:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzjm;->zza([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaox:I

    sub-int/2addr v2, v11

    sub-int/2addr v2, v10

    aput v2, v6, v7

    :goto_f4
    const/4 v6, 0x1

    goto/16 :goto_211

    :cond_f7
    if-ne v1, v5, :cond_278

    invoke-direct {v0, v3, v6}, Lcom/google/android/gms/internal/ads/zzjm;->zzb(Lcom/google/android/gms/internal/ads/zziv;I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    aget-byte v14, v14, v10

    and-int/2addr v14, v13

    add-int/2addr v14, v8

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaou:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaou:I

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzjm;->zza([II)[I

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    if-ne v11, v12, :cond_11f

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaox:I

    sub-int/2addr v2, v10

    sub-int/2addr v2, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaou:I

    div-int/2addr v2, v6

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    invoke-static {v10, v7, v6, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_f4

    :cond_11f
    if-ne v11, v8, :cond_156

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    :goto_124
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaou:I

    add-int/lit8 v15, v14, -0x1

    if-ge v6, v15, :cond_14b

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    aput v7, v14, v6

    :cond_12e
    add-int/2addr v10, v8

    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzjm;->zzb(Lcom/google/android/gms/internal/ads/zziv;I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v13

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    aget v16, v15, v6

    add-int v16, v16, v14

    aput v16, v15, v6

    if-eq v14, v13, :cond_12e

    aget v14, v15, v6

    add-int/2addr v11, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_124

    :cond_14b
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    sub-int/2addr v14, v8

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaox:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    aput v2, v6, v14

    goto :goto_f4

    :cond_156
    if-ne v11, v10, :cond_25f

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    :goto_15b
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaou:I

    add-int/lit8 v15, v14, -0x1

    if-ge v6, v15, :cond_206

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    aput v7, v14, v6

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzjm;->zzb(Lcom/google/android/gms/internal/ads/zziv;I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_1fe

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    :goto_177
    if-ge v14, v9, :cond_1c9

    rsub-int/lit8 v18, v14, 0x7

    shl-int v18, v8, v18

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    aget-byte v5, v5, v15

    and-int v5, v5, v18

    if-eqz v5, :cond_1bf

    add-int/2addr v10, v14

    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzjm;->zzb(Lcom/google/android/gms/internal/ads/zziv;I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v5, v5, v15

    and-int/2addr v5, v13

    xor-int/lit8 v15, v18, -0x1

    and-int/2addr v5, v15

    int-to-long v7, v5

    move/from16 v5, v16

    :goto_19a
    move-wide/from16 v16, v7

    if-ge v5, v10, :cond_1b1

    shl-long v7, v16, v9

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    and-int/2addr v5, v13

    int-to-long v12, v5

    or-long/2addr v7, v12

    move/from16 v5, v16

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto :goto_19a

    :cond_1b1
    if-lez v6, :cond_1c9

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v7, 0x1

    shl-long v12, v7, v14

    sub-long/2addr v12, v7

    sub-long v16, v16, v12

    goto :goto_1c9

    :cond_1bf
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto :goto_177

    :cond_1c9
    :goto_1c9
    move-wide/from16 v7, v16

    const-wide/32 v12, -0x80000000

    cmp-long v5, v7, v12

    if-ltz v5, :cond_1f6

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v7, v12

    if-gtz v5, :cond_1f6

    long-to-int v5, v7

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    if-nez v6, :cond_1df

    goto :goto_1e4

    :cond_1df
    add-int/lit8 v8, v6, -0x1

    aget v8, v7, v8

    add-int/2addr v5, v8

    :goto_1e4
    aput v5, v7, v6

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    aget v5, v5, v6

    add-int/2addr v11, v5

    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto/16 :goto_15b

    :cond_1f6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1fe
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_206
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    const/4 v6, 0x1

    sub-int/2addr v14, v6

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaox:I

    sub-int/2addr v2, v7

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    aput v2, v5, v14

    :goto_211
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    const/4 v5, 0x0

    aget-byte v7, v2, v5

    shl-int/lit8 v5, v7, 0x8

    aget-byte v2, v2, v6

    const/16 v6, 0xff

    and-int/2addr v2, v6

    or-int/2addr v2, v5

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaom:J

    int-to-long v7, v2

    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzjm;->zzdu(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaor:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_236

    const/4 v2, 0x1

    goto :goto_237

    :cond_236
    const/4 v2, 0x0

    :goto_237
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzjn;->type:I

    if-eq v6, v5, :cond_24d

    const/16 v6, 0xa3

    if-ne v1, v6, :cond_24b

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzant:Lcom/google/android/gms/internal/ads/zzoc;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    aget-byte v6, v6, v5

    const/16 v5, 0x80

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_24b

    goto :goto_24d

    :cond_24b
    const/4 v5, 0x0

    goto :goto_24e

    :cond_24d
    :goto_24d
    const/4 v5, 0x1

    :goto_24e
    if-eqz v2, :cond_253

    const/high16 v7, -0x80000000

    goto :goto_254

    :cond_253
    const/4 v7, 0x0

    :goto_254
    or-int v2, v5, v7

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoy:I

    const/4 v2, 0x2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoq:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaot:I

    goto :goto_280

    :cond_25f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_278
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_280
    :goto_280
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_2ab

    :goto_284
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaot:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaou:I

    if-ge v1, v2, :cond_2a7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzjm;->zza(Lcom/google/android/gms/internal/ads/zziv;Lcom/google/android/gms/internal/ads/zzjn;I)V

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaor:J

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaot:I

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzjn;->zzapm:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzjm;->zza(Lcom/google/android/gms/internal/ads/zzjn;J)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaot:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaot:I

    goto :goto_284

    :cond_2a7
    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoq:I

    return-void

    :cond_2ab
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjm;->zzaov:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzjm;->zza(Lcom/google/android/gms/internal/ads/zziv;Lcom/google/android/gms/internal/ads/zzjn;I)V

    return-void
.end method

.method final zza(ILjava/lang/String;)V
    .registers 5

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_14

    const v0, 0x22b59c

    if-eq p1, v0, :cond_e

    goto :goto_4b

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzjn;->zza(Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4b

    :cond_14
    const-string p1, "webm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_4b

    :cond_25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapl:Ljava/lang/String;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zziy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zziv;)Z
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzjq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzjq;->zza(Lcom/google/android/gms/internal/ads/zziv;)Z

    move-result p1

    return p1
.end method

.method final zzai(I)V
    .registers 15

    const/16 v0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_245

    const/16 v0, 0xae

    const/4 v3, 0x0

    if-eq p1, v0, :cond_149

    const/16 v0, 0x4dbb

    const-wide/16 v4, -0x1

    const v6, 0x1c53bb6b

    if-eq p1, v0, :cond_131

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_108

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_f5

    const v0, 0x1549a966

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eq p1, v0, :cond_dd

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_c7

    if-eq p1, v6, :cond_2f

    goto/16 :goto_140

    :cond_2f
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaog:Z

    if-nez p1, :cond_140

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoc:J

    cmp-long v0, v9, v4

    if-eqz v0, :cond_b6

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzagh:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaon:Lcom/google/android/gms/internal/ads/zznw;

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->size()I

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoo:Lcom/google/android/gms/internal/ads/zznw;

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->size()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaon:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zznw;->size()I

    move-result v4

    if-eq v0, v4, :cond_5c

    goto :goto_b6

    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaon:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznw;->size()I

    move-result v0

    new-array v4, v0, [I

    new-array v5, v0, [J

    new-array v6, v0, [J

    new-array v7, v0, [J

    const/4 v8, 0x0

    :goto_6b
    if-ge v8, v0, :cond_83

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaon:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zznw;->get(I)J

    move-result-wide v9

    aput-wide v9, v7, v8

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoc:J

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoo:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zznw;->get(I)J

    move-result-wide v11

    add-long/2addr v9, v11

    aput-wide v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6b

    :cond_83
    :goto_83
    add-int/lit8 v8, v0, -0x1

    if-ge v1, v8, :cond_9a

    add-int/lit8 v8, v1, 0x1

    aget-wide v9, v5, v8

    aget-wide v11, v5, v1

    sub-long/2addr v9, v11

    long-to-int v10, v9

    aput v10, v4, v1

    aget-wide v9, v7, v8

    aget-wide v11, v7, v1

    sub-long/2addr v9, v11

    aput-wide v9, v6, v1

    move v1, v8

    goto :goto_83

    :cond_9a
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoc:J

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaob:J

    add-long/2addr v0, v9

    aget-wide v9, v5, v8

    sub-long/2addr v0, v9

    long-to-int v1, v0

    aput v1, v4, v8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzagh:J

    aget-wide v9, v7, v8

    sub-long/2addr v0, v9

    aput-wide v0, v6, v8

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaon:Lcom/google/android/gms/internal/ads/zznw;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoo:Lcom/google/android/gms/internal/ads/zznw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zziu;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zziu;-><init>([I[J[J[J)V

    goto :goto_c1

    :cond_b6
    :goto_b6
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaon:Lcom/google/android/gms/internal/ads/zznw;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoo:Lcom/google/android/gms/internal/ads/zznw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzje;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzagh:J

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzje;-><init>(J)V

    :goto_c1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zziy;->zza(Lcom/google/android/gms/internal/ads/zzjb;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaog:Z

    return-void

    :cond_c7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanp:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_d5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zziy;->zzge()V

    goto :goto_140

    :cond_d5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_dd
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:J

    cmp-long p1, v0, v7

    if-nez p1, :cond_e8

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:J

    :cond_e8
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoe:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_140

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzjm;->zzdu(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzagh:J

    return-void

    :cond_f5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapn:Z

    if-eqz v0, :cond_140

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapo:[B

    if-nez p1, :cond_100

    goto :goto_140

    :cond_100
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_108
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapn:Z

    if-eqz v0, :cond_140

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapp:Lcom/google/android/gms/internal/ads/zzjg;

    if-eqz v0, :cond_129

    new-instance v3, Lcom/google/android/gms/internal/ads/zzin;

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzin$zza;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzin$zza;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzga;->zzaca:Ljava/util/UUID;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzjg;->zzani:[B

    const-string v6, "video/webm"

    invoke-direct {v4, v5, v6, v0}, Lcom/google/android/gms/internal/ads/zzin$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v4, v2, v1

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzin;-><init>([Lcom/google/android/gms/internal/ads/zzin$zza;)V

    iput-object v3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaff:Lcom/google/android/gms/internal/ads/zzin;

    return-void

    :cond_129
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_131
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoh:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_141

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoi:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_141

    if-ne p1, v6, :cond_140

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaok:J

    :cond_140
    :goto_140
    return-void

    :cond_141
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_149
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapl:Ljava/lang/String;

    const-string v0, "V_VP8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "V_VP9"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "V_MPEG2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "V_MPEG4/ISO/SP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "V_MPEG4/ISO/ASP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "V_MPEG4/ISO/AP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "V_MPEG4/ISO/AVC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "V_MS/VFW/FOURCC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "V_THEORA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_OPUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_VORBIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_AAC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_MPEG/L2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_MPEG/L3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_AC3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_EAC3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_TRUEHD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_DTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_FLAC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_MS/ACM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "S_VOBSUB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "S_HDMV/PGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "S_DVBSUB"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22e

    :cond_22d
    const/4 v1, 0x1

    :cond_22e
    if-eqz v1, :cond_242

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzjn;->number:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzjn;->zza(Lcom/google/android/gms/internal/ads/zziy;I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanp:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzjn;->number:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_242
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    return-void

    :cond_245
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoq:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24b

    return-void

    :cond_24b
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapj:Z

    if-nez p1, :cond_254

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoy:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoy:I

    :cond_254
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanp:Landroid/util/SparseArray;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaow:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzjn;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaor:J

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzjm;->zza(Lcom/google/android/gms/internal/ads/zzjn;J)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoq:I

    return-void
.end method

.method final zzc(IJ)V
    .registers 12

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const-string v2, " not supported"

    if-eq p1, v0, :cond_1f4

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_1d5

    const/16 v0, 0x32

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_216

    const/4 v0, 0x7

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_284

    goto/16 :goto_1fa

    :pswitch_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapz:I

    goto/16 :goto_1fa

    :pswitch_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapy:I

    return-void

    :pswitch_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapu:Z

    long-to-int p3, p2

    if-eq p3, v7, :cond_49

    const/16 p2, 0x9

    if-eq p3, p2, :cond_46

    const/4 p1, 0x4

    if-eq p3, p1, :cond_41

    const/4 p1, 0x5

    if-eq p3, p1, :cond_41

    if-eq p3, v1, :cond_41

    if-eq p3, v0, :cond_41

    return-void

    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapv:I

    return-void

    :cond_46
    iput v1, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapv:I

    return-void

    :cond_49
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapv:I

    return-void

    :pswitch_4c
    long-to-int p1, p2

    if-eq p1, v7, :cond_66

    const/16 p2, 0x10

    if-eq p1, p2, :cond_61

    const/16 p2, 0x12

    if-eq p1, p2, :cond_5c

    if-eq p1, v1, :cond_66

    if-eq p1, v0, :cond_66

    return-void

    :cond_5c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput v0, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapw:I

    return-void

    :cond_61
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput v1, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapw:I

    return-void

    :cond_66
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput v5, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapw:I

    return-void

    :pswitch_6b
    long-to-int p1, p2

    if-eq p1, v7, :cond_76

    if-eq p1, v6, :cond_71

    return-void

    :cond_71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput v7, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapx:I

    return-void

    :cond_76
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapx:I

    return-void

    :sswitch_7b
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaod:J

    return-void

    :sswitch_7e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapm:I

    return-void

    :sswitch_84
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqk:I

    return-void

    :sswitch_8a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqm:J

    return-void

    :sswitch_8f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaql:J

    return-void

    :sswitch_94
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    cmp-long v0, p2, v3

    if-nez v0, :cond_9b

    const/4 v1, 0x1

    :cond_9b
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqo:Z

    return-void

    :sswitch_9e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaps:I

    return-void

    :sswitch_a4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapt:I

    return-void

    :sswitch_aa
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapr:I

    return-void

    :sswitch_b0
    long-to-int p1, p2

    if-eqz p1, :cond_cb

    if-eq p1, v7, :cond_c6

    if-eq p1, v5, :cond_c1

    const/16 p2, 0xf

    if-eq p1, p2, :cond_bc

    return-void

    :cond_bc
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput v5, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzafj:I

    return-void

    :cond_c1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput v7, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzafj:I

    return-void

    :cond_c6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzafj:I

    return-void

    :cond_cb
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput v1, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzafj:I

    return-void

    :sswitch_d0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoc:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoi:J

    return-void

    :sswitch_d6
    cmp-long p1, p2, v3

    if-nez p1, :cond_dc

    goto/16 :goto_1fa

    :cond_dc
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f8
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_100

    goto/16 :goto_1fa

    :cond_100
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_11c
    cmp-long p1, p2, v3

    if-nez p1, :cond_122

    goto/16 :goto_1fa

    :cond_122
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_13c
    cmp-long p1, p2, v3

    if-ltz p1, :cond_148

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_148

    goto/16 :goto_1fa

    :cond_148
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_164
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_16c

    goto/16 :goto_1fa

    :cond_16c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_186
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapj:Z

    return-void

    :sswitch_189
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaop:Z

    if-nez p1, :cond_1fa

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoo:Lcom/google/android/gms/internal/ads/zznw;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zznw;->add(J)V

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaop:Z

    return-void

    :sswitch_195
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzjm;->zzdu(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaom:J

    return-void

    :sswitch_19c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->number:I

    return-void

    :sswitch_1a2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->height:I

    return-void

    :sswitch_1a8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaon:Lcom/google/android/gms/internal/ads/zznw;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzjm;->zzdu(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zznw;->add(J)V

    return-void

    :sswitch_1b2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->width:I

    return-void

    :sswitch_1b8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzafm:I

    return-void

    :sswitch_1be
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzjm;->zzdu(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaos:J

    return-void

    :sswitch_1c5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    cmp-long v0, p2, v3

    if-nez v0, :cond_1cc

    const/4 v1, 0x1

    :cond_1cc
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzaqn:Z

    return-void

    :sswitch_1cf
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzjn;->type:I

    return-void

    :cond_1d5
    cmp-long p1, p2, v3

    if-nez p1, :cond_1da

    goto :goto_1fa

    :cond_1da
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f4
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_1fb

    :cond_1fa
    :goto_1fa
    return-void

    :cond_1fb
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_216
    .sparse-switch
        0x83 -> :sswitch_1cf
        0x88 -> :sswitch_1c5
        0x9b -> :sswitch_1be
        0x9f -> :sswitch_1b8
        0xb0 -> :sswitch_1b2
        0xb3 -> :sswitch_1a8
        0xba -> :sswitch_1a2
        0xd7 -> :sswitch_19c
        0xe7 -> :sswitch_195
        0xf1 -> :sswitch_189
        0xfb -> :sswitch_186
        0x4254 -> :sswitch_164
        0x4285 -> :sswitch_13c
        0x42f7 -> :sswitch_11c
        0x47e1 -> :sswitch_f8
        0x47e8 -> :sswitch_d6
        0x53ac -> :sswitch_d0
        0x53b8 -> :sswitch_b0
        0x54b0 -> :sswitch_aa
        0x54b2 -> :sswitch_a4
        0x54ba -> :sswitch_9e
        0x55aa -> :sswitch_94
        0x56aa -> :sswitch_8f
        0x56bb -> :sswitch_8a
        0x6264 -> :sswitch_84
        0x23e383 -> :sswitch_7e
        0x2ad7b1 -> :sswitch_7b
    .end sparse-switch

    :pswitch_data_284
    .packed-switch 0x55b9
        :pswitch_6b
        :pswitch_4c
        :pswitch_2b
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method

.method public final zzc(JJ)V
    .registers 5

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaom:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoq:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzano:Lcom/google/android/gms/internal/ads/zzjk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjk;->reset()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanc:Lcom/google/android/gms/internal/ads/zzjp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzjp;->reset()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjm;->zzgg()V

    return-void
.end method

.method final zzd(IJJ)V
    .registers 11

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_93

    const/16 v0, 0xae

    if-eq p1, v0, :cond_8a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_87

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_81

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7c

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_77

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_76

    const v0, 0x18538067

    if-eq p1, v0, :cond_5f

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_50

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_30

    goto :goto_7b

    :cond_30
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaog:Z

    if-nez p1, :cond_7b

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzanq:Z

    if-eqz p1, :cond_41

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaok:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_41

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoj:Z

    return-void

    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapk:Lcom/google/android/gms/internal/ads/zziy;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzje;

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzagh:J

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzje;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zziy;->zza(Lcom/google/android/gms/internal/ads/zzjb;)V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaog:Z

    return-void

    :cond_50
    new-instance p1, Lcom/google/android/gms/internal/ads/zznw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zznw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaon:Lcom/google/android/gms/internal/ads/zznw;

    new-instance p1, Lcom/google/android/gms/internal/ads/zznw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zznw;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoo:Lcom/google/android/gms/internal/ads/zznw;

    return-void

    :cond_5f
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoc:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_72

    cmp-long p1, v3, p2

    if-nez p1, :cond_6a

    goto :goto_72

    :cond_6a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    :goto_72
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoc:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaob:J

    :cond_76
    return-void

    :cond_77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapu:Z

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzjn;->zzapn:Z

    return-void

    :cond_81
    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoh:I

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaoi:J

    return-void

    :cond_87
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaop:Z

    return-void

    :cond_8a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzjn;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Lcom/google/android/gms/internal/ads/zzjl;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzaof:Lcom/google/android/gms/internal/ads/zzjn;

    return-void

    :cond_93
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjm;->zzapj:Z

    return-void
.end method
