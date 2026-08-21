###### Class androidx.core.app.i (androidx.core.app.i)
.class Landroidx/core/app/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/core/app/g;


# instance fields
.field private final a:Landroid/app/Notification$Builder;

.field private final b:Landroidx/core/app/h$d;

.field private c:Landroid/widget/RemoteViews;

.field private d:Landroid/widget/RemoteViews;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Bundle;

.field private g:I

.field private h:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroidx/core/app/h$d;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i;->e:Ljava/util/List;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/core/app/i;->b:Landroidx/core/app/h$d;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_23

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    iget-object v3, p1, Landroidx/core/app/h$d;->I:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2a

    :cond_23
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_2a
    iput-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-wide v3, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->icon:I

    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroidx/core/app/h$d;->h:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    iget v5, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_66

    const/4 v3, 0x1

    goto :goto_67

    :cond_66
    const/4 v3, 0x0

    :goto_67
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_73

    const/4 v3, 0x1

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    :goto_74
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->flags:I

    const/16 v6, 0x10

    and-int/2addr v3, v6

    if-eqz v3, :cond_81

    const/4 v3, 0x1

    goto :goto_82

    :cond_81
    const/4 v3, 0x0

    :goto_82
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, v0, Landroid/app/Notification;->defaults:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/h$d;->d:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/h$d;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/h$d;->j:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/h$d;->f:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/h$d;->g:Landroid/app/PendingIntent;

    iget v7, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_b4

    const/4 v7, 0x1

    goto :goto_b5

    :cond_b4
    const/4 v7, 0x0

    :goto_b5
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/h$d;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/h$d;->k:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/h$d;->r:I

    iget v7, p1, Landroidx/core/app/h$d;->s:I

    iget-boolean v8, p1, Landroidx/core/app/h$d;->t:Z

    invoke-virtual {v2, v3, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_dd

    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v8, v0, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v2, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    :cond_dd
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x14

    if-lt v2, v6, :cond_152

    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v6, p1, Landroidx/core/app/h$d;->p:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v6, p1, Landroidx/core/app/h$d;->n:Z

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v6, p1, Landroidx/core/app/h$d;->l:I

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_fc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/core/app/h$a;

    invoke-direct {p0, v6}, Landroidx/core/app/i;->a(Landroidx/core/app/h$a;)V

    goto :goto_fc

    :cond_10c
    iget-object v2, p1, Landroidx/core/app/h$d;->B:Landroid/os/Bundle;

    if-eqz v2, :cond_115

    iget-object v6, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v6, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_115
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v7, :cond_14a

    iget-boolean v2, p1, Landroidx/core/app/h$d;->x:Z

    if-eqz v2, :cond_124

    iget-object v2, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string v6, "android.support.localOnly"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_124
    iget-object v2, p1, Landroidx/core/app/h$d;->u:Ljava/lang/String;

    if-eqz v2, :cond_13f

    iget-object v6, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string v8, "android.support.groupKey"

    invoke-virtual {v6, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Landroidx/core/app/h$d;->v:Z

    if-eqz v2, :cond_138

    iget-object v2, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string v6, "android.support.isGroupSummary"

    goto :goto_13c

    :cond_138
    iget-object v2, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string v6, "android.support.useSideChannel"

    :goto_13c
    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13f
    iget-object v2, p1, Landroidx/core/app/h$d;->w:Ljava/lang/String;

    if-eqz v2, :cond_14a

    iget-object v4, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    const-string v6, "android.support.sortKey"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14a
    iget-object v2, p1, Landroidx/core/app/h$d;->F:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    iget-object v2, p1, Landroidx/core/app/h$d;->G:Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    :cond_152
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v2, v4, :cond_182

    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroidx/core/app/h$d;->m:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_182

    iget-object v2, p1, Landroidx/core/app/h$d;->O:Ljava/util/ArrayList;

    if-eqz v2, :cond_182

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_182

    iget-object v2, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    iget-object v4, p1, Landroidx/core/app/h$d;->O:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v6, "android.people"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_182
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_1a3

    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v4, p1, Landroidx/core/app/h$d;->x:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p1, Landroidx/core/app/h$d;->u:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-boolean v4, p1, Landroidx/core/app/h$d;->v:Z

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p1, Landroidx/core/app/h$d;->w:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget v2, p1, Landroidx/core/app/h$d;->M:I

    iput v2, p0, Landroidx/core/app/i;->g:I

    :cond_1a3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_232

    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroidx/core/app/h$d;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/h$d;->C:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget v3, p1, Landroidx/core/app/h$d;->D:I

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Landroidx/core/app/h$d;->E:Landroid/app/Notification;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/core/app/h$d;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1ce
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_1ce

    :cond_1e0
    iget-object v0, p1, Landroidx/core/app/h$d;->H:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroidx/core/app/i;->h:Landroid/widget/RemoteViews;

    iget-object v0, p1, Landroidx/core/app/h$d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_232

    invoke-virtual {p1}, Landroidx/core/app/h$d;->c()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1fd

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1fd
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    :goto_203
    iget-object v6, p1, Landroidx/core/app/h$d;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_221

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Landroidx/core/app/h$d;->c:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/core/app/h$a;

    invoke-static {v7}, Landroidx/core/app/j;->a(Landroidx/core/app/h$a;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_203

    :cond_221
    const-string v4, "invisible_actions"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroidx/core/app/h$d;->c()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_260

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v2, p1, Landroidx/core/app/h$d;->B:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p1, Landroidx/core/app/h$d;->q:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroidx/core/app/h$d;->F:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_24e

    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_24e
    iget-object v0, p1, Landroidx/core/app/h$d;->G:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_257

    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_257
    iget-object v0, p1, Landroidx/core/app/h$d;->H:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_260

    iget-object v2, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2a2

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget v1, p1, Landroidx/core/app/h$d;->J:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/core/app/h$d;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroidx/core/app/h$d;->L:J

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/core/app/h$d;->M:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    iget-boolean v0, p1, Landroidx/core/app/h$d;->z:Z

    if-eqz v0, :cond_288

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroidx/core/app/h$d;->y:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    :cond_288
    iget-object p1, p1, Landroidx/core/app/h$d;->I:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2a2

    iget-object p1, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v5, v5, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_2a2
    return-void
.end method

.method private a(Landroid/app/Notification;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    return-void
.end method

.method private a(Landroidx/core/app/h$a;)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_88

    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroidx/core/app/h$a;->e()I

    move-result v1

    invoke-virtual {p1}, Landroidx/core/app/h$a;->i()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/core/app/h$a;->a()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/l;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/l;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/l;->a([Landroidx/core/app/l;)[Landroid/app/RemoteInput;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_31

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_31
    invoke-virtual {p1}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_41

    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_46

    :cond_41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_46
    invoke-virtual {p1}, Landroidx/core/app/h$a;->b()Z

    move-result v2

    const-string v3, "android.support.allowGeneratedReplies"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_5c

    invoke-virtual {p1}, Landroidx/core/app/h$a;->b()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    :cond_5c
    invoke-virtual {p1}, Landroidx/core/app/h$a;->g()I

    move-result v2

    const-string v3, "android.support.action.semanticAction"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_72

    invoke-virtual {p1}, Landroidx/core/app/h$a;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    :cond_72
    invoke-virtual {p1}, Landroidx/core/app/h$a;->h()Z

    move-result p1

    const-string v2, "android.support.action.showsUserInterface"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object p1, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_97

    :cond_88
    const/16 v1, 0x10

    if-lt v0, v1, :cond_97

    iget-object v0, p0, Landroidx/core/app/i;->e:Ljava/util/List;

    iget-object v1, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroidx/core/app/j;->a(Landroid/app/Notification$Builder;Landroidx/core/app/h$a;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_97
    :goto_97
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Notification$Builder;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public b()Landroid/app/Notification;
    .registers 6

    iget-object v0, p0, Landroidx/core/app/i;->b:Landroidx/core/app/h$d;

    iget-object v0, v0, Landroidx/core/app/h$d;->o:Landroidx/core/app/h$e;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p0}, Landroidx/core/app/h$e;->a(Landroidx/core/app/g;)V

    :cond_9
    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Landroidx/core/app/h$e;->c(Landroidx/core/app/g;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {p0}, Landroidx/core/app/i;->c()Landroid/app/Notification;

    move-result-object v2

    if-eqz v1, :cond_1a

    :goto_17
    iput-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_21

    :cond_1a
    iget-object v1, p0, Landroidx/core/app/i;->b:Landroidx/core/app/h$d;

    iget-object v1, v1, Landroidx/core/app/h$d;->F:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_21

    goto :goto_17

    :cond_21
    :goto_21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_31

    if-eqz v0, :cond_31

    invoke-virtual {v0, p0}, Landroidx/core/app/h$e;->b(Landroidx/core/app/g;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_31

    iput-object v1, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_45

    if-eqz v0, :cond_45

    iget-object v1, p0, Landroidx/core/app/i;->b:Landroidx/core/app/h$d;

    iget-object v1, v1, Landroidx/core/app/h$d;->o:Landroidx/core/app/h$e;

    invoke-virtual {v1, p0}, Landroidx/core/app/h$e;->d(Landroidx/core/app/g;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_45

    iput-object v1, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_45
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_54

    if-eqz v0, :cond_54

    invoke-static {v2}, Landroidx/core/app/h;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-virtual {v0, v1}, Landroidx/core/app/h$e;->a(Landroid/os/Bundle;)V

    :cond_54
    return-object v2
.end method

.method protected c()Landroid/app/Notification;
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    :cond_d
    const/16 v1, 0x18

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v1, :cond_44

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_30

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v3, :cond_30

    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    :cond_30
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_43

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v2, :cond_43

    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    :cond_43
    return-object v0

    :cond_44
    const/16 v1, 0x15

    if-lt v0, v1, :cond_92

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_5b

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_5b
    iget-object v1, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_61

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_61
    iget-object v1, p0, Landroidx/core/app/i;->h:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_67

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_67
    iget v1, p0, Landroidx/core/app/i;->g:I

    if-eqz v1, :cond_91

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7e

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v3, :cond_7e

    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    :cond_7e
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_91

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_91

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v2, :cond_91

    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    :cond_91
    return-object v0

    :cond_92
    const/16 v1, 0x14

    if-lt v0, v1, :cond_da

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_a9

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_a9
    iget-object v1, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_af

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_af
    iget v1, p0, Landroidx/core/app/i;->g:I

    if-eqz v1, :cond_d9

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c6

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_c6

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v3, :cond_c6

    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    :cond_c6
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d9

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_d9

    iget v1, p0, Landroidx/core/app/i;->g:I

    if-ne v1, v2, :cond_d9

    invoke-direct {p0, v0}, Landroidx/core/app/i;->a(Landroid/app/Notification;)V

    :cond_d9
    return-object v0

    :cond_da
    const/16 v1, 0x13

    const-string v2, "android.support.actionExtras"

    if-lt v0, v1, :cond_107

    iget-object v0, p0, Landroidx/core/app/i;->e:Ljava/util/List;

    invoke-static {v0}, Landroidx/core/app/j;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_ed

    iget-object v1, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_ed
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_100

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_100
    iget-object v1, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_106

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_106
    return-object v0

    :cond_107
    const/16 v1, 0x10

    if-lt v0, v1, :cond_15b

    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/h;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v3, Landroid/os/Bundle;

    iget-object v4, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v4, p0, Landroidx/core/app/i;->f:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_126
    :goto_126
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_126

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_126

    :cond_13c
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/core/app/i;->e:Ljava/util/List;

    invoke-static {v1}, Landroidx/core/app/j;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_14e

    invoke-static {v0}, Landroidx/core/app/h;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_14e
    iget-object v1, p0, Landroidx/core/app/i;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_154

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_154
    iget-object v1, p0, Landroidx/core/app/i;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_15a

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_15a
    return-object v0

    :cond_15b
    iget-object v0, p0, Landroidx/core/app/i;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
