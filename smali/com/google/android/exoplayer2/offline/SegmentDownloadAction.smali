###### Class com.google.android.exoplayer2.offline.SegmentDownloadAction (com.google.android.exoplayer2.offline.SegmentDownloadAction)
.class public abstract Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;
.super Lcom/google/android/exoplayer2/offline/DownloadAction;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/SegmentDownloadAction$SegmentDownloadActionDeserializer;
    }
.end annotation


# instance fields
.field public final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILandroid/net/Uri;Z[BLjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/net/Uri;",
            "Z[B",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/offline/DownloadAction;-><init>(Ljava/lang/String;ILandroid/net/Uri;Z[B)V

    if-eqz p4, :cond_11

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_1d

    :cond_11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1d
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->keys:Ljava/util/List;

    return-void
.end method

.method private writeKey(Ljava/io/DataOutputStream;Lcom/google/android/exoplayer2/offline/StreamKey;)V
    .registers 4

    iget v0, p2, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p2, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p2, p2, Lcom/google/android/exoplayer2/offline/StreamKey;->trackIndex:I

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/offline/DownloadAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    check-cast p1, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->keys:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->keys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->keys:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, Lcom/google/android/exoplayer2/offline/DownloadAction;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToStream(Ljava/io/DataOutputStream;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->isRemoveAction:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/DownloadAction;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    :goto_23
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;->writeKey(Ljava/io/DataOutputStream;Lcom/google/android/exoplayer2/offline/StreamKey;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_39
    return-void
.end method

###### Class com.google.android.exoplayer2.offline.SegmentDownloadAction.SegmentDownloadActionDeserializer (com.google.android.exoplayer2.offline.SegmentDownloadAction$SegmentDownloadActionDeserializer)
.class public abstract Lcom/google/android/exoplayer2/offline/SegmentDownloadAction$SegmentDownloadActionDeserializer;
.super Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/SegmentDownloadAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "SegmentDownloadActionDeserializer"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/DownloadAction$Deserializer;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected abstract createDownloadAction(Landroid/net/Uri;Z[BLjava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadAction;
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
.end method

.method public final readFromStream(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/DownloadAction;
    .registers 10

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {p2, v2}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1f
    if-ge v5, v3, :cond_2b

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction$SegmentDownloadActionDeserializer;->readKey(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/StreamKey;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_2b
    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/google/android/exoplayer2/offline/SegmentDownloadAction$SegmentDownloadActionDeserializer;->createDownloadAction(Landroid/net/Uri;Z[BLjava/util/List;)Lcom/google/android/exoplayer2/offline/DownloadAction;

    move-result-object p1

    return-object p1
.end method

.method protected readKey(ILjava/io/DataInputStream;)Lcom/google/android/exoplayer2/offline/StreamKey;
    .registers 5

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {p2}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    new-instance v1, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    return-object v1
.end method
