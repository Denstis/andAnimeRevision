###### Class com.google.android.exoplayer2.trackselection.a (com.google.android.exoplayer2.trackselection.a)
.class public final synthetic Lcom/google/android/exoplayer2/trackselection/a;
.super Ljava/lang/Object;


# direct methods
.method public static $default$updateSelectedTrack(Lcom/google/android/exoplayer2/trackselection/TrackSelection;JJJ)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public static $default$updateSelectedTrack(Lcom/google/android/exoplayer2/trackselection/TrackSelection;JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
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

    invoke-interface/range {p0 .. p6}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->updateSelectedTrack(JJJ)V

    return-void
.end method
