###### Class android.support.v4.media.session.c (android.support.v4.media.session.c)
.class public abstract Landroid/support/v4/media/session/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/c$a;,
        Landroid/support/v4/media/session/c$c;,
        Landroid/support/v4/media/session/c$b;
    }
.end annotation


# instance fields
.field a:Landroid/support/v4/media/session/c$a;

.field b:Landroid/support/v4/media/session/a;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    new-instance v0, Landroid/support/v4/media/session/c$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/c$b;-><init>(Landroid/support/v4/media/session/c;)V

    invoke-static {v0}, Landroid/support/v4/media/session/f;->a(Landroid/support/v4/media/session/f$a;)Ljava/lang/Object;

    goto :goto_19

    :cond_12
    new-instance v0, Landroid/support/v4/media/session/c$c;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/c$c;-><init>(Landroid/support/v4/media/session/c;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->b:Landroid/support/v4/media/session/a;

    :goto_19
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method a(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/c;->a:Landroid/support/v4/media/session/c$a;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/support/v4/media/session/e;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public binderDied()V
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0, v0}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

###### Class android.support.v4.media.session.c.a (android.support.v4.media.session.c$a)
.class Landroid/support/v4/media/session/c$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

###### Class android.support.v4.media.session.c.b (android.support.v4.media.session.c$b)
.class Landroid/support/v4/media/session/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/support/v4/media/session/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/session/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v4/media/session/c;->a()V

    :cond_d
    return-void
.end method

.method public a(IIIII)V
    .registers 14

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_18

    new-instance v7, Landroid/support/v4/media/session/e;

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/media/session/e;-><init>(IIIII)V

    invoke-virtual {v0, v7}, Landroid/support/v4/media/session/c;->a(Landroid/support/v4/media/session/e;)V

    :cond_18
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/c;->a(Landroid/os/Bundle;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/CharSequence;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_11

    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/c;->a(Landroid/support/v4/media/MediaMetadataCompat;)V

    :cond_11
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_18

    iget-object v1, v0, Landroid/support/v4/media/session/c;->b:Landroid/support/v4/media/session/a;

    if-eqz v1, :cond_15

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_15

    goto :goto_18

    :cond_15
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_11

    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/c;->a(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/session/c$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_16

    iget-object v1, v0, Landroid/support/v4/media/session/c;->b:Landroid/support/v4/media/session/a;

    if-eqz v1, :cond_f

    goto :goto_16

    :cond_f
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/c;->a(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    :cond_16
    :goto_16
    return-void
.end method

###### Class android.support.v4.media.session.c.BinderC0007c (android.support.v4.media.session.c$c)
.class Landroid/support/v4/media/session/c$c;
.super Landroid/support/v4/media/session/a$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v4/media/session/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/c;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/media/session/a$a;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_10

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_10
    return-void
.end method

.method public a(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_14

    const/16 v1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_14
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_f

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public a(Landroid/support/v4/media/MediaMetadataCompat;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_f

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .registers 11

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    new-instance v8, Landroid/support/v4/media/session/e;

    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->b:I

    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->c:I

    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->d:I

    iget v6, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->e:I

    iget v7, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->f:I

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/media/session/e;-><init>(IIIII)V

    goto :goto_1f

    :cond_1e
    move-object v8, v1

    :goto_1f
    const/4 p1, 0x4

    invoke-virtual {v0, p1, v8, v1}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_23
    return-void
.end method

.method public a(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_f

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_f

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_e
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_f

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_f
    return-void
.end method

.method public a(Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_14

    const/16 v1, 0xb

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_14
    return-void
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_10

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_10
    return-void
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/c$c;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/c;

    if-eqz v0, :cond_14

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/c;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_14
    return-void
.end method
