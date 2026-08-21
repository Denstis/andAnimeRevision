###### Class androidx.media.g.a (androidx.media.g.a)
.class public Landroidx/media/g/a;
.super Landroidx/core/app/h$e;
.source ""


# instance fields
.field e:[I

.field f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field g:Z

.field h:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/core/app/h$e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media/g/a;->e:[I

    return-void
.end method

.method private a(Landroidx/core/app/h$a;)Landroid/widget/RemoteViews;
    .registers 6

    invoke-virtual {p1}, Landroidx/core/app/h$a;->a()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v2, v2, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroidx/media/f;->notification_media_action:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v2, Landroidx/media/d;->action0:I

    invoke-virtual {p1}, Landroidx/core/app/h$a;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-nez v0, :cond_2c

    sget v0, Landroidx/media/d;->action0:I

    invoke-virtual {p1}, Landroidx/core/app/h$a;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_2c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_3b

    sget v0, Landroidx/media/d;->action0:I

    invoke-virtual {p1}, Landroidx/core/app/h$a;->i()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_3b
    return-object v1
.end method


# virtual methods
.method a(I)I
    .registers 3

    const/4 v0, 0x3

    if-gt p1, v0, :cond_6

    sget p1, Landroidx/media/f;->notification_template_big_media_narrow:I

    goto :goto_8

    :cond_6
    sget p1, Landroidx/media/f;->notification_template_big_media:I

    :goto_8
    return p1
.end method

.method a(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;
    .registers 3

    iget-object v0, p0, Landroidx/media/g/a;->e:[I

    if-eqz v0, :cond_7

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    :cond_7
    iget-object v0, p0, Landroidx/media/g/a;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession$Token;

    invoke-virtual {p1, v0}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    :cond_14
    return-object p1
.end method

.method a()Landroid/widget/RemoteViews;
    .registers 7

    iget-object v0, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v0, v0, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media/g/a;->a(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v2}, Landroidx/core/app/h$e;->a(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v1

    sget v3, Landroidx/media/d;->media_actions:I

    invoke-virtual {v1, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v0, :cond_36

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v0, :cond_36

    iget-object v4, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v4, v4, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/h$a;

    invoke-direct {p0, v4}, Landroidx/media/g/a;->a(Landroidx/core/app/h$a;)Landroid/widget/RemoteViews;

    move-result-object v4

    sget v5, Landroidx/media/d;->media_actions:I

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_36
    iget-boolean v0, p0, Landroidx/media/g/a;->g:Z

    if-eqz v0, :cond_5c

    sget v0, Landroidx/media/d;->cancel_action:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroidx/media/d;->cancel_action:I

    iget-object v2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v2, v2, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/media/e;->cancel_button_image_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "setAlpha"

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v0, Landroidx/media/d;->cancel_action:I

    iget-object v2, p0, Landroidx/media/g/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_63

    :cond_5c
    sget v0, Landroidx/media/d;->cancel_action:I

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_63
    return-object v1
.end method

.method public a(Landroid/app/PendingIntent;)Landroidx/media/g/a;
    .registers 2

    iput-object p1, p0, Landroidx/media/g/a;->h:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/g/a;
    .registers 2

    iput-object p1, p0, Landroidx/media/g/a;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p0
.end method

.method public a(Z)Landroidx/media/g/a;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_8

    iput-boolean p1, p0, Landroidx/media/g/a;->g:Z

    :cond_8
    return-object p0
.end method

.method public varargs a([I)Landroidx/media/g/a;
    .registers 2

    iput-object p1, p0, Landroidx/media/g/a;->e:[I

    return-object p0
.end method

.method public a(Landroidx/core/app/g;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_16

    invoke-interface {p1}, Landroidx/core/app/g;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/media/g/a;->a(Landroid/app/Notification$MediaStyle;)Landroid/app/Notification$MediaStyle;

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_22

    :cond_16
    iget-boolean v0, p0, Landroidx/media/g/a;->g:Z

    if-eqz v0, :cond_22

    invoke-interface {p1}, Landroidx/core/app/g;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :cond_22
    :goto_22
    return-void
.end method

.method b()Landroid/widget/RemoteViews;
    .registers 9

    invoke-virtual {p0}, Landroidx/media/g/a;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroidx/core/app/h$e;->a(ZIZ)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v3, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v3, v3, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Landroidx/media/g/a;->e:[I

    if-nez v4, :cond_18

    const/4 v4, 0x0

    goto :goto_1e

    :cond_18
    array-length v4, v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1e
    sget v5, Landroidx/media/d;->media_actions:I

    invoke-virtual {v0, v5}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v4, :cond_60

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_60

    if-ge v5, v3, :cond_44

    iget-object v6, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v6, v6, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    iget-object v7, p0, Landroidx/media/g/a;->e:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/h$a;

    invoke-direct {p0, v6}, Landroidx/media/g/a;->a(Landroidx/core/app/h$a;)Landroid/widget/RemoteViews;

    move-result-object v6

    sget v7, Landroidx/media/d;->media_actions:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    iget-boolean v1, p0, Landroidx/media/g/a;->g:Z

    const/16 v3, 0x8

    if-eqz v1, :cond_8d

    sget v1, Landroidx/media/d;->end_padder:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Landroidx/media/d;->cancel_action:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Landroidx/media/d;->cancel_action:I

    iget-object v2, p0, Landroidx/media/g/a;->h:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v1, Landroidx/media/d;->cancel_action:I

    iget-object v2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v2, v2, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/media/e;->cancel_button_image_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "setAlpha"

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_97

    :cond_8d
    sget v1, Landroidx/media/d;->end_padder:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v1, Landroidx/media/d;->cancel_action:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_97
    return-object v0
.end method

.method public b(Landroidx/core/app/g;)Landroid/widget/RemoteViews;
    .registers 3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-virtual {p0}, Landroidx/media/g/a;->a()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method c()I
    .registers 2

    sget v0, Landroidx/media/f;->notification_template_media:I

    return v0
.end method

.method public c(Landroidx/core/app/g;)Landroid/widget/RemoteViews;
    .registers 3

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-virtual {p0}, Landroidx/media/g/a;->b()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method
