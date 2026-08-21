###### Class com.google.android.exoplayer2.trackselection.FixedTrackSelection (com.google.android.exoplayer2.trackselection.FixedTrackSelection)
.class public final Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;

.field private final reason:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V
    .registers 7

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;->reason:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;->reason:I

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    return-void
.end method

###### Class com.google.android.exoplayer2.trackselection.FixedTrackSelection.Factory (com.google.android.exoplayer2.trackselection.FixedTrackSelection$Factory)
.class public final Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;

.field private final reason:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;->reason:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;->data:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;->reason:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public varargs createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;[I)Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;
    .registers 6

    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    new-instance p2, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    aget p3, p3, v0

    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;->reason:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;->data:Ljava/lang/Object;

    invoke-direct {p2, p1, p3, v0, v1}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;IILjava/lang/Object;)V

    return-object p2
.end method

.method public bridge synthetic createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;[I)Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    move-result-object p1

    return-object p1
.end method
