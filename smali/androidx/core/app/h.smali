###### Class androidx.core.app.h (androidx.core.app.h)
.class public Landroidx/core/app/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/h$a;,
        Landroidx/core/app/h$c;,
        Landroidx/core/app/h$b;,
        Landroidx/core/app/h$e;,
        Landroidx/core/app/h$d;
    }
.end annotation


# direct methods
.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    :cond_9
    const/16 v1, 0x10

    if-lt v0, v1, :cond_12

    invoke-static {p0}, Landroidx/core/app/j;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

###### Class androidx.core.app.h.a (androidx.core.app.h$a)
.class public Landroidx/core/app/h$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Bundle;

.field private final b:[Landroidx/core/app/l;

.field private final c:[Landroidx/core/app/l;

.field private d:Z

.field e:Z

.field private final f:I

.field public g:I

.field public h:Ljava/lang/CharSequence;

.field public i:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 14

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/l;[Landroidx/core/app/l;ZIZ)V

    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/l;[Landroidx/core/app/l;ZIZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/h$a;->e:Z

    iput p1, p0, Landroidx/core/app/h$a;->g:I

    invoke-static {p2}, Landroidx/core/app/h$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$a;->h:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroidx/core/app/h$a;->i:Landroid/app/PendingIntent;

    if-eqz p4, :cond_13

    goto :goto_18

    :cond_13
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_18
    iput-object p4, p0, Landroidx/core/app/h$a;->a:Landroid/os/Bundle;

    iput-object p5, p0, Landroidx/core/app/h$a;->b:[Landroidx/core/app/l;

    iput-object p6, p0, Landroidx/core/app/h$a;->c:[Landroidx/core/app/l;

    iput-boolean p7, p0, Landroidx/core/app/h$a;->d:Z

    iput p8, p0, Landroidx/core/app/h$a;->f:I

    iput-boolean p9, p0, Landroidx/core/app/h$a;->e:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/h$a;->i:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/core/app/h$a;->d:Z

    return v0
.end method

.method public c()[Landroidx/core/app/l;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/h$a;->c:[Landroidx/core/app/l;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/h$a;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Landroidx/core/app/h$a;->g:I

    return v0
.end method

.method public f()[Landroidx/core/app/l;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/h$a;->b:[Landroidx/core/app/l;

    return-object v0
.end method

.method public g()I
    .registers 2

    iget v0, p0, Landroidx/core/app/h$a;->f:I

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/core/app/h$a;->e:Z

    return v0
.end method

.method public i()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/h$a;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

###### Class androidx.core.app.h.b (androidx.core.app.h$b)
.class public Landroidx/core/app/h$b;
.super Landroidx/core/app/h$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/core/app/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$b;
    .registers 2

    iput-object p1, p0, Landroidx/core/app/h$b;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/core/app/h$b;->g:Z

    return-object p0
.end method

.method public a(Landroidx/core/app/g;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2d

    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-interface {p1}, Landroidx/core/app/g;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/h$e;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/h$b;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/core/app/h$b;->g:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroidx/core/app/h$b;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    :cond_24
    iget-boolean v0, p0, Landroidx/core/app/h$e;->d:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroidx/core/app/h$e;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_2d
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)Landroidx/core/app/h$b;
    .registers 2

    iput-object p1, p0, Landroidx/core/app/h$b;->e:Landroid/graphics/Bitmap;

    return-object p0
.end method

###### Class androidx.core.app.h.c (androidx.core.app.h$c)
.class public Landroidx/core/app/h$c;
.super Landroidx/core/app/h$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private e:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroidx/core/app/h$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/h$c;
    .registers 2

    invoke-static {p1}, Landroidx/core/app/h$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$c;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Landroidx/core/app/g;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_24

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p1}, Landroidx/core/app/g;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/h$e;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/h$c;->e:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-boolean v0, p0, Landroidx/core/app/h$e;->d:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroidx/core/app/h$e;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_24
    return-void
.end method

###### Class androidx.core.app.h.d (androidx.core.app.h$d)
.class public Landroidx/core/app/h$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field A:Ljava/lang/String;

.field B:Landroid/os/Bundle;

.field C:I

.field D:I

.field E:Landroid/app/Notification;

.field F:Landroid/widget/RemoteViews;

.field G:Landroid/widget/RemoteViews;

.field H:Landroid/widget/RemoteViews;

.field I:Ljava/lang/String;

.field J:I

.field K:Ljava/lang/String;

.field L:J

.field M:I

.field N:Landroid/app/Notification;

.field public O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/h$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/CharSequence;

.field f:Landroid/app/PendingIntent;

.field g:Landroid/app/PendingIntent;

.field h:Landroid/widget/RemoteViews;

.field i:Landroid/graphics/Bitmap;

.field j:Ljava/lang/CharSequence;

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:Landroidx/core/app/h$e;

.field p:Ljava/lang/CharSequence;

.field q:[Ljava/lang/CharSequence;

.field r:I

.field s:I

.field t:Z

.field u:Ljava/lang/String;

.field v:Z

.field w:Ljava/lang/String;

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/app/h$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$d;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/h$d;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/h$d;->x:Z

    iput v0, p0, Landroidx/core/app/h$d;->C:I

    iput v0, p0, Landroidx/core/app/h$d;->D:I

    iput v0, p0, Landroidx/core/app/h$d;->J:I

    iput v0, p0, Landroidx/core/app/h$d;->M:I

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput-object p1, p0, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/app/h$d;->I:Ljava/lang/String;

    iget-object p1, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Landroid/app/Notification;->when:J

    iget-object p1, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    iput v0, p0, Landroidx/core/app/h$d;->l:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/h$d;->O:Ljava/util/ArrayList;

    return-void
.end method

.method private a(IZ)V
    .registers 4

    if-eqz p2, :cond_8

    iget-object p2, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    goto :goto_f

    :cond_8
    iget-object p2, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget v0, p2, Landroid/app/Notification;->flags:I

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    :goto_f
    iput p1, p2, Landroid/app/Notification;->flags:I

    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11

    if-eqz p1, :cond_71

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_9

    goto :goto_71

    :cond_9
    iget-object v0, p0, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lb/h/b;->compat_notification_large_icon_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lb/h/b;->compat_notification_large_icon_max_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, v1, :cond_28

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt v2, v0, :cond_28

    return-object p1

    :cond_28
    int-to-double v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-double v5, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    int-to-double v5, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v7, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p1, v2, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_71
    :goto_71
    return-object p1
.end method

.method protected static e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    if-nez p0, :cond_3

    return-object p0

    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_10

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_10
    return-object p0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .registers 2

    new-instance v0, Landroidx/core/app/i;

    invoke-direct {v0, p0}, Landroidx/core/app/i;-><init>(Landroidx/core/app/h$d;)V

    invoke-virtual {v0}, Landroidx/core/app/i;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroidx/core/app/h$d;
    .registers 2

    iput p1, p0, Landroidx/core/app/h$d;->J:I

    return-object p0
.end method

.method public a(III)Landroidx/core/app/h$d;
    .registers 5

    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    iget p1, v0, Landroid/app/Notification;->ledOnMS:I

    if-eqz p1, :cond_12

    iget p1, v0, Landroid/app/Notification;->ledOffMS:I

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iget-object p2, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget p3, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, -0x2

    or-int/2addr p1, p3

    iput p1, p2, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public a(IIZ)Landroidx/core/app/h$d;
    .registers 4

    iput p1, p0, Landroidx/core/app/h$d;->r:I

    iput p2, p0, Landroidx/core/app/h$d;->s:I

    iput-boolean p3, p0, Landroidx/core/app/h$d;->t:Z

    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/h$d;
    .registers 6

    iget-object v0, p0, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/h$a;

    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/h$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(J)Landroidx/core/app/h$d;
    .registers 4

    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;
    .registers 2

    iput-object p1, p0, Landroidx/core/app/h$d;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroidx/core/app/h$d;
    .registers 2

    invoke-direct {p0, p1}, Landroidx/core/app/h$d;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$d;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroidx/core/app/h$d;
    .registers 4

    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 p1, -0x1

    iput p1, v0, Landroid/app/Notification;->audioStreamType:I

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_22

    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_22
    return-object p0
.end method

.method public a(Landroidx/core/app/h$a;)Landroidx/core/app/h$d;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/h$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Landroidx/core/app/h$e;)Landroidx/core/app/h$d;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/h$d;->o:Landroidx/core/app/h$e;

    if-eq v0, p1, :cond_d

    iput-object p1, p0, Landroidx/core/app/h$d;->o:Landroidx/core/app/h$e;

    iget-object p1, p0, Landroidx/core/app/h$d;->o:Landroidx/core/app/h$e;

    if-eqz p1, :cond_d

    invoke-virtual {p1, p0}, Landroidx/core/app/h$e;->a(Landroidx/core/app/h$d;)V

    :cond_d
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;
    .registers 2

    invoke-static {p1}, Landroidx/core/app/h$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$d;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/core/app/h$d;
    .registers 2

    iput-object p1, p0, Landroidx/core/app/h$d;->I:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Landroidx/core/app/h$d;
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroidx/core/app/h$d;->a(IZ)V

    return-object p0
.end method

.method public a([J)Landroidx/core/app/h$d;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Landroidx/core/app/h$d;->C:I

    return v0
.end method

.method public b(I)Landroidx/core/app/h$d;
    .registers 2

    iput p1, p0, Landroidx/core/app/h$d;->C:I

    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)Landroidx/core/app/h$d;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;
    .registers 2

    invoke-static {p1}, Landroidx/core/app/h$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$d;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Z)Landroidx/core/app/h$d;
    .registers 2

    iput-boolean p1, p0, Landroidx/core/app/h$d;->y:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/core/app/h$d;->z:Z

    return-object p0
.end method

.method public c()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroidx/core/app/h$d;->B:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/h$d;->B:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroidx/core/app/h$d;->B:Landroid/os/Bundle;

    return-object v0
.end method

.method public c(I)Landroidx/core/app/h$d;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_e

    iget p1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/app/Notification;->flags:I

    :cond_e
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;
    .registers 2

    invoke-static {p1}, Landroidx/core/app/h$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/h$d;->p:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Z)Landroidx/core/app/h$d;
    .registers 2

    iput-boolean p1, p0, Landroidx/core/app/h$d;->x:Z

    return-object p0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Landroidx/core/app/h$d;->l:I

    return v0
.end method

.method public d(I)Landroidx/core/app/h$d;
    .registers 2

    iput p1, p0, Landroidx/core/app/h$d;->k:I

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Landroidx/core/app/h$d;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/h$d;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public d(Z)Landroidx/core/app/h$d;
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroidx/core/app/h$d;->a(IZ)V

    return-object p0
.end method

.method public e()J
    .registers 3

    iget-boolean v0, p0, Landroidx/core/app/h$d;->m:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public e(I)Landroidx/core/app/h$d;
    .registers 2

    iput p1, p0, Landroidx/core/app/h$d;->l:I

    return-object p0
.end method

.method public e(Z)Landroidx/core/app/h$d;
    .registers 2

    iput-boolean p1, p0, Landroidx/core/app/h$d;->m:Z

    return-object p0
.end method

.method public f(I)Landroidx/core/app/h$d;
    .registers 3

    iget-object v0, p0, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public f(Z)Landroidx/core/app/h$d;
    .registers 2

    iput-boolean p1, p0, Landroidx/core/app/h$d;->n:Z

    return-object p0
.end method

.method public g(I)Landroidx/core/app/h$d;
    .registers 2

    iput p1, p0, Landroidx/core/app/h$d;->D:I

    return-object p0
.end method

###### Class androidx.core.app.h.e (androidx.core.app.h$e)
.class public abstract Landroidx/core/app/h$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field protected a:Landroidx/core/app/h$d;

.field b:Ljava/lang/CharSequence;

.field c:Ljava/lang/CharSequence;

.field d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/app/h$e;->d:Z

    return-void
.end method

.method private a(III)Landroid/graphics/Bitmap;
    .registers 7

    iget-object v0, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v0, v0, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p3, :cond_13

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_14

    :cond_13
    move v0, p3

    :goto_14
    if-nez p3, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    :cond_1a
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_34

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_34
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private a(IIII)Landroid/graphics/Bitmap;
    .registers 7

    sget v0, Lb/h/c;->notification_icon_background:I

    if-nez p4, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-direct {p0, v0, p4, p2}, Landroidx/core/app/h$e;->a(III)Landroid/graphics/Bitmap;

    move-result-object p4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v1, v1, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    invoke-virtual {p1, p2, p2, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const/4 p3, -0x1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p4
.end method


# virtual methods
.method public a(II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/app/h$e;->a(III)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public a(ZIZ)Landroid/widget/RemoteViews;
    .registers 16

    iget-object v0, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v0, v0, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v1, v1, Landroidx/core/app/h$d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object p2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    invoke-virtual {p2}, Landroidx/core/app/h$d;->d()I

    move-result p2

    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ge p2, v1, :cond_22

    const/4 p2, 0x1

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    :goto_23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/16 v10, 0x10

    if-lt v2, v10, :cond_4b

    if-ge v2, v3, :cond_4b

    const-string v2, "setBackgroundResource"

    if-eqz p2, :cond_3d

    sget p2, Lb/h/d;->notification_background:I

    sget v4, Lb/h/c;->notification_bg_low:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget p2, Lb/h/d;->icon:I

    sget v4, Lb/h/c;->notification_template_icon_low_bg:I

    goto :goto_48

    :cond_3d
    sget p2, Lb/h/d;->notification_background:I

    sget v4, Lb/h/c;->notification_bg:I

    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget p2, Lb/h/d;->icon:I

    sget v4, Lb/h/c;->notification_template_icon_bg:I

    :goto_48
    invoke-virtual {v7, p2, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_4b
    iget-object p2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v2, p2, Landroidx/core/app/h$d;->i:Landroid/graphics/Bitmap;

    const/16 v11, 0x8

    if-eqz v2, :cond_b2

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v10, :cond_66

    sget p2, Lb/h/d;->icon:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p2, Lb/h/d;->icon:I

    iget-object v2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v2, v2, Landroidx/core/app/h$d;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v7, p2, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_6b

    :cond_66
    sget p2, Lb/h/d;->icon:I

    invoke-virtual {v7, p2, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_6b
    if-eqz p1, :cond_f9

    iget-object p1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object p1, p1, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_f9

    sget p1, Lb/h/b;->notification_right_icon_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget p2, Lb/h/b;->notification_small_icon_background_padding:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, p1, p2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_9d

    iget-object v1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v2, v1, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v1}, Landroidx/core/app/h$d;->b()I

    move-result v1

    invoke-direct {p0, v2, p1, p2, v1}, Landroidx/core/app/h$e;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    sget p2, Lb/h/d;->right_icon:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_ac

    :cond_9d
    sget p1, Lb/h/d;->right_icon:I

    iget-object p2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object p2, p2, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget p2, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p2, v1}, Landroidx/core/app/h$e;->a(II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_ac
    sget p1, Lb/h/d;->right_icon:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_f9

    :cond_b2
    if-eqz p1, :cond_f9

    iget-object p1, p2, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->icon:I

    if-eqz p1, :cond_f9

    sget p1, Lb/h/d;->icon:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_ea

    sget p1, Lb/h/b;->notification_large_icon_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sget p2, Lb/h/b;->notification_big_circle_margin:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    sget p2, Lb/h/b;->notification_small_icon_size_as_large:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v2, v1, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v1}, Landroidx/core/app/h$d;->b()I

    move-result v1

    invoke-direct {p0, v2, p1, p2, v1}, Landroidx/core/app/h$e;->a(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    sget p2, Lb/h/d;->icon:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_f9

    :cond_ea
    sget p1, Lb/h/d;->icon:I

    iget-object p2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object p2, p2, Landroidx/core/app/h$d;->N:Landroid/app/Notification;

    iget p2, p2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, p2, v1}, Landroidx/core/app/h$e;->a(II)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_f9
    :goto_f9
    iget-object p1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object p1, p1, Landroidx/core/app/h$d;->d:Ljava/lang/CharSequence;

    if-eqz p1, :cond_104

    sget p2, Lb/h/d;->title:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_104
    iget-object p1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object p1, p1, Landroidx/core/app/h$d;->e:Ljava/lang/CharSequence;

    if-eqz p1, :cond_111

    sget p2, Lb/h/d;->text:I

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 p1, 0x1

    goto :goto_112

    :cond_111
    const/4 p1, 0x0

    :goto_112
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p2, v3, :cond_11e

    iget-object p2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object p2, p2, Landroidx/core/app/h$d;->i:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_11e

    const/4 p2, 0x1

    goto :goto_11f

    :cond_11e
    const/4 p2, 0x0

    :goto_11f
    iget-object v1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v2, v1, Landroidx/core/app/h$d;->j:Ljava/lang/CharSequence;

    if-eqz v2, :cond_132

    sget p1, Lb/h/d;->info:I

    invoke-virtual {v7, p1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_12a
    sget p1, Lb/h/d;->info:I

    invoke-virtual {v7, p1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 p1, 0x1

    const/4 p2, 0x1

    goto :goto_166

    :cond_132
    iget v1, v1, Landroidx/core/app/h$d;->k:I

    if-lez v1, :cond_161

    sget p1, Lb/h/e;->status_bar_notification_info_maxnum:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iget-object p2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget p2, p2, Landroidx/core/app/h$d;->k:I

    if-le p2, p1, :cond_14e

    sget p1, Lb/h/d;->info:I

    sget p2, Lb/h/f;->status_bar_notification_info_overflow:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_12a

    :cond_14e
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object p1

    sget p2, Lb/h/d;->info:I

    iget-object v1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget v1, v1, Landroidx/core/app/h$d;->k:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p2, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_12a

    :cond_161
    sget v1, Lb/h/d;->info:I

    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_166
    iget-object v1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v1, v1, Landroidx/core/app/h$d;->p:Ljava/lang/CharSequence;

    if-eqz v1, :cond_18c

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_18c

    sget v2, Lb/h/d;->text:I

    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object v1, v1, Landroidx/core/app/h$d;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_187

    sget v2, Lb/h/d;->text2:I

    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v1, Lb/h/d;->text2:I

    invoke-virtual {v7, v1, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v1, 0x1

    goto :goto_18d

    :cond_187
    sget v1, Lb/h/d;->text2:I

    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_18c
    const/4 v1, 0x0

    :goto_18d
    if-eqz v1, :cond_1ab

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_1ab

    if-eqz p3, :cond_1a1

    sget p3, Lb/h/b;->notification_subtext_size:I

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    sget v0, Lb/h/d;->text:I

    invoke-virtual {v7, v0, v9, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_1a1
    sget v2, Lb/h/d;->line1:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_1ab
    iget-object p3, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    invoke-virtual {p3}, Landroidx/core/app/h$d;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1f8

    iget-object p2, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-boolean p2, p2, Landroidx/core/app/h$d;->n:Z

    if-eqz p2, :cond_1e5

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v10, :cond_1e5

    sget p2, Lb/h/d;->chronometer:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p2, Lb/h/d;->chronometer:I

    iget-object p3, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    invoke-virtual {p3}, Landroidx/core/app/h$d;->e()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-string p3, "setBase"

    invoke-virtual {v7, p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    sget p2, Lb/h/d;->chronometer:I

    const-string p3, "setStarted"

    invoke-virtual {v7, p2, p3, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_1f7

    :cond_1e5
    sget p2, Lb/h/d;->time:I

    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p2, Lb/h/d;->time:I

    iget-object p3, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    invoke-virtual {p3}, Landroidx/core/app/h$d;->e()J

    move-result-wide v0

    const-string p3, "setTime"

    invoke-virtual {v7, p2, p3, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    :goto_1f7
    const/4 p2, 0x1

    :cond_1f8
    sget p3, Lb/h/d;->right_side:I

    if-eqz p2, :cond_1fe

    const/4 p2, 0x0

    goto :goto_200

    :cond_1fe
    const/16 p2, 0x8

    :goto_200
    invoke-virtual {v7, p3, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget p2, Lb/h/d;->line3:I

    if-eqz p1, :cond_208

    goto :goto_20a

    :cond_208
    const/16 v9, 0x8

    :goto_20a
    invoke-virtual {v7, p2, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v7
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public abstract a(Landroidx/core/app/g;)V
.end method

.method public a(Landroidx/core/app/h$d;)V
    .registers 3

    iget-object v0, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    if-eq v0, p1, :cond_d

    iput-object p1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    iget-object p1, p0, Landroidx/core/app/h$e;->a:Landroidx/core/app/h$d;

    if-eqz p1, :cond_d

    invoke-virtual {p1, p0}, Landroidx/core/app/h$d;->a(Landroidx/core/app/h$e;)Landroidx/core/app/h$d;

    :cond_d
    return-void
.end method

.method public b(Landroidx/core/app/g;)Landroid/widget/RemoteViews;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Landroidx/core/app/g;)Landroid/widget/RemoteViews;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Landroidx/core/app/g;)Landroid/widget/RemoteViews;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
