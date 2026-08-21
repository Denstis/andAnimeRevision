###### Class com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy (com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy)
.class public Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;


# static fields
.field private static final DEFAULT_BEHAVIOR_MIN_LOADABLE_RETRY_COUNT:I = -0x1

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_PROGRESSIVE_LIVE:I = 0x6

.field public static final DEFAULT_TRACK_BLACKLIST_MS:J = 0xea60L


# instance fields
.field private final minimumLoadableRetryCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    return-void
.end method


# virtual methods
.method public getBlacklistDurationMsFor(IJLjava/io/IOException;I)J
    .registers 6

    instance-of p1, p4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_18

    check-cast p4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget p1, p4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 p4, 0x194

    if-eq p1, p4, :cond_15

    const/16 p4, 0x19a

    if-ne p1, p4, :cond_18

    :cond_15
    const-wide/32 p2, 0xea60

    :cond_18
    return-wide p2
.end method

.method public getMinimumLoadableRetryCount(I)I
    .registers 4

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x7

    if-ne p1, v0, :cond_a

    const/4 p1, 0x6

    goto :goto_b

    :cond_a
    const/4 p1, 0x3

    :goto_b
    return p1

    :cond_c
    return v0
.end method

.method public getRetryDelayMsFor(IJLjava/io/IOException;I)J
    .registers 6

    instance-of p1, p4, Lcom/google/android/exoplayer2/ParserException;

    if-eqz p1, :cond_a

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_15

    :cond_a
    add-int/lit8 p5, p5, -0x1

    mul-int/lit16 p5, p5, 0x3e8

    const/16 p1, 0x1388

    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long p1, p1

    :goto_15
    return-wide p1
.end method
