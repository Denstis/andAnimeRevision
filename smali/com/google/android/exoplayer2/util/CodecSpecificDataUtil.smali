###### Class com.google.android.exoplayer2.util.CodecSpecificDataUtil (com.google.android.exoplayer2.util.CodecSpecificDataUtil)
.class public final Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field private static final AUDIO_OBJECT_TYPE_ER_BSAC:I = 0x16

.field private static final AUDIO_OBJECT_TYPE_ESCAPE:I = 0x1f

.field private static final AUDIO_OBJECT_TYPE_PS:I = 0x1d

.field private static final AUDIO_OBJECT_TYPE_SBR:I = 0x5

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final NAL_START_CODE:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_40

    sput-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_1c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_22
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_40
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacAudioSpecificConfig(III)[B
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [B

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    shl-int/lit8 p0, p1, 0x7

    and-int/lit16 p0, p0, 0x80

    shl-int/lit8 p1, p2, 0x3

    and-int/lit8 p1, p1, 0x78

    or-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x1

    aput-byte p0, v0, p1

    return-object v0
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .registers 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    :goto_4
    sget-object v4, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    array-length v5, v4

    if-ge v2, v5, :cond_11

    aget v4, v4, v2

    if-ne p0, v4, :cond_e

    move v3, v2

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    const/4 v2, -0x1

    :goto_12
    sget-object v4, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    array-length v5, v4

    if-ge v0, v5, :cond_1f

    aget v4, v4, v0

    if-ne p1, v4, :cond_1c

    move v2, v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1f
    if-eq p0, v1, :cond_29

    if-eq v2, v1, :cond_29

    const/4 p0, 0x2

    invoke-static {p0, v3, v2}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildAacAudioSpecificConfig(III)[B

    move-result-object p0

    return-object p0

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate or number of channels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_49

    :goto_48
    throw v0

    :goto_49
    goto :goto_48
.end method

.method public static buildAvcCodecString(III)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "avc1.%02X%02X%02X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildNalUnit([BII)[B
    .registers 7

    sget-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v0

    add-int/2addr v1, p2

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v0, v0

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static findNalStartCode([BI)I
    .registers 4

    array-length v0, p0

    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    :goto_5
    if-gt p1, v0, :cond_11

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v1

    if-eqz v1, :cond_e

    return p1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method private static getAacAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .registers 3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_10

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 v0, p0, 0x20

    :cond_10
    return v0
.end method

.method private static getAacSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I
    .registers 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_10

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    goto :goto_1e

    :cond_10
    const/16 p0, 0xd

    if-ge v0, p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    sget-object p0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget p0, p0, v0

    :goto_1e
    return p0
.end method

.method private static isNalStartCode([BI)Z
    .registers 6

    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_9

    return v2

    :cond_9
    const/4 v0, 0x0

    :goto_a
    sget-object v1, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v1

    if-ge v0, v3, :cond_1b

    add-int v3, p1, v0

    aget-byte v3, p0, v3

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_18

    return v2

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method public static parseAacAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableBitArray;",
            "Z)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->getAacAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->getAacSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_14

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_24

    :cond_14
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->getAacSamplingFrequency(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v1

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->getAacAudioObjectType(Lcom/google/android/exoplayer2/util/ParsableBitArray;)I

    move-result v0

    const/16 v4, 0x16

    if-ne v0, v4, :cond_24

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    :cond_24
    const/4 v4, 0x1

    if-eqz p1, :cond_7c

    const/4 p1, 0x3

    const/4 v5, 0x2

    if-eq v0, v4, :cond_55

    if-eq v0, v5, :cond_55

    if-eq v0, p1, :cond_55

    if-eq v0, v2, :cond_55

    const/4 v2, 0x6

    if-eq v0, v2, :cond_55

    const/4 v2, 0x7

    if-eq v0, v2, :cond_55

    const/16 v2, 0x11

    if-eq v0, v2, :cond_55

    packed-switch v0, :pswitch_data_96

    new-instance p0, Lcom/google/android/exoplayer2/ParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported audio object type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_55
    :pswitch_55
    invoke-static {p0, v0, v3}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseGaSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V

    packed-switch v0, :pswitch_data_a4

    :pswitch_5b
    goto :goto_7c

    :pswitch_5c
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-eq p0, v5, :cond_65

    if-eq p0, p1, :cond_65

    goto :goto_7c

    :cond_65
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported epConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7c
    :goto_7c
    sget-object p0, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget p0, p0, v3

    const/4 p1, -0x1

    if-eq p0, p1, :cond_84

    goto :goto_85

    :cond_84
    const/4 v4, 0x0

    :goto_85
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_96
    .packed-switch 0x13
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x11
        :pswitch_5c
        :pswitch_5b
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
        :pswitch_5c
    .end packed-switch
.end method

.method public static parseAacAudioSpecificConfig([B)Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;Z)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static parseGaSpecificConfig(Lcom/google/android/exoplayer2/util/ParsableBitArray;II)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-eqz p2, :cond_40

    const/4 p2, 0x6

    const/16 v2, 0x14

    const/4 v3, 0x3

    if-eq p1, p2, :cond_1d

    if-ne p1, v2, :cond_20

    :cond_1d
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_20
    if-eqz v1, :cond_3f

    const/16 p2, 0x16

    if-ne p1, p2, :cond_2b

    const/16 p2, 0x10

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_2b
    const/16 p2, 0x11

    if-eq p1, p2, :cond_39

    const/16 p2, 0x13

    if-eq p1, p2, :cond_39

    if-eq p1, v2, :cond_39

    const/16 p2, 0x17

    if-ne p1, p2, :cond_3c

    :cond_39
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_3c
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    :cond_3f
    return-void

    :cond_40
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static splitNalUnits([B)[[B
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :cond_f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    :goto_28
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5a

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_4d

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4e

    :cond_4d
    array-length v5, p0

    :goto_4e
    sub-int/2addr v5, v4

    new-array v5, v5, [B

    array-length v6, v5

    invoke-static {p0, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_5a
    return-object v2
.end method
