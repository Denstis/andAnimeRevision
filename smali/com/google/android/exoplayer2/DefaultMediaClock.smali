###### Class com.google.android.exoplayer2.DefaultMediaClock (com.google.android.exoplayer2.DefaultMediaClock)
.class final Lcom/google/android/exoplayer2/DefaultMediaClock;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;
    }
.end annotation


# instance fields
.field private final listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

.field private rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

.field private rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

.field private final standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;Lcom/google/android/exoplayer2/util/Clock;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

    new-instance p1, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    return-void
.end method

.method private ensureSynced()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_27
    return-void
.end method

.method private isUsingRendererClock()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method


# virtual methods
.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public getPositionUs()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingRendererClock()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public onRendererDisabled(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    :cond_9
    return-void
.end method

.method public onRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)V
    .registers 4

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eq v0, v1, :cond_2b

    if-nez v1, :cond_1f

    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->ensureSynced()V

    goto :goto_2b

    :cond_1f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_2b
    :goto_2b
    return-void
.end method

.method public resetPosition(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .registers 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-object p1
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    return-void
.end method

.method public syncAndGetPositionUs()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingRendererClock()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->ensureSynced()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneMediaClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

###### Class com.google.android.exoplayer2.DefaultMediaClock.PlaybackParameterListener (com.google.android.exoplayer2.DefaultMediaClock$PlaybackParameterListener)
.class public interface abstract Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParameterListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/DefaultMediaClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaybackParameterListener"
.end annotation


# virtual methods
.method public abstract onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
.end method
