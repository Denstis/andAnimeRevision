###### Class com.google.android.exoplayer2.offline.StreamKey (com.google.android.exoplayer2.offline.StreamKey)
.class public final Lcom/google/android/exoplayer2/offline/StreamKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/offline/StreamKey;",
        ">;"
    }
.end annotation


# instance fields
.field public final groupIndex:I

.field public final periodIndex:I

.field public final trackIndex:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    iput p2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    iput p3, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->trackIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/offline/StreamKey;)I
    .registers 4

    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    iget v1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_13

    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->trackIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->trackIndex:I

    sub-int/2addr v0, p1

    :cond_13
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/StreamKey;->compareTo(Lcom/google/android/exoplayer2/offline/StreamKey;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    const-class v2, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_27

    :cond_10
    check-cast p1, Lcom/google/android/exoplayer2/offline/StreamKey;

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    if-ne v2, v3, :cond_25

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->trackIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->trackIndex:I

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->trackIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->trackIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
