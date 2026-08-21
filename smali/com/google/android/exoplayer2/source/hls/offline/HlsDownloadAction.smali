###### Class com.google.android.exoplayer2.source.hls.offline.HlsDownloadAction (com.google.android.exoplayer2.source.hls.offline.HlsDownloadAction)
.class public final Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;
.source ""


# static fields
.field public static final DESERIALIZER:Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

.field private static final TYPE:Ljava/lang/String; = "hls"

.field private static final VERSION:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction$1;

    const-string v1, "hls"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;->DESERIALIZER:Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Z[BLjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z[B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "hls"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;-><init>(Ljava/lang/String;ILandroid/net/Uri;Z[BLjava/util/List;)V

    return-void
.end method

.method public static createDownloadAction(Landroid/net/Uri;[BLjava/util/List;)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "[B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;-><init>(Landroid/net/Uri;Z[BLjava/util/List;)V

    return-object v0
.end method

.method public static createRemoveAction(Landroid/net/Uri;[B)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;
    .registers 5

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2, p1, v1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;-><init>(Landroid/net/Uri;Z[BLjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/offline/Downloader;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;->createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;

    move-result-object p1

    return-object p1
.end method

.method public createDownloader(Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;
    .registers 5

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->keys:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloader;-><init>(Landroid/net/Uri;Ljava/util/List;Lcom/google/android/exoplayer2/offline/DownloaderConstructorHelper;)V

    return-object v0
.end method

###### Class com.google.android.exoplayer2.source.hls.offline.HlsDownloadAction.AnonymousClass1 (com.google.android.exoplayer2.source.hls.offline.HlsDownloadAction$1)
.class final Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction$1;
.super Lcom/google/android/exoplayer2/offline/SegmentDownloadAction$SegmentDownloadActionDeserializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction$SegmentDownloadActionDeserializer;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected createDownloadAction(Landroid/net/Uri;Z[BLjava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z[B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplayer2/offline/DownloadAction;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/offline/HlsDownloadAction;-><init>(Landroid/net/Uri;Z[BLjava/util/List;)V

    return-object v0
.end method

.method protected readKey(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/StreamKey;
    .registers 4

    if-lez p1, :cond_7

    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction$SegmentDownloadActionDeserializer;->readKey(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/StreamKey;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    new-instance v0, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(II)V

    return-object v0
.end method
