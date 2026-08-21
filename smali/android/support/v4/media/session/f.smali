###### Class android.support.v4.media.session.f (android.support.v4.media.session.f)
.class Landroid/support/v4/media/session/f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/f$b;,
        Landroid/support/v4/media/session/f$a;,
        Landroid/support/v4/media/session/f$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/support/v4/media/session/f$a;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/support/v4/media/session/f$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/f$b;-><init>(Landroid/support/v4/media/session/f$a;)V

    return-object v0
.end method

###### Class android.support.v4.media.session.f.a (android.support.v4.media.session.f$a)
.class public interface abstract Landroid/support/v4/media/session/f$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(IIIII)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract a(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)V
.end method

###### Class android.support.v4.media.session.f.b (android.support.v4.media.session.f$b)
.class Landroid/support/v4/media/session/f$b;
.super Landroid/media/session/MediaController$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/f$a;",
        ">",
        "Landroid/media/session/MediaController$Callback;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/media/session/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/f$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/f$b;->a:Landroid/support/v4/media/session/f$a;

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .registers 8

    iget-object v0, p0, Landroid/support/v4/media/session/f$b;->a:Landroid/support/v4/media/session/f$a;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    invoke-static {p1}, Landroid/support/v4/media/session/f$c;->b(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/session/f$a;->a(IIIII)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 3

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/media/session/f$b;->a:Landroid/support/v4/media/session/f$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/f$a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/f$b;->a:Landroid/support/v4/media/session/f$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/f$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/f$b;->a:Landroid/support/v4/media/session/f$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/f$a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/session/f$b;->a:Landroid/support/v4/media/session/f$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/f$a;->a(Ljava/util/List;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/f$b;->a:Landroid/support/v4/media/session/f$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/f$a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/f$b;->a:Landroid/support/v4/media/session/f$a;

    invoke-interface {v0}, Landroid/support/v4/media/session/f$a;->a()V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/media/session/f$b;->a:Landroid/support/v4/media/session/f$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/f$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

###### Class android.support.v4.media.session.f.c (android.support.v4.media.session.f$c)
.class public Landroid/support/v4/media/session/f$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method private static a(Landroid/media/AudioAttributes;)I
    .registers 4

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 p0, 0x7

    return p0

    :cond_a
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_14

    const/4 p0, 0x6

    return p0

    :cond_14
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_2a

    return v0

    :pswitch_1d
    return v1

    :pswitch_1e
    const/4 p0, 0x2

    return p0

    :pswitch_20
    const/4 p0, 0x5

    return p0

    :pswitch_22
    return v2

    :pswitch_23
    const/16 p0, 0x8

    return p0

    :pswitch_26
    const/4 p0, 0x0

    return p0

    :pswitch_28
    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_26
        :pswitch_23
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_28
        :pswitch_28
        :pswitch_1d
        :pswitch_28
    .end packed-switch
.end method

.method public static a(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .registers 1

    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)I
    .registers 1

    invoke-static {p0}, Landroid/support/v4/media/session/f$c;->a(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/media/session/f$c;->a(Landroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method
