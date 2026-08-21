###### Class com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker (com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker)
.class final Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    }
.end annotation


# static fields
.field private static final MAX_SAMPLE_SIZE:I = 0x2000


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
    .registers 21

    move-object/from16 v0, p2

    const/16 v1, 0x2000

    div-int v1, v1, p0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_a
    if-ge v4, v2, :cond_16

    aget v6, v0, v4

    invoke-static {v6, v1}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_16
    new-array v7, v5, [J

    new-array v8, v5, [I

    new-array v10, v5, [J

    new-array v11, v5, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_21
    array-length v5, v0

    if-ge v3, v5, :cond_4e

    aget v5, v0, v3

    aget-wide v12, p1, v3

    :goto_28
    if-lez v5, :cond_4b

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput-wide v12, v7, v4

    mul-int v14, p0, v6

    aput v14, v8, v4

    aget v14, v8, v4

    invoke-static {v9, v14}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-long v14, v2

    mul-long v14, v14, p3

    aput-wide v14, v10, v4

    const/4 v14, 0x1

    aput v14, v11, v4

    aget v14, v8, v4

    int-to-long v14, v14

    add-long/2addr v12, v14

    add-int/2addr v2, v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_4e
    int-to-long v0, v2

    mul-long v12, p3, v0

    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    const/4 v14, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v14}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJLcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;)V

    return-object v0
.end method

###### Class com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker.AnonymousClass1 (com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker$1)
.class synthetic Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker.Results (com.google.android.exoplayer2.extractor.mp4.FixedSampleSizeRechunker$Results)
.class public final Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Results"
.end annotation


# instance fields
.field public final duration:J

.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timestamps:[J


# direct methods
.method private constructor <init>([J[II[J[IJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    iput p3, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    iput-object p5, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    iput-wide p6, p0, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    return-void
.end method

.method synthetic constructor <init>([J[II[J[IJLcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJ)V

    return-void
.end method
