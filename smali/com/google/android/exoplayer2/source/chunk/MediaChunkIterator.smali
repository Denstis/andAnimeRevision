###### Class com.google.android.exoplayer2.source.chunk.MediaChunkIterator (com.google.android.exoplayer2.source.chunk.MediaChunkIterator)
.class public interface abstract Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;->EMPTY:Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    return-void
.end method


# virtual methods
.method public abstract getChunkEndTimeUs()J
.end method

.method public abstract getChunkStartTimeUs()J
.end method

.method public abstract getDataSpec()Lcom/google/android/exoplayer2/upstream/DataSpec;
.end method

.method public abstract isEnded()Z
.end method

.method public abstract next()Z
.end method

###### Class com.google.android.exoplayer2.source.chunk.MediaChunkIterator.AnonymousClass1 (com.google.android.exoplayer2.source.chunk.MediaChunkIterator$1)
.class final Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChunkEndTimeUs()J
    .registers 2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getChunkStartTimeUs()J
    .registers 2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getDataSpec()Lcom/google/android/exoplayer2/upstream/DataSpec;
    .registers 2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public isEnded()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public next()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
