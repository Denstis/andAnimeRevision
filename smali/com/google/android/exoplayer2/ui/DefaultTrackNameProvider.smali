###### Class com.google.android.exoplayer2.ui.DefaultTrackNameProvider (com.google.android.exoplayer2.ui.DefaultTrackNameProvider)
.class public Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TrackNameProvider;


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    return-void
.end method

.method private buildAudioChannelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 3

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_35

    const/4 v0, 0x1

    if-ge p1, v0, :cond_9

    goto :goto_35

    :cond_9
    if-eq p1, v0, :cond_30

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x6

    if-eq p1, v0, :cond_26

    const/4 v0, 0x7

    if-eq p1, v0, :cond_26

    const/16 v0, 0x8

    if-eq p1, v0, :cond_21

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_surround:I

    :goto_1c
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_21
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_surround_7_point_1:I

    goto :goto_1c

    :cond_26
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_surround_5_point_1:I

    goto :goto_1c

    :cond_2b
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_stereo:I

    goto :goto_1c

    :cond_30
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_mono:I

    goto :goto_1c

    :cond_35
    :goto_35
    const-string p1, ""

    return-object p1
.end method

.method private buildBitrateString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 7

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    const-string p1, ""

    goto :goto_1f

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_bitrate:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float p1, p1

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1f
    return-object p1
.end method

.method private buildLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 3

    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    return-object p1

    :cond_b
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "und"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_21

    :cond_1c
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLanguageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :cond_21
    :goto_21
    const-string p1, ""

    :goto_23
    return-object p1
.end method

.method private buildLanguageString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_11
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private buildResolutionString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 7

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->width:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    if-ne p1, v1, :cond_a

    goto :goto_24

    :cond_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_resolution:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_24
    :goto_24
    const-string p1, ""

    :goto_26
    return-object p1
.end method

.method private static inferPrimaryTrackType(Lcom/google/android/exoplayer2/Format;)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    return v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    return v2

    :cond_14
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1e

    return v3

    :cond_1e
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-ne v0, v1, :cond_32

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v0, v1, :cond_27

    goto :goto_32

    :cond_27
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v0, v1, :cond_31

    iget p0, p0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq p0, v1, :cond_30

    goto :goto_31

    :cond_30
    return v1

    :cond_31
    :goto_31
    return v3

    :cond_32
    :goto_32
    return v2
.end method

.method private varargs joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_2b

    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_28

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object v3, v4

    goto :goto_28

    :cond_18
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/R$string;->exo_item_list:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v1

    const/4 v3, 0x1

    aput-object v4, v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2b
    return-object v3
.end method


# virtual methods
.method public getTrackName(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;
    .registers 7

    invoke-static {p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->inferPrimaryTrackType(Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1c

    new-array v0, v3, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildResolutionString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildBitrateString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3c

    :cond_1c
    if-ne v0, v2, :cond_38

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildAudioChannelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildBitrateString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->joinWithSeparator([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3c

    :cond_38
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->buildLabelString(Lcom/google/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p1

    :goto_3c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4a

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/DefaultTrackNameProvider;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_4a
    return-object p1
.end method
