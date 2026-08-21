###### Class com.google.android.exoplayer2.audio.WavUtil (com.google.android.exoplayer2.audio.WavUtil)
.class public final Lcom/google/android/exoplayer2/audio/WavUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DATA_FOURCC:I

.field public static final FMT_FOURCC:I

.field public static final RIFF_FOURCC:I

.field private static final TYPE_A_LAW:I = 0x6

.field private static final TYPE_FLOAT:I = 0x3

.field private static final TYPE_MU_LAW:I = 0x7

.field private static final TYPE_PCM:I = 0x1

.field private static final TYPE_WAVE_FORMAT_EXTENSIBLE:I = 0xfffe

.field public static final WAVE_FOURCC:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "RIFF"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/audio/WavUtil;->RIFF_FOURCC:I

    const-string v0, "WAVE"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/audio/WavUtil;->WAVE_FOURCC:I

    const-string v0, "fmt "

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/audio/WavUtil;->FMT_FOURCC:I

    const-string v0, "data"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/audio/WavUtil;->DATA_FOURCC:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodingForType(II)I
    .registers 4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p0, v0, :cond_19

    const v0, 0xfffe

    if-eq p0, v0, :cond_1f

    const/4 p1, 0x6

    if-eq p0, p1, :cond_16

    const/4 p1, 0x7

    if-eq p0, p1, :cond_13

    return v1

    :cond_13
    const/high16 p0, 0x10000000

    return p0

    :cond_16
    const/high16 p0, 0x20000000

    return p0

    :cond_19
    const/16 p0, 0x20

    if-ne p1, p0, :cond_1e

    const/4 v1, 0x4

    :cond_1e
    return v1

    :cond_1f
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result p0

    return p0
.end method

.method public static getTypeForEncoding(I)I
    .registers 3

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_24

    const/high16 v0, 0x10000000

    if-eq p0, v0, :cond_22

    const/high16 v0, 0x20000000

    if-eq p0, v0, :cond_20

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_24

    const/4 v0, 0x2

    if-eq p0, v0, :cond_24

    const/4 v0, 0x3

    if-eq p0, v0, :cond_24

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1a

    return v0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_20
    const/4 p0, 0x6

    return p0

    :cond_22
    const/4 p0, 0x7

    return p0

    :cond_24
    const/4 p0, 0x1

    return p0
.end method
