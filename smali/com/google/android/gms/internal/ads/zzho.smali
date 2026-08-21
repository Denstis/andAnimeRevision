###### Class com.google.android.gms.internal.ads.zzho (com.google.android.gms.internal.ads.zzho)
.class public final Lcom/google/android/gms/internal/ads/zzho;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zzahn:Z = false

.field private static zzaho:Z = false


# instance fields
.field private streamType:I

.field private zzadh:Lcom/google/android/gms/internal/ads/zzgu;

.field private zzafn:I

.field private final zzahp:Lcom/google/android/gms/internal/ads/zzhf;

.field private final zzahq:Lcom/google/android/gms/internal/ads/zzhz;

.field private final zzahr:Lcom/google/android/gms/internal/ads/zzie;

.field private final zzahs:[Lcom/google/android/gms/internal/ads/zzhe;

.field private final zzaht:Lcom/google/android/gms/internal/ads/zzhu;

.field private final zzahu:Landroid/os/ConditionVariable;

.field private final zzahv:[J

.field private final zzahw:Lcom/google/android/gms/internal/ads/zzhq;

.field private final zzahx:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzhx;",
            ">;"
        }
    .end annotation
.end field

.field private zzahy:Landroid/media/AudioTrack;

.field private zzahz:I

.field private zzaia:I

.field private zzaib:I

.field private zzaic:Z

.field private zzaid:I

.field private zzaie:J

.field private zzaif:Lcom/google/android/gms/internal/ads/zzgu;

.field private zzaig:J

.field private zzaih:J

.field private zzaii:Ljava/nio/ByteBuffer;

.field private zzaij:I

.field private zzaik:I

.field private zzail:I

.field private zzaim:J

.field private zzain:J

.field private zzaio:Z

.field private zzaip:J

.field private zzaiq:Ljava/lang/reflect/Method;

.field private zzair:I

.field private zzais:J

.field private zzait:J

.field private zzaiu:I

.field private zzaiv:J

.field private zzaiw:J

.field private zzaix:I

.field private zzaiy:I

.field private zzaiz:J

.field private zzaja:J

.field private zzajb:J

.field private zzajc:[Lcom/google/android/gms/internal/ads/zzhe;

.field private zzajd:[Ljava/nio/ByteBuffer;

.field private zzaje:Ljava/nio/ByteBuffer;

.field private zzajf:Ljava/nio/ByteBuffer;

.field private zzajg:[B

.field private zzajh:I

.field private zzaji:I

.field private zzajj:Z

.field private zzajk:Z

.field private zzajl:I

.field private zzajm:Z

.field private zzajn:Z

.field private zzajo:J

.field private zzcw:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhf;[Lcom/google/android/gms/internal/ads/zzhe;Lcom/google/android/gms/internal/ads/zzhu;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahp:Lcom/google/android/gms/internal/ads/zzhf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaht:Lcom/google/android/gms/internal/ads/zzhu;

    new-instance p3, Landroid/os/ConditionVariable;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahu:Landroid/os/ConditionVariable;

    sget p3, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p3, v1, :cond_22

    :try_start_16
    const-class p3, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    invoke-virtual {p3, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiq:Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    nop

    :cond_22
    :goto_22
    sget p3, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_30

    new-instance p1, Lcom/google/android/gms/internal/ads/zzht;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzht;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    goto :goto_37

    :cond_30
    new-instance p3, Lcom/google/android/gms/internal/ads/zzhq;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzhq;-><init>(Lcom/google/android/gms/internal/ads/zzhr;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    :goto_37
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahq:Lcom/google/android/gms/internal/ads/zzhz;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzie;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzie;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahr:Lcom/google/android/gms/internal/ads/zzie;

    array-length p1, p2

    const/4 p3, 0x3

    add-int/2addr p1, p3

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzhe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahs:[Lcom/google/android/gms/internal/ads/zzhe;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahs:[Lcom/google/android/gms/internal/ads/zzhe;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzic;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzic;-><init>()V

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahs:[Lcom/google/android/gms/internal/ads/zzhe;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahq:Lcom/google/android/gms/internal/ads/zzhz;

    aput-object v1, p1, v0

    array-length v0, p2

    const/4 v1, 0x2

    invoke-static {p2, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahs:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length p2, p2

    add-int/2addr p2, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahr:Lcom/google/android/gms/internal/ads/zzie;

    aput-object v0, p1, p2

    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahv:[J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzcw:F

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzho;->streamType:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajl:I

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgu;->zzafz:Lcom/google/android/gms/internal/ads/zzgu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaji:I

    new-array p1, v2, [Lcom/google/android/gms/internal/ads/zzhe;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajc:[Lcom/google/android/gms/internal/ads/zzhe;

    new-array p1, v2, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajd:[Ljava/nio/ByteBuffer;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    return-void
.end method

.method private final isInitialized()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzho;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahu:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private static zzaw(Ljava/lang/String;)I
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_48

    goto :goto_34

    :sswitch_c
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x3

    goto :goto_35

    :sswitch_16
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :sswitch_20
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x0

    goto :goto_35

    :sswitch_2a
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x2

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p0, -0x1

    :goto_35
    if-eqz p0, :cond_45

    if-eq p0, v4, :cond_43

    if-eq p0, v3, :cond_41

    if-eq p0, v2, :cond_3e

    return v1

    :cond_3e
    const/16 p0, 0x8

    return p0

    :cond_41
    const/4 p0, 0x7

    return p0

    :cond_43
    const/4 p0, 0x6

    return p0

    :cond_45
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_48
    .sparse-switch
        -0x41455b98 -> :sswitch_2a
        0xb269698 -> :sswitch_20
        0x59ae0c65 -> :sswitch_16
        0x59c2dc42 -> :sswitch_c
    .end sparse-switch
.end method

.method private final zzb(Ljava/nio/ByteBuffer;J)Z
    .registers 12

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajf:Ljava/nio/ByteBuffer;

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    if-ne v0, p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    goto :goto_3b

    :cond_18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajf:Ljava/nio/ByteBuffer;

    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-ge v0, v2, :cond_3b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajg:[B

    if-eqz v4, :cond_29

    array-length v4, v4

    if-ge v4, v0, :cond_2d

    :cond_29
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajg:[B

    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajg:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajh:I

    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    sget v4, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    if-ge v4, v2, :cond_79

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiv:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhq;->zzfi()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiu:I

    int-to-long v6, v2

    mul-long v4, v4, v6

    sub-long/2addr p2, v4

    long-to-int p3, p2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaid:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_76

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajg:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajh:I

    invoke-virtual {p3, v2, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_f2

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajh:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajh:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_f2

    :cond_76
    :goto_76
    const/4 p2, 0x0

    goto/16 :goto_f2

    :cond_79
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajm:Z

    if-eqz v2, :cond_ec

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_88

    const/4 v2, 0x1

    goto :goto_89

    :cond_88
    const/4 v2, 0x0

    :goto_89
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaii:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_a9

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaii:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaii:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaii:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_a9
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaij:I

    if-nez v4, :cond_c5

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaii:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaii:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    const-wide/16 v6, 0x3e8

    mul-long p2, p2, v6

    invoke-virtual {v4, v5, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaii:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaij:I

    :cond_c5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaii:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_dc

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaii:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3, p2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_d9

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaij:I

    move p2, p3

    goto :goto_f2

    :cond_d9
    if-ge p3, p2, :cond_dc

    goto :goto_76

    :cond_dc
    invoke-virtual {v2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_e5

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaij:I

    goto :goto_ea

    :cond_e5
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaij:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaij:I

    :goto_ea
    move p2, p1

    goto :goto_f2

    :cond_ec
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {p2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    :cond_f2
    :goto_f2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajo:J

    if-ltz p2, :cond_117

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    if-nez p1, :cond_104

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiv:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiv:J

    :cond_104
    if-ne p2, v0, :cond_116

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    if-eqz p1, :cond_112

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiw:J

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaix:I

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiw:J

    :cond_112
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajf:Ljava/nio/ByteBuffer;

    return v1

    :cond_116
    return v3

    :cond_117
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(I)V

    goto :goto_11e

    :goto_11d
    throw p1

    :goto_11e
    goto :goto_11d
.end method

.method private final zzdp(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajc:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v0, v0

    move v1, v0

    :goto_4
    if-ltz v1, :cond_3e

    if-lez v1, :cond_f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajd:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_16

    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaje:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_14

    goto :goto_16

    :cond_14
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    :goto_16
    if-ne v1, v0, :cond_1c

    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzho;->zzb(Ljava/nio/ByteBuffer;J)Z

    goto :goto_34

    :cond_1c
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajc:[Lcom/google/android/gms/internal/ads/zzhe;

    aget-object v3, v3, v1

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzhe;->zzi(Ljava/nio/ByteBuffer;)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzhe;->zzew()Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajd:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_34

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_34
    :goto_34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3b

    return-void

    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_3e
    return-void
.end method

.method private final zzdq(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzafn:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final zzdr(J)J
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzafn:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final zzex()V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahs:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_1e

    aget-object v5, v1, v4

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhe;->isActive()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_18
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhe;->flush()V

    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzhe;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzhe;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajc:[Lcom/google/android/gms/internal/ads/zzhe;

    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajd:[Ljava/nio/ByteBuffer;

    :goto_30
    if-ge v3, v1, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajc:[Lcom/google/android/gms/internal/ads/zzhe;

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->flush()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajd:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhe;->zzew()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_44
    return-void
.end method

.method private final zzfa()Z
    .registers 10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaji:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajc:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v0, v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaji:I

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaji:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajc:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_36

    aget-object v4, v5, v4

    if-eqz v0, :cond_28

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhe;->zzev()V

    :cond_28
    invoke-direct {p0, v7, v8}, Lcom/google/android/gms/internal/ads/zzho;->zzdp(J)V

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhe;->zzeo()Z

    move-result v0

    if-nez v0, :cond_32

    return v3

    :cond_32
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaji:I

    add-int/2addr v0, v2

    goto :goto_10

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_42

    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzho;->zzb(Ljava/nio/ByteBuffer;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_42

    return v3

    :cond_42
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaji:I

    return v2
.end method

.method private final zzfe()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzcw:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzcw:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_1b
    return-void
.end method

.method private final zzff()J
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiw:J

    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiv:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiu:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzfg()V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaim:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzail:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaik:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzain:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaio:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaip:J

    return-void
.end method

.method private final zzfh()Z
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaib:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajk:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhq;->pause()V

    :cond_11
    return-void
.end method

.method public final play()V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajk:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaja:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_17
    return-void
.end method

.method public final release()V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzho;->reset()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahs:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhe;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_12
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajl:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajk:Z

    return-void
.end method

.method public final reset()V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_8a

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzais:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzait:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiv:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiw:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaix:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaif:Lcom/google/android/gms/internal/ads/zzgu;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaif:Lcom/google/android/gms/internal/ads/zzgu;

    goto :goto_33

    :cond_1d
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhx;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhx;->zza(Lcom/google/android/gms/internal/ads/zzhx;)Lcom/google/android/gms/internal/ads/zzgu;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    :cond_33
    :goto_33
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaig:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaih:J

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaje:Ljava/nio/ByteBuffer;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajf:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    :goto_41
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajc:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length v6, v5

    if-ge v3, v6, :cond_56

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhe;->flush()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajd:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhe;->zzew()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_56
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajj:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaji:I

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaii:Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaij:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajb:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_74

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Landroid/media/AudioTrack;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahu:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhr;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzhr;-><init>(Lcom/google/android/gms/internal/ads/zzho;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_8a
    return-void
.end method

.method public final setStreamType(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzho;->streamType:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzho;->streamType:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajm:Z

    if-eqz p1, :cond_c

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzho;->reset()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajl:I

    return-void
.end method

.method public final setVolume(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzcw:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzcw:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfe()V

    :cond_b
    return-void
.end method

.method public final zza(Ljava/lang/String;IIII[I)V
    .registers 14

    const-string p5, "audio/raw"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x1

    xor-int/2addr p5, v0

    if-eqz p5, :cond_f

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzho;->zzaw(Ljava/lang/String;)I

    move-result p1

    goto :goto_10

    :cond_f
    move p1, p4

    :goto_10
    const/4 v1, 0x0

    if-nez p5, :cond_4f

    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/zzof;->zzf(II)I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzair:I

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahq:Lcom/google/android/gms/internal/ads/zzhz;

    invoke-virtual {p4, p6}, Lcom/google/android/gms/internal/ads/zzhz;->zzb([I)V

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahs:[Lcom/google/android/gms/internal/ads/zzhe;

    array-length p6, p4

    move v3, p1

    move v2, p2

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_25
    if-ge p1, p6, :cond_46

    aget-object v4, p4, p1

    :try_start_29
    invoke-interface {v4, p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzhe;->zzb(III)Z

    move-result v5
    :try_end_2d
    .catch Lcom/google/android/gms/internal/ads/zzhh; {:try_start_29 .. :try_end_2d} :catch_3f

    or-int/2addr p2, v5

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhe;->isActive()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhe;->zzet()I

    move-result v2

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhe;->zzeu()I

    move-result v3

    :cond_3c
    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    :catch_3f
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhs;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzhs;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_46
    if-eqz p2, :cond_4b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->zzex()V

    :cond_4b
    move p4, p2

    move p2, v2

    move p1, v3

    goto :goto_50

    :cond_4f
    const/4 p4, 0x0

    :goto_50
    const/16 p6, 0xfc

    const/16 v2, 0xc

    packed-switch p2, :pswitch_data_152

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhs;

    const/16 p3, 0x26

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unsupported channel count: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhs;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_70
    sget v3, Lcom/google/android/gms/internal/ads/zzga;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_86

    :pswitch_73
    const/16 v3, 0x4fc

    goto :goto_86

    :pswitch_76
    const/16 v3, 0xfc

    goto :goto_86

    :pswitch_79
    const/16 v3, 0xdc

    goto :goto_86

    :pswitch_7c
    const/16 v3, 0xcc

    goto :goto_86

    :pswitch_7f
    const/16 v3, 0x1c

    goto :goto_86

    :pswitch_82
    const/16 v3, 0xc

    goto :goto_86

    :pswitch_85
    const/4 v3, 0x4

    :goto_86
    sget v4, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, 0x5

    if-gt v4, v5, :cond_ad

    sget-object v4, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v5, "foster"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    sget-object v4, Lcom/google/android/gms/internal/ads/zzof;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "NVIDIA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    const/4 v4, 0x3

    if-eq p2, v4, :cond_ae

    if-eq p2, v6, :cond_ae

    const/4 p6, 0x7

    if-eq p2, p6, :cond_aa

    goto :goto_ad

    :cond_aa
    sget p6, Lcom/google/android/gms/internal/ads/zzga;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_ae

    :cond_ad
    :goto_ad
    move p6, v3

    :cond_ae
    :goto_ae
    sget v3, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v4, 0x19

    if-gt v3, v4, :cond_c4

    sget-object v3, Lcom/google/android/gms/internal/ads/zzof;->DEVICE:Ljava/lang/String;

    const-string v4, "fugu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    if-eqz p5, :cond_c4

    if-ne p2, v0, :cond_c4

    const/16 p6, 0xc

    :cond_c4
    if-nez p4, :cond_d9

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result p4

    if-eqz p4, :cond_d9

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaia:I

    if-ne p4, p1, :cond_d9

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzafn:I

    if-ne p4, p3, :cond_d9

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahz:I

    if-ne p4, p6, :cond_d9

    return-void

    :cond_d9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzho;->reset()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaia:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzafn:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahz:I

    const/4 p4, 0x2

    if-eqz p5, :cond_e8

    goto :goto_e9

    :cond_e8
    const/4 p1, 0x2

    :goto_e9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaib:I

    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/zzof;->zzf(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiu:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaib:I

    if-eqz p5, :cond_102

    if-eq p1, v6, :cond_ff

    const/4 p2, 0x6

    if-ne p1, p2, :cond_fb

    goto :goto_ff

    :cond_fb
    const p1, 0xc000

    goto :goto_136

    :cond_ff
    :goto_ff
    const/16 p1, 0x5000

    goto :goto_136

    :cond_102
    invoke-static {p3, p6, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_10a

    goto :goto_10b

    :cond_10a
    const/4 v0, 0x0

    :goto_10b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    shl-int/lit8 p2, p1, 0x2

    const-wide/32 p3, 0x3d090

    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzho;->zzdr(J)J

    move-result-wide p3

    long-to-int p4, p3

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiu:I

    mul-int p3, p3, p4

    int-to-long v0, p1

    const-wide/32 v2, 0xb71b0

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzho;->zzdr(J)J

    move-result-wide v2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiu:I

    int-to-long v4, p1

    mul-long v2, v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    if-ge p2, p3, :cond_132

    move p1, p3

    goto :goto_136

    :cond_132
    if-le p2, p1, :cond_135

    goto :goto_136

    :cond_135
    move p1, p2

    :goto_136
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaid:I

    if-eqz p5, :cond_140

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_14a

    :cond_140
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaid:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiu:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzho;->zzdq(J)J

    move-result-wide p1

    :goto_14a
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaie:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzho;->zzb(Lcom/google/android/gms/internal/ads/zzgu;)Lcom/google/android/gms/internal/ads/zzgu;

    return-void

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
    .end packed-switch
.end method

.method public final zza(Ljava/nio/ByteBuffer;J)Z
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaje:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_11

    if-ne v0, v4, :cond_f

    goto :goto_11

    :cond_f
    const/4 v4, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v4, 0x1

    :goto_12
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_e6

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahu:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajm:Z

    if-eqz v4, :cond_66

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzafn:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahz:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaib:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaid:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajl:I

    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v10, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v11

    new-instance v10, Landroid/media/AudioFormat$Builder;

    invoke-direct {v10}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v10, v8}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v12

    new-instance v4, Landroid/media/AudioTrack;

    const/4 v14, 0x1

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    :goto_63
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    goto :goto_9d

    :cond_66
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajl:I

    if-nez v4, :cond_7c

    new-instance v4, Landroid/media/AudioTrack;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzho;->streamType:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzho;->zzafn:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahz:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaib:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaid:I

    const/4 v14, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_63

    :cond_7c
    new-instance v8, Landroid/media/AudioTrack;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzho;->streamType:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzho;->zzafn:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahz:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaib:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaid:I

    const/16 v22, 0x1

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    :goto_9d
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v6, :cond_ce

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajl:I

    if-eq v8, v4, :cond_b6

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajl:I

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaht:Lcom/google/android/gms/internal/ads/zzhu;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/zzhu;->zzq(I)V

    :cond_b6
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfh()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzhq;->zza(Landroid/media/AudioTrack;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfe()V

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajn:Z

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajk:Z

    if-eqz v4, :cond_e6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->play()V

    goto :goto_e6

    :cond_ce
    :try_start_ce
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d3} :catch_d8
    .catchall {:try_start_ce .. :try_end_d3} :catchall_d4

    goto :goto_d8

    :catchall_d4
    move-exception v0

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    throw v0

    :catch_d8
    :goto_d8
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzho;->zzafn:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahz:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaid:I

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(IIII)V

    throw v0

    :cond_e6
    :goto_e6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfh()Z

    move-result v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    if-eqz v4, :cond_10d

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v10, :cond_fa

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajn:Z

    return v5

    :cond_fa
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_10d

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhq;->zzfi()J

    move-result-wide v11

    cmp-long v4, v11, v8

    if-eqz v4, :cond_10d

    return v5

    :cond_10d
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajn:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfb()Z

    move-result v11

    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajn:Z

    if-eqz v4, :cond_13a

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajn:Z

    if-nez v4, :cond_13a

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_13a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzho;->zzajo:J

    sub-long v19, v11, v13

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaht:Lcom/google/android/gms/internal/ads/zzhu;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaid:I

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaie:J

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzga;->zzdg(J)J

    move-result-wide v17

    move/from16 v16, v4

    invoke-interface/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzhu;->zzc(IJJ)V

    :cond_13a
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaje:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_23c

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_145

    return v6

    :cond_145
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    if-eqz v4, :cond_186

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaix:I

    if-nez v4, :cond_186

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaib:I

    const/4 v11, 0x7

    if-eq v4, v11, :cond_180

    const/16 v11, 0x8

    if-ne v4, v11, :cond_157

    goto :goto_180

    :cond_157
    const/4 v11, 0x5

    if-ne v4, v11, :cond_15f

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhc;->zzes()I

    move-result v4

    goto :goto_184

    :cond_15f
    const/4 v11, 0x6

    if-ne v4, v11, :cond_167

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhc;->zzh(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_184

    :cond_167
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_180
    :goto_180
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhy;->zzj(Ljava/nio/ByteBuffer;)I

    move-result v4

    :goto_184
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaix:I

    :cond_186
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaif:Lcom/google/android/gms/internal/ads/zzgu;

    if-eqz v4, :cond_1b5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfa()Z

    move-result v4

    if-nez v4, :cond_191

    return v5

    :cond_191
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzhx;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaif:Lcom/google/android/gms/internal/ads/zzgu;

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->zzff()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzho;->zzdq(J)J

    move-result-wide v16

    const/4 v10, 0x0

    move-object v11, v15

    move-object v5, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzhx;-><init>(Lcom/google/android/gms/internal/ads/zzgu;JJLcom/google/android/gms/internal/ads/zzhr;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaif:Lcom/google/android/gms/internal/ads/zzgu;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->zzex()V

    :cond_1b5
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    if-nez v4, :cond_1c2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaiz:J

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    goto :goto_223

    :cond_1c2
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaiz:J

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    if-eqz v8, :cond_1cb

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzait:J

    goto :goto_1d1

    :cond_1cb
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzais:J

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzho;->zzair:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    :goto_1d1
    invoke-direct {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzho;->zzdq(J)J

    move-result-wide v8

    add-long/2addr v4, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    if-ne v8, v6, :cond_210

    sub-long v8, v4, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x30d40

    cmp-long v12, v8, v10

    if-lez v12, :cond_210

    const/16 v8, 0x50

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Discontinuity detected [expected "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", got "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    iput v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    goto :goto_211

    :cond_210
    const/4 v8, 0x2

    :goto_211
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    if-ne v9, v8, :cond_223

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaiz:J

    sub-long v4, v2, v4

    add-long/2addr v8, v4

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaiz:J

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaht:Lcom/google/android/gms/internal/ads/zzhu;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhu;->zzdx()V

    :cond_223
    :goto_223
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    if-eqz v4, :cond_230

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzait:J

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaix:I

    int-to-long v8, v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzait:J

    goto :goto_23a

    :cond_230
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzais:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzho;->zzais:J

    :goto_23a
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaje:Ljava/nio/ByteBuffer;

    :cond_23c
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    if-eqz v0, :cond_246

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaje:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzho;->zzb(Ljava/nio/ByteBuffer;J)Z

    goto :goto_249

    :cond_246
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzho;->zzdp(J)V

    :goto_249
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaje:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_254

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzho;->zzaje:Ljava/nio/ByteBuffer;

    return v6

    :cond_254
    const/4 v0, 0x0

    return v0
.end method

.method public final zzav(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahp:Lcom/google/android/gms/internal/ads/zzhf;

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzho;->zzaw(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhf;->zzp(I)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgu;)Lcom/google/android/gms/internal/ads/zzgu;
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    if-eqz v0, :cond_b

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgu;->zzafz:Lcom/google/android/gms/internal/ads/zzgu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    return-object p1

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahr:Lcom/google/android/gms/internal/ads/zzie;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzgu;->zzaga:F

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzie;->zza(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahr:Lcom/google/android/gms/internal/ads/zzie;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgu;->zzagb:F

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzie;->zzb(F)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(FF)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaif:Lcom/google/android/gms/internal/ads/zzgu;

    if-eqz p1, :cond_25

    goto :goto_3c

    :cond_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhx;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhx;->zza(Lcom/google/android/gms/internal/ads/zzhx;)Lcom/google/android/gms/internal/ads/zzgu;

    move-result-object p1

    goto :goto_3c

    :cond_3a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    :goto_3c
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_4b

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaif:Lcom/google/android/gms/internal/ads/zzgu;

    goto :goto_4d

    :cond_4b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    return-object p1
.end method

.method public final zzeo()Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajj:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfb()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public final zzey()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    :cond_8
    return-void
.end method

.method public final zzez()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajj:Z

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_20

    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfa()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->zzff()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhq;->zzds(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzaij:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajj:Z

    :cond_20
    :goto_20
    return-void
.end method

.method public final zzfb()Z
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->zzff()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhq;->zzfi()J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-gtz v6, :cond_32

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfh()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    if-nez v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    if-eqz v2, :cond_33

    :cond_32
    return v0

    :cond_33
    return v1
.end method

.method public final zzfc()Lcom/google/android/gms/internal/ads/zzgu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    return-object v0
.end method

.method public final zzfd()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajm:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajm:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajl:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzho;->reset()V

    :cond_c
    return-void
.end method

.method public final zzi(Z)J
    .registers 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->isInitialized()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaiy:I

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-nez v1, :cond_16

    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    :cond_16
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    if-ne v1, v4, :cond_144

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhq;->zzfj()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-eqz v1, :cond_144

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    div-long/2addr v11, v5

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzho;->zzain:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x7530

    cmp-long v1, v13, v15

    if-ltz v1, :cond_6a

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahv:[J

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaik:I

    sub-long v13, v7, v11

    aput-wide v13, v1, v4

    add-int/2addr v4, v2

    const/16 v1, 0xa

    rem-int/2addr v4, v1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaik:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzail:I

    if-ge v4, v1, :cond_51

    add-int/2addr v4, v2

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzail:I

    :cond_51
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzho;->zzain:J

    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaim:J

    const/4 v1, 0x0

    :goto_56
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzho;->zzail:I

    if-ge v1, v2, :cond_6a

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaim:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahv:[J

    aget-wide v15, v4, v1

    int-to-long v9, v2

    div-long/2addr v15, v9

    add-long/2addr v13, v15

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaim:J

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v9, 0x0

    goto :goto_56

    :cond_6a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzho;->zzfh()Z

    move-result v1

    if-nez v1, :cond_144

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaip:J

    sub-long v1, v11, v1

    const-wide/32 v9, 0x7a120

    cmp-long v4, v1, v9

    if-ltz v4, :cond_144

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhq;->zzfk()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaio:Z

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaio:Z

    const-string v2, "AudioTrack"

    if-eqz v1, :cond_f1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhq;->zzfl()J

    move-result-wide v13

    div-long/2addr v13, v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhq;->zzfm()J

    move-result-wide v5

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaja:J

    cmp-long v1, v13, v9

    if-gez v1, :cond_9f

    :goto_9c
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaio:Z

    goto :goto_f1

    :cond_9f
    sub-long v9, v13, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-string v1, ", "

    const-wide/32 v17, 0x4c4b40

    cmp-long v4, v9, v17

    if-lez v4, :cond_d7

    const/16 v4, 0x88

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Spurious audio timestamp (system clock mismatch): "

    :goto_b7
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_d7
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzho;->zzdq(J)J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v17, 0x4c4b40

    cmp-long v4, v9, v17

    if-lez v4, :cond_f1

    const/16 v4, 0x8a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Spurious audio timestamp (frame position mismatch): "

    goto :goto_b7

    :cond_f1
    :goto_f1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaiq:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_142

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaic:Z

    if-nez v3, :cond_142

    const/4 v3, 0x0

    :try_start_fa
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaie:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzajb:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzajb:J

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzajb:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzajb:J

    const-wide/32 v6, 0x4c4b40

    cmp-long v1, v4, v6

    if-lez v1, :cond_142

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzho;->zzajb:J

    const/16 v1, 0x3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzajb:J
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_13f} :catch_140

    goto :goto_142

    :catch_140
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaiq:Ljava/lang/reflect/Method;

    :cond_142
    :goto_142
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaip:J

    :cond_144
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaio:Z

    if-eqz v5, :cond_167

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhq;->zzfl()J

    move-result-wide v5

    div-long/2addr v5, v3

    sub-long/2addr v1, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzho;->zzdr(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhq;->zzfm()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzho;->zzdq(J)J

    move-result-wide v1

    goto :goto_17a

    :cond_167
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzho;->zzail:I

    if-nez v3, :cond_172

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahw:Lcom/google/android/gms/internal/ads/zzhq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhq;->zzfj()J

    move-result-wide v1

    goto :goto_175

    :cond_172
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaim:J

    add-long/2addr v1, v3

    :goto_175
    if-nez p1, :cond_17a

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzho;->zzajb:J

    sub-long/2addr v1, v3

    :cond_17a
    :goto_17a
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaiz:J

    :goto_17c
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1b2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhx;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhx;->zzb(Lcom/google/android/gms/internal/ads/zzhx;)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-ltz v7, :cond_1b2

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhx;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhx;->zza(Lcom/google/android/gms/internal/ads/zzhx;)Lcom/google/android/gms/internal/ads/zzgu;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhx;->zzb(Lcom/google/android/gms/internal/ads/zzhx;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaih:J

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhx;->zzc(Lcom/google/android/gms/internal/ads/zzhx;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaiz:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaig:J

    goto :goto_17c

    :cond_1b2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzgu;->zzaga:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1c3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaig:J

    add-long/2addr v1, v5

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaih:J

    sub-long/2addr v1, v5

    goto :goto_203

    :cond_1c3
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahx:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1ee

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahr:Lcom/google/android/gms/internal/ads/zzie;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzie;->zzfq()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    cmp-long v9, v5, v7

    if-ltz v9, :cond_1ee

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaig:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaih:J

    sub-long v9, v1, v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahr:Lcom/google/android/gms/internal/ads/zzie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzie;->zzfp()J

    move-result-wide v11

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzho;->zzahr:Lcom/google/android/gms/internal/ads/zzie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzie;->zzfq()J

    move-result-wide v13

    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide v1

    goto :goto_202

    :cond_1ee
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaig:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzho;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzgu;->zzaga:F

    float-to-double v7, v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzho;->zzaih:J

    sub-long/2addr v1, v9

    long-to-double v1, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v1

    double-to-long v1, v7

    :goto_202
    add-long/2addr v1, v5

    :goto_203
    add-long/2addr v3, v1

    return-wide v3
.end method

.method public final zzs(I)V
    .registers 5

    sget v0, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajm:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajl:I

    if-eq v0, p1, :cond_1c

    :cond_15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajm:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzajl:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzho;->reset()V

    :cond_1c
    return-void
.end method
