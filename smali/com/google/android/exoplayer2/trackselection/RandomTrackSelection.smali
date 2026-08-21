###### Class com.google.android.exoplayer2.trackselection.RandomTrackSelection (com.google.android.exoplayer2.trackselection.RandomTrackSelection)
.class public final Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final random:Ljava/util/Random;

.field private selectedIndex:I


# direct methods
.method public varargs constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    iget-object p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    iget p2, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IJ)V
    .registers 6

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p3, p4}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILjava/util/Random;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    invoke-virtual {p3, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .registers 2

    const/4 v0, 0x3

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

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    :goto_7
    iget p6, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge p4, p6, :cond_16

    invoke-virtual {p0, p4, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result p6

    if-nez p6, :cond_13

    add-int/lit8 p5, p5, 0x1

    :cond_13
    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    :cond_16
    iget-object p4, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    invoke-virtual {p4, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    iget p4, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-eq p5, p4, :cond_3a

    const/4 p4, 0x0

    :goto_23
    iget p5, p0, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->length:I

    if-ge p3, p5, :cond_3a

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;->isBlacklisted(IJ)Z

    move-result p5

    if-nez p5, :cond_37

    iget p5, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    add-int/lit8 p6, p4, 0x1

    if-ne p5, p4, :cond_36

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return-void

    :cond_36
    move p4, p6

    :cond_37
    add-int/lit8 p3, p3, 0x1

    goto :goto_23

    :cond_3a
    return-void
.end method

###### Class com.google.android.exoplayer2.trackselection.RandomTrackSelection.Factory (com.google.android.exoplayer2.trackselection.RandomTrackSelection$Factory)
.class public final Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public varargs createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;[I)Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;
    .registers 5

    new-instance p2, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;->random:Ljava/util/Random;

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILjava/util/Random;)V

    return-object p2
.end method

.method public bridge synthetic createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;[I)Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;

    move-result-object p1

    return-object p1
.end method
