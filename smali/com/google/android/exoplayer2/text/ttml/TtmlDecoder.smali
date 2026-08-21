###### Class com.google.android.exoplayer2.text.ttml.TtmlDecoder (com.google.android.exoplayer2.text.ttml.TtmlDecoder)
.class public final Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;,
        Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;,
        Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_IMAGE:Ljava/lang/String; = "backgroundImage"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CELL_RESOLUTION:Ljava/util/regex/Pattern;

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final PIXEL_COORDINATES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlDecoder"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    sput-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-string v0, "TtmlDecoder"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 2

    if-nez p1, :cond_7

    new-instance p1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    :cond_7
    return-object p1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    const-string v0, "information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_79

    goto :goto_7b

    :cond_79
    const/4 p0, 0x0

    goto :goto_7c

    :cond_7b
    :goto_7b
    const/4 p0, 0x1

    :goto_7c
    return p0
.end method

.method private parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
    .registers 10

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    return-object p2

    :cond_b
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CELL_RESOLUTION:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Ignoring malformed cell resolution: "

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_2e
    const/4 v1, 0x1

    :try_start_2f
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_4a

    if-eqz v0, :cond_4a

    new-instance v4, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {v4, v1, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;-><init>(II)V

    return-object v4

    :cond_4a
    new-instance v4, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid cell resolution "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_69} :catch_69

    :catch_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_20
.end method

.method private static parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    .registers 10

    const-string v0, "\\s+"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_24

    :cond_12
    array-length v1, v0

    if-ne v1, v2, :cond_b5

    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "TtmlDecoder"

    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_24
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v4, "\'."

    if-eqz v1, :cond_9b

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x25

    if-eq v6, v7, :cond_57

    const/16 v7, 0xca8

    if-eq v6, v7, :cond_4d

    const/16 v7, 0xe08

    if-eq v6, v7, :cond_43

    goto :goto_60

    :cond_43
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    const/4 v5, 0x0

    goto :goto_60

    :cond_4d
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    const/4 v5, 0x1

    goto :goto_60

    :cond_57
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    const/4 v5, 0x2

    :cond_60
    :goto_60
    if-eqz v5, :cond_88

    if-eq v5, v3, :cond_84

    if-ne v5, v2, :cond_6a

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    goto :goto_8b

    :cond_6a
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid unit for fontSize: \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_84
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    goto :goto_8b

    :cond_88
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    :goto_8b
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontSize(F)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    return-void

    :cond_9b
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid expression for fontSize: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b5
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid number of entries for fontSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
    .registers 8

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_11

    :cond_f
    const/16 v1, 0x1e

    :goto_11
    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "frameRateMultiplier"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_40

    const-string v2, " "

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_40

    :cond_38
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    :goto_40
    sget-object v3, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v3, v3, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    const-string v4, "subFrameRate"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_50

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_50
    sget-object v4, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    iget v4, v4, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    const-string v5, "tickRate"

    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_60

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_60
    new-instance p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    int-to-float v0, v1

    mul-float v0, v0, v2

    invoke-direct {p1, v0, v3, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;-><init>(FII)V

    return-object p1
.end method

.method private parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "style"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v1

    if-eqz v0, :cond_30

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_30

    aget-object v4, v0, v3

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_30
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_3e
    const-string v0, "region"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;)Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v1, v0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    invoke-interface {p5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_52
    const-string v0, "metadata"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-direct {p0, p1, p6}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    :cond_5d
    :goto_5d
    const-string v0, "head"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2
.end method

.method private parseMetadata(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "image"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const-string v0, "metadata"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;",
            ">;",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;",
            ")",
            "Lcom/google/android/exoplayer2/text/ttml/TtmlNode;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v11

    const-string v9, ""

    move-object/from16 v17, v5

    move-object/from16 v18, v17

    move-object/from16 v16, v9

    const/4 v5, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    :goto_29
    if-ge v5, v4, :cond_ce

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_114

    goto :goto_77

    :sswitch_3b
    const-string v8, "backgroundImage"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    const/4 v6, 0x5

    goto :goto_78

    :sswitch_45
    const-string v8, "style"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    const/4 v6, 0x3

    goto :goto_78

    :sswitch_4f
    const-string v8, "begin"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    const/4 v6, 0x0

    goto :goto_78

    :sswitch_59
    const-string v8, "end"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    const/4 v6, 0x1

    goto :goto_78

    :sswitch_63
    const-string v8, "dur"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    const/4 v6, 0x2

    goto :goto_78

    :sswitch_6d
    const-string v8, "region"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    const/4 v6, 0x4

    goto :goto_78

    :cond_77
    :goto_77
    const/4 v6, -0x1

    :goto_78
    if-eqz v6, :cond_c3

    const/4 v8, 0x1

    if-eq v6, v8, :cond_bb

    const/4 v8, 0x2

    if-eq v6, v8, :cond_b3

    const/4 v8, 0x3

    if-eq v6, v8, :cond_a7

    const/4 v8, 0x4

    if-eq v6, v8, :cond_9c

    const/4 v8, 0x5

    if-eq v6, v8, :cond_8a

    goto :goto_99

    :cond_8a
    const-string v6, "#"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_99

    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    :cond_99
    :goto_99
    move-object/from16 v6, p3

    goto :goto_ca

    :cond_9c
    move-object/from16 v6, p3

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ca

    move-object/from16 v16, v7

    goto :goto_ca

    :cond_a7
    move-object/from16 v6, p3

    invoke-direct {v0, v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    if-lez v8, :cond_ca

    move-object/from16 v18, v7

    goto :goto_ca

    :cond_b3
    move-object/from16 v6, p3

    invoke-static {v7, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v7

    move-wide v14, v7

    goto :goto_ca

    :cond_bb
    move-object/from16 v6, p3

    invoke-static {v7, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v7

    move-wide v12, v7

    goto :goto_ca

    :cond_c3
    move-object/from16 v6, p3

    invoke-static {v7, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J

    move-result-wide v7

    move-wide v9, v7

    :cond_ca
    :goto_ca
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_29

    :cond_ce
    if-eqz v2, :cond_e8

    iget-wide v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_ed

    cmp-long v7, v9, v5

    if-eqz v7, :cond_e0

    add-long/2addr v9, v3

    :cond_e0
    cmp-long v3, v12, v5

    if-eqz v3, :cond_ed

    iget-wide v3, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v12, v3

    goto :goto_ed

    :cond_e8
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :cond_ed
    :goto_ed
    move-wide v7, v9

    cmp-long v3, v12, v5

    if-nez v3, :cond_103

    cmp-long v3, v14, v5

    if-eqz v3, :cond_f9

    add-long/2addr v14, v7

    move-wide v9, v14

    goto :goto_104

    :cond_f9
    if-eqz v2, :cond_103

    iget-wide v2, v2, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v4, v2, v5

    if-eqz v4, :cond_103

    move-wide v9, v2

    goto :goto_104

    :cond_103
    move-wide v9, v12

    :goto_104
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v12, v18

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-static/range {v6 .. v14}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLcom/google/android/exoplayer2/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_114
    .sparse-switch
        -0x37b7d90c -> :sswitch_6d
        0x18601 -> :sswitch_63
        0x188db -> :sswitch_59
        0x59478a9 -> :sswitch_4f
        0x68b1db1 -> :sswitch_45
        0x4d0b70cd -> :sswitch_3b
    .end sparse-switch
.end method

.method private parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;)Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    if-nez v4, :cond_e

    return-object v2

    :cond_e
    const-string v3, "origin"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "TtmlDecoder"

    if-eqz v3, :cond_164

    sget-object v6, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    sget-object v7, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    const-string v9, "Ignoring region with malformed origin: "

    const-string v10, "Ignoring region with missing tts:extent: "

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v8, :cond_5d

    :try_start_32
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    div-float/2addr v7, v11

    invoke-virtual {v6, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_43} :catch_4a

    div-float/2addr v6, v11

    move/from16 v16, v7

    move v7, v6

    move/from16 v6, v16

    goto :goto_88

    :catch_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4f
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_52
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_59
    invoke-static {v5, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5d
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_15c

    if-nez v1, :cond_6e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    :cond_6e
    :try_start_6e
    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-float v6, v6

    iget v8, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->width:I

    int-to-float v8, v8

    div-float/2addr v6, v8

    int-to-float v7, v7

    iget v8, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->height:I
    :try_end_86
    .catch Ljava/lang/NumberFormatException; {:try_start_6e .. :try_end_86} :catch_155

    int-to-float v8, v8

    div-float/2addr v7, v8

    :goto_88
    const-string v8, "extent"

    invoke-static {v0, v8}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_151

    sget-object v9, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    sget-object v14, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    const-string v15, "Ignoring region with malformed extent: "

    if-eqz v14, :cond_c1

    :try_start_a4
    invoke-virtual {v9, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v11

    invoke-virtual {v9, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_a4 .. :try_end_b5} :catch_b8

    div-float/2addr v2, v11

    move v9, v1

    goto :goto_ea

    :catch_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_bd
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_52

    :cond_c1
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_145

    if-nez v1, :cond_cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6a

    :cond_cf
    :try_start_cf
    invoke-virtual {v8, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    iget v10, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->width:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v8, v8

    iget v1, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->height:I
    :try_end_e7
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_e7} :catch_13e

    int-to-float v1, v1

    div-float v2, v8, v1

    :goto_ea
    const-string v1, "displayAlign"

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_128

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v8, -0x514d33ab

    if-eq v5, v8, :cond_111

    const v8, 0x58705dc

    if-eq v5, v8, :cond_107

    goto :goto_11a

    :cond_107
    const-string v5, "after"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    const/4 v3, 0x1

    goto :goto_11a

    :cond_111
    const-string v5, "center"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11a

    const/4 v3, 0x0

    :cond_11a
    :goto_11a
    if-eqz v3, :cond_122

    if-eq v3, v13, :cond_11f

    goto :goto_128

    :cond_11f
    add-float/2addr v7, v2

    const/4 v8, 0x2

    goto :goto_129

    :cond_122
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    add-float/2addr v7, v2

    const/4 v8, 0x1

    goto :goto_129

    :cond_128
    :goto_128
    const/4 v8, 0x0

    :goto_129
    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v1, p2

    iget v1, v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->rows:I

    int-to-float v1, v1

    div-float v11, v0, v1

    new-instance v0, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    const/4 v1, 0x0

    const/4 v10, 0x1

    move-object v3, v0

    move v5, v6

    move v6, v7

    move v7, v1

    invoke-direct/range {v3 .. v11}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFIF)V

    return-object v0

    :catch_13e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_bd

    :cond_145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring region with unsupported extent: "

    :goto_14c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_52

    :cond_151
    const-string v0, "Ignoring region without an extent"

    goto/16 :goto_59

    :catch_155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4f

    :cond_15c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring region with unsupported origin: "

    goto :goto_14c

    :cond_164
    const-string v0, "Ignoring region without an origin"

    goto/16 :goto_59
.end method

.method private parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    .registers 14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, p2

    const/4 p2, 0x0

    :goto_7
    if-ge p2, v0, :cond_1ce

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_1d0

    goto :goto_79

    :sswitch_1e
    const-string v5, "backgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x1

    goto :goto_7a

    :sswitch_28
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x4

    goto :goto_7a

    :sswitch_32
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x2

    goto :goto_7a

    :sswitch_3c
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x0

    goto :goto_7a

    :sswitch_46
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x5

    goto :goto_7a

    :sswitch_50
    const-string v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const/16 v4, 0x8

    goto :goto_7a

    :sswitch_5b
    const-string v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x7

    goto :goto_7a

    :sswitch_65
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x3

    goto :goto_7a

    :sswitch_6f
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_79

    const/4 v4, 0x6

    goto :goto_7a

    :cond_79
    :goto_79
    const/4 v4, -0x1

    :goto_7a
    const-string v5, "TtmlDecoder"

    packed-switch v4, :pswitch_data_1f6

    goto/16 :goto_1ca

    :pswitch_81
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_20c

    goto :goto_b4

    :sswitch_8d
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    const/4 v7, 0x0

    goto :goto_b4

    :sswitch_97
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    const/4 v7, 0x1

    goto :goto_b4

    :sswitch_a1
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    const/4 v7, 0x2

    goto :goto_b4

    :sswitch_ab
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    const/4 v7, 0x3

    :cond_b4
    :goto_b4
    if-eqz v7, :cond_dc

    if-eq v7, v10, :cond_d2

    if-eq v7, v8, :cond_c8

    if-eq v7, v9, :cond_be

    goto/16 :goto_1ca

    :cond_be
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_1ca

    :cond_c8
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setUnderline(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_1ca

    :cond_d2
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_1ca

    :cond_dc
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setLinethrough(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_1ca

    :pswitch_e6
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_21e

    goto :goto_123

    :sswitch_f2
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_123

    const/4 v7, 0x1

    goto :goto_123

    :sswitch_fc
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_123

    const/4 v7, 0x2

    goto :goto_123

    :sswitch_106
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_123

    const/4 v7, 0x0

    goto :goto_123

    :sswitch_110
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_123

    const/4 v7, 0x3

    goto :goto_123

    :sswitch_11a
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_123

    const/4 v7, 0x4

    :cond_123
    :goto_123
    if-eqz v7, :cond_13d

    if-eq v7, v10, :cond_13d

    if-eq v7, v8, :cond_136

    if-eq v7, v9, :cond_136

    if-eq v7, v6, :cond_12f

    goto/16 :goto_1ca

    :cond_12f
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_143

    :cond_136
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_143

    :cond_13d
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_143
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_1ca

    :pswitch_149
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    const-string v4, "italic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setItalic(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto/16 :goto_1ca

    :pswitch_159
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    const-string v4, "bold"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBold(Z)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto :goto_1ca

    :pswitch_168
    :try_start_168
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseFontSize(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)V
    :try_end_16f
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_168 .. :try_end_16f} :catch_170

    goto :goto_1ca

    :catch_170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing fontSize value: "

    :goto_177
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ca

    :pswitch_185
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    goto :goto_1ca

    :pswitch_18e
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    :try_start_192
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setFontColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_199
    .catch Ljava/lang/IllegalArgumentException; {:try_start_192 .. :try_end_199} :catch_19a

    goto :goto_1ca

    :catch_19a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing color value: "

    goto :goto_177

    :pswitch_1a2
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    :try_start_1a6
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/ColorParser;->parseTtmlColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;
    :try_end_1ad
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a6 .. :try_end_1ad} :catch_1ae

    goto :goto_1ca

    :catch_1ae
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed parsing background value: "

    goto :goto_177

    :pswitch_1b6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ca

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->createIfNull(Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlStyle;

    move-result-object v2

    :cond_1ca
    :goto_1ca
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_7

    :cond_1ce
    return-object v2

    nop

    :sswitch_data_1d0
    .sparse-switch
        -0x5c71855e -> :sswitch_6f
        -0x48ff636d -> :sswitch_65
        -0x3f826a28 -> :sswitch_5b
        -0x3468fa43 -> :sswitch_50
        -0x2bc67c59 -> :sswitch_46
        0xd1b -> :sswitch_3c
        0x5a72f63 -> :sswitch_32
        0x15caa0f0 -> :sswitch_28
        0x4cb7f6d5 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_1f6
    .packed-switch 0x0
        :pswitch_1b6
        :pswitch_1a2
        :pswitch_18e
        :pswitch_185
        :pswitch_168
        :pswitch_159
        :pswitch_149
        :pswitch_e6
        :pswitch_81
    .end packed-switch

    :sswitch_data_20c
    .sparse-switch
        -0x57195dd5 -> :sswitch_ab
        -0x3d363934 -> :sswitch_a1
        0x36723ff0 -> :sswitch_97
        0x641ec051 -> :sswitch_8d
    .end sparse-switch

    :sswitch_data_21e
    .sparse-switch
        -0x514d33ab -> :sswitch_11a
        0x188db -> :sswitch_110
        0x32a007 -> :sswitch_106
        0x677c21c -> :sswitch_fc
        0x68ac462 -> :sswitch_f2
    .end sparse-switch
.end method

.method private parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    goto :goto_14

    :cond_e
    const-string v0, "\\s+"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_14
    return-object p1
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)J
    .registers 16

    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_88

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    mul-long v8, v8, v10

    long-to-double v8, v8

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long v10, v10, v12

    long-to-double v10, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v10

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v6

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v5, 0x0

    if-eqz p0, :cond_51

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_52

    :cond_51
    move-wide v10, v5

    :goto_52
    add-double/2addr v8, v10

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_63

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    long-to-float p0, v10

    iget v1, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    div-float/2addr p0, v1

    float-to-double v10, p0

    goto :goto_64

    :cond_63
    move-wide v10, v5

    :goto_64
    add-double/2addr v8, v10

    const/4 p0, 0x6

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_83

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    int-to-double v4, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    iget p0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v5, v0, p0

    :cond_83
    add-double/2addr v8, v5

    mul-double v8, v8, v2

    double-to-long p0, v8

    return-wide p0

    :cond_88
    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_128

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v11, 0x66

    if-eq v1, v11, :cond_f0

    const/16 v11, 0x68

    if-eq v1, v11, :cond_e6

    const/16 v11, 0x6d

    if-eq v1, v11, :cond_dc

    const/16 v11, 0xda6

    if-eq v1, v11, :cond_d2

    const/16 v11, 0x73

    if-eq v1, v11, :cond_c8

    const/16 v11, 0x74

    if-eq v1, v11, :cond_be

    goto :goto_fa

    :cond_be
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fa

    const/4 p0, 0x5

    goto :goto_fb

    :cond_c8
    const-string v1, "s"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fa

    const/4 p0, 0x2

    goto :goto_fb

    :cond_d2
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fa

    const/4 p0, 0x3

    goto :goto_fb

    :cond_dc
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fa

    const/4 p0, 0x1

    goto :goto_fb

    :cond_e6
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fa

    const/4 p0, 0x0

    goto :goto_fb

    :cond_f0
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_fa

    const/4 p0, 0x4

    goto :goto_fb

    :cond_fa
    :goto_fa
    const/4 p0, -0x1

    :goto_fb
    if-eqz p0, :cond_11d

    if-eq p0, v8, :cond_11a

    if-eq p0, v7, :cond_124

    if-eq p0, v6, :cond_113

    if-eq p0, v5, :cond_10c

    if-eq p0, v4, :cond_108

    goto :goto_124

    :cond_108
    iget p0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    int-to-double p0, p0

    goto :goto_10f

    :cond_10c
    iget p0, p1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double p0, p0

    :goto_10f
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_118

    :cond_113
    const-wide p0, 0x408f400000000000L    # 1000.0

    :goto_118
    div-double/2addr v9, p0

    goto :goto_124

    :cond_11a
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_122

    :cond_11d
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_122
    mul-double v9, v9, p0

    :cond_124
    :goto_124
    mul-double v9, v9, v2

    double-to-long p0, v9

    return-wide p0

    :cond_128
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed time expression: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
    .registers 7

    const-string v0, "extent"

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    :cond_a
    sget-object v1, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->PIXEL_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "TtmlDecoder"

    if-nez v2, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring non-pixel tts extent: "

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2d
    const/4 v2, 0x1

    :try_start_2e
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;

    invoke-direct {v4, v2, v1}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;-><init>(II)V
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_44} :catch_45

    return-object v4

    :catch_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring malformed tts extent: "

    goto :goto_1f
.end method


# virtual methods
.method protected bridge synthetic decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->decode([BIZ)Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;

    move-result-object p1

    return-object p1
.end method

.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;
    .registers 22

    move-object/from16 v8, p0

    :try_start_2
    iget-object v0, v8, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v0, ""

    new-instance v1, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v3, v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-interface {v9, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v13, Ljava/util/ArrayDeque;

    invoke-direct {v13}, Ljava/util/ArrayDeque;-><init>()V

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    sget-object v3, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_FRAME_AND_TICK_RATE:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    sget-object v4, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    move-object v14, v2

    const/4 v15, 0x0

    :goto_3e
    const/4 v1, 0x1

    if-eq v0, v1, :cond_11e

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    const/4 v6, 0x2

    if-nez v15, :cond_107

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_4e} :catch_12a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4e} :catch_121

    const-string v5, "tt"

    if-ne v0, v6, :cond_cc

    :try_start_52
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;

    move-result-object v3

    sget-object v0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->DEFAULT_CELL_RESOLUTION:Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    invoke-direct {v8, v9, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseCellResolution(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;

    move-result-object v0

    invoke-direct {v8, v9}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseTtsExtent(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;

    move-result-object v2

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object v6, v3

    goto :goto_71

    :cond_6c
    move-object/from16 v17, v2

    move-object v6, v3

    move-object/from16 v16, v4

    :goto_71
    invoke-static {v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->isSupportedTag(Ljava/lang/String;)Z

    move-result v0
    :try_end_75
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_75} :catch_12a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_75} :catch_121

    const-string v2, "TtmlDecoder"

    if-nez v0, :cond_96

    :try_start_79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unsupported tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    move-object v3, v6

    goto/16 :goto_102

    :cond_96
    const-string v0, "head"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v10

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object v7, v6

    move-object v6, v11

    move-object/from16 p2, v14

    move-object v14, v7

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_79 .. :try_end_af} :catch_12a
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_af} :catch_121

    goto :goto_bf

    :cond_b0
    move-object/from16 p2, v14

    move-object v14, v6

    :try_start_b3
    invoke-direct {v8, v9, v1, v11, v14}, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v1, :cond_bf

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V
    :try_end_bf
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_b3 .. :try_end_bf} :catch_c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b3 .. :try_end_bf} :catch_12a
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_bf} :catch_121

    :cond_bf
    :goto_bf
    move-object v3, v14

    move-object/from16 v14, p2

    goto :goto_102

    :catch_c3
    move-exception v0

    :try_start_c4
    const-string v1, "Suppressing parser error"

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_bf

    :cond_cc
    move-object/from16 p2, v14

    const/4 v6, 0x4

    if-ne v0, v6, :cond_dd

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;->addChild(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;)V

    goto :goto_fc

    :cond_dd
    const/4 v1, 0x3

    if-ne v0, v1, :cond_fc

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f6

    new-instance v14, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/ttml/TtmlNode;

    invoke-direct {v14, v0, v10, v11, v12}, Lcom/google/android/exoplayer2/text/ttml/TtmlSubtitle;-><init>(Lcom/google/android/exoplayer2/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_f8

    :cond_f6
    move-object/from16 v14, p2

    :goto_f8
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_fe

    :cond_fc
    :goto_fc
    move-object/from16 v14, p2

    :goto_fe
    move-object/from16 v17, v2

    move-object/from16 v16, v4

    :goto_102
    move-object/from16 v4, v16

    move-object/from16 v2, v17

    goto :goto_115

    :cond_107
    move-object/from16 p2, v14

    if-ne v0, v6, :cond_10e

    add-int/lit8 v15, v15, 0x1

    goto :goto_113

    :cond_10e
    const/4 v1, 0x3

    if-ne v0, v1, :cond_113

    add-int/lit8 v15, v15, -0x1

    :cond_113
    :goto_113
    move-object/from16 v14, p2

    :goto_115
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_11c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c4 .. :try_end_11c} :catch_12a
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_11c} :catch_121

    goto/16 :goto_3e

    :cond_11e
    move-object/from16 p2, v14

    return-object p2

    :catch_121
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_12a
    move-exception v0

    new-instance v1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string v2, "Unable to decode source"

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_134

    :goto_133
    throw v1

    :goto_134
    goto :goto_133
.end method

###### Class com.google.android.exoplayer2.text.ttml.TtmlDecoder.CellResolution (com.google.android.exoplayer2.text.ttml.TtmlDecoder$CellResolution)
.class final Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellResolution"
.end annotation


# instance fields
.field final columns:I

.field final rows:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->columns:I

    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$CellResolution;->rows:I

    return-void
.end method

###### Class com.google.android.exoplayer2.text.ttml.TtmlDecoder.FrameAndTickRate (com.google.android.exoplayer2.text.ttml.TtmlDecoder$FrameAndTickRate)
.class final Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameAndTickRate"
.end annotation


# instance fields
.field final effectiveFrameRate:F

.field final subFrameRate:I

.field final tickRate:I


# direct methods
.method constructor <init>(FII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->effectiveFrameRate:F

    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->subFrameRate:I

    iput p3, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$FrameAndTickRate;->tickRate:I

    return-void
.end method

###### Class com.google.android.exoplayer2.text.ttml.TtmlDecoder.TtsExtent (com.google.android.exoplayer2.text.ttml.TtmlDecoder$TtsExtent)
.class final Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TtsExtent"
.end annotation


# instance fields
.field final height:I

.field final width:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->width:I

    iput p2, p0, Lcom/google/android/exoplayer2/text/ttml/TtmlDecoder$TtsExtent;->height:I

    return-void
.end method
