###### Class com.google.android.exoplayer2.MediaPeriodInfo (com.google.android.exoplayer2.MediaPeriodInfo)
.class final Lcom/google/android/exoplayer2/MediaPeriodInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final contentPositionUs:J

.field public final durationUs:J

.field public final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final isFinal:Z

.field public final isLastInTimelinePeriod:Z

.field public final startPositionUs:J


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iput-wide p6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iput-boolean p8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iput-boolean p9, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    return-void
.end method


# virtual methods
.method public copyWithStartPositionUs(J)Lcom/google/android/exoplayer2/MediaPeriodInfo;
    .registers 14

    new-instance v10, Lcom/google/android/exoplayer2/MediaPeriodInfo;

    iget-object v1, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->contentPositionUs:J

    iget-wide v6, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->durationUs:J

    iget-boolean v8, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isLastInTimelinePeriod:Z

    iget-boolean v9, p0, Lcom/google/android/exoplayer2/MediaPeriodInfo;->isFinal:Z

    move-object v0, v10

    move-wide v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/MediaPeriodInfo;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJZZ)V

    return-object v10
.end method
