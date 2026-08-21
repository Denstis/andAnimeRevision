###### Class com.google.android.exoplayer2.offline.ProgressiveDownloadHelper (com.google.android.exoplayer2.offline.ProgressiveDownloadHelper)
.class public final Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;
.super Lcom/google/android/exoplayer2/offline/DownloadHelper;
.source ""


# instance fields
.field private final customCacheKey:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->customCacheKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDownloadAction([BLjava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->getDownloadAction([BLjava/util/List;)Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadAction([BLjava/util/List;)Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/TrackKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->uri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->customCacheKey:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->createDownloadAction(Landroid/net/Uri;[BLjava/lang/String;)Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRemoveAction([B)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->getRemoveAction([B)Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    move-result-object p1

    return-object p1
.end method

.method public getRemoveAction([B)Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadHelper;->customCacheKey:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;->createRemoveAction(Landroid/net/Uri;[BLjava/lang/String;)Lcom/google/android/exoplayer2/offline/ProgressiveDownloadAction;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 2

    sget-object p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p1
.end method

.method protected prepareInternal()V
    .registers 1

    return-void
.end method
