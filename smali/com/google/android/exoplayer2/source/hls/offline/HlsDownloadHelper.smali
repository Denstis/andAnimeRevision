###### Class com.google.android.exoplayer2.source.hls.offline.HlsDownloadHelper (com.google.android.exoplayer2.source.hls.offline.HlsDownloadHelper)
.class public final Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;
.super Lcom/google/android/exoplayer2/offline/DownloadHelper;
.source ""


# instance fields
.field private final manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

.field private renditionGroups:[I

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method private static toFormats(Ljava/util/List;)[Lcom/google/android/exoplayer2/Format;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;",
            ">;)[",
            "Lcom/google/android/exoplayer2/Format;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist$HlsUrl;->format:Lcom/google/android/exoplayer2/Format;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1a
    return-object v0
.end method

.method private static toStreamKeys(Ljava/util/List;[I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/TrackKey;",
            ">;[I)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/offline/TrackKey;

    new-instance v3, Lcom/google/android/exoplayer2/offline/StreamKey;

    iget v4, v2, Lcom/google/android/exoplayer2/offline/TrackKey;->groupIndex:I

    aget v4, p1, v4

    iget v2, v2, Lcom/google/android/exoplayer2/offline/TrackKey;->trackIndex:I

    invoke-direct {v3, v4, v2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_27
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDownloadAction([BLjava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->getDownloadAction([BLjava/util/List;)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadAction([BLjava/util/List;)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/TrackKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->renditionGroups:[I

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->renditionGroups:[I

    invoke-static {p2, v1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->toStreamKeys(Ljava/util/List;[I)Ljava/util/List;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;->createDownloadAction(Landroid/net/Uri;[BLjava/util/List;)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public getPlaylist()Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    return-object v0
.end method

.method public bridge synthetic getRemoveAction([B)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->getRemoveAction([B)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;

    move-result-object p1

    return-object p1
.end method

.method public getRemoveAction([B)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->uri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;->createRemoveAction(Landroid/net/Uri;[B)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .registers 7

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    instance-of v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    new-array p1, v1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->renditionGroups:[I

    sget-object p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p1

    :cond_13
    check-cast p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->renditionGroups:[I

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->renditionGroups:[I

    aput v1, v0, v1

    new-instance v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->variants:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->toFormats(Ljava/util/List;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v0, v2, v1

    const/4 v1, 0x1

    :cond_37
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->renditionGroups:[I

    aput v3, v0, v1

    add-int/lit8 v0, v1, 0x1

    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->audios:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->toFormats(Ljava/util/List;)[Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v3, v2, v1

    goto :goto_54

    :cond_53
    move v0, v1

    :goto_54
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_71

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->renditionGroups:[I

    const/4 v3, 0x2

    aput v3, v1, v0

    add-int/lit8 v1, v0, 0x1

    new-instance v3, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMasterPlaylist;->subtitles:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->toFormats(Ljava/util/List;)[Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>([Lcom/google/android/exoplayer2/Format;)V

    aput-object v3, v2, v0

    move v0, v1

    :cond_71
    new-instance p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object p1
.end method

.method protected prepareInternal()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->manifestDataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParser;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->uri:Landroid/net/Uri;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/ParsingLoadable;->load(Lcom/google/android/exoplayer2/upstream/DataSource;Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;Landroid/net/Uri;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadHelper;->playlist:Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;

    return-void
.end method
