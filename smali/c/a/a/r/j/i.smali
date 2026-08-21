###### Class c.a.a.r.j.i (c.a.a.r.j.i)
.class public abstract Lc/a/a/r/j/i;
.super Lc/a/a/r/j/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/r/j/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lc/a/a/r/j/a<",
        "TZ;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static h:Ljava/lang/Integer;


# instance fields
.field protected final c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d:Lc/a/a/r/j/i$a;

.field private e:Landroid/view/View$OnAttachStateChangeListener;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lc/a/a/r/j/a;-><init>()V

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lc/a/a/r/j/i;->c:Landroid/view/View;

    new-instance v0, Lc/a/a/r/j/i$a;

    invoke-direct {v0, p1}, Lc/a/a/r/j/i$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc/a/a/r/j/i;->d:Lc/a/a/r/j/i$a;

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lc/a/a/r/j/i;->h:Ljava/lang/Integer;

    if-nez v0, :cond_a

    iget-object v0, p0, Lc/a/a/r/j/i;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_13

    :cond_a
    iget-object v1, p0, Lc/a/a/r/j/i;->c:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_13
    return-void
.end method

.method private b()Ljava/lang/Object;
    .registers 3

    sget-object v0, Lc/a/a/r/j/i;->h:Ljava/lang/Integer;

    if-nez v0, :cond_b

    iget-object v0, p0, Lc/a/a/r/j/i;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v1, p0, Lc/a/a/r/j/i;->c:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lc/a/a/r/j/i;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lc/a/a/r/j/i;->g:Z

    if-eqz v1, :cond_9

    goto :goto_11

    :cond_9
    iget-object v1, p0, Lc/a/a/r/j/i;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/r/j/i;->g:Z

    :cond_11
    :goto_11
    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lc/a/a/r/j/i;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_11

    iget-boolean v1, p0, Lc/a/a/r/j/i;->g:Z

    if-nez v1, :cond_9

    goto :goto_11

    :cond_9
    iget-object v1, p0, Lc/a/a/r/j/i;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/r/j/i;->g:Z

    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public a()Lc/a/a/r/c;
    .registers 3

    invoke-direct {p0}, Lc/a/a/r/j/i;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    instance-of v1, v0, Lc/a/a/r/c;

    if-eqz v1, :cond_d

    check-cast v0, Lc/a/a/r/c;

    goto :goto_16

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return-object v0
.end method

.method public a(Lc/a/a/r/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lc/a/a/r/j/i;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lc/a/a/r/j/g;)V
    .registers 3

    iget-object v0, p0, Lc/a/a/r/j/i;->d:Lc/a/a/r/j/i$a;

    invoke-virtual {v0, p1}, Lc/a/a/r/j/i$a;->b(Lc/a/a/r/j/g;)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Lc/a/a/r/j/a;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lc/a/a/r/j/i;->c()V

    return-void
.end method

.method public b(Lc/a/a/r/j/g;)V
    .registers 3

    iget-object v0, p0, Lc/a/a/r/j/i;->d:Lc/a/a/r/j/i$a;

    invoke-virtual {v0, p1}, Lc/a/a/r/j/i$a;->a(Lc/a/a/r/j/g;)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Lc/a/a/r/j/a;->c(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lc/a/a/r/j/i;->d:Lc/a/a/r/j/i$a;

    invoke-virtual {p1}, Lc/a/a/r/j/i$a;->b()V

    iget-boolean p1, p0, Lc/a/a/r/j/i;->f:Z

    if-nez p1, :cond_f

    invoke-direct {p0}, Lc/a/a/r/j/i;->d()V

    :cond_f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/r/j/i;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class c.a.a.r.j.i.a (c.a.a.r.j.i$a)
.class final Lc/a/a/r/j/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/r/j/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/r/j/i$a$a;
    }
.end annotation


# static fields
.field static e:Ljava/lang/Integer;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/a/r/j/g;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field private d:Lc/a/a/r/j/i$a$a;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/a/a/r/j/i$a;->b:Ljava/util/List;

    iput-object p1, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    return-void
.end method

.method private a(III)I
    .registers 6

    sub-int v0, p2, p3

    if-lez v0, :cond_5

    return v0

    :cond_5
    iget-boolean v0, p0, Lc/a/a/r/j/i$a;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    sub-int/2addr p1, p3

    if-lez p1, :cond_17

    return p1

    :cond_17
    iget-object p1, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_3b

    const/4 p1, -0x2

    if-ne p2, p1, :cond_3b

    const/4 p1, 0x4

    const-string p2, "ViewTarget"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_30

    const-string p1, "Glide treats LayoutParams.WRAP_CONTENT as a request for an image the size of this device\'s screen dimensions. If you want to load the original image and are ok with the corresponding memory cost and OOMs (depending on the input size), use .override(Target.SIZE_ORIGINAL). Otherwise, use LayoutParams.MATCH_PARENT, set layout_width and layout_height to fixed dimension, or use .override() with fixed dimensions."

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object p1, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc/a/a/r/j/i$a;->a(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_3b
    return v1
.end method

.method private static a(Landroid/content/Context;)I
    .registers 2

    sget-object v0, Lc/a/a/r/j/i$a;->e:Ljava/lang/Integer;

    if-nez v0, :cond_2b

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-static {p0}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lc/a/a/r/j/i$a;->e:Ljava/lang/Integer;

    :cond_2b
    sget-object p0, Lc/a/a/r/j/i$a;->e:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private a(I)Z
    .registers 3

    if-gtz p1, :cond_9

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method private a(II)Z
    .registers 3

    invoke-direct {p0, p1}, Lc/a/a/r/j/i$a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, p2}, Lc/a/a/r/j/i$a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private b(II)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/a/a/r/j/i$a;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/a/a/r/j/g;

    invoke-interface {v1, p1, p2}, Lc/a/a/r/j/g;->a(II)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method private c()I
    .registers 4

    iget-object v0, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_18

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    iget-object v2, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lc/a/a/r/j/i$a;->a(III)I

    move-result v0

    return v0
.end method

.method private d()I
    .registers 4

    iget-object v0, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_18

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    iget-object v2, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Lc/a/a/r/j/i$a;->a(III)I

    move-result v0

    return v0
.end method


# virtual methods
.method a()V
    .registers 4

    iget-object v0, p0, Lc/a/a/r/j/i$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lc/a/a/r/j/i$a;->d()I

    move-result v0

    invoke-direct {p0}, Lc/a/a/r/j/i$a;->c()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lc/a/a/r/j/i$a;->a(II)Z

    move-result v2

    if-nez v2, :cond_18

    return-void

    :cond_18
    invoke-direct {p0, v0, v1}, Lc/a/a/r/j/i$a;->b(II)V

    invoke-virtual {p0}, Lc/a/a/r/j/i$a;->b()V

    return-void
.end method

.method a(Lc/a/a/r/j/g;)V
    .registers 5

    invoke-direct {p0}, Lc/a/a/r/j/i$a;->d()I

    move-result v0

    invoke-direct {p0}, Lc/a/a/r/j/i$a;->c()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lc/a/a/r/j/i$a;->a(II)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p1, v0, v1}, Lc/a/a/r/j/g;->a(II)V

    return-void

    :cond_12
    iget-object v0, p0, Lc/a/a/r/j/i$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lc/a/a/r/j/i$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object p1, p0, Lc/a/a/r/j/i$a;->d:Lc/a/a/r/j/i$a$a;

    if-nez p1, :cond_35

    iget-object p1, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lc/a/a/r/j/i$a$a;

    invoke-direct {v0, p0}, Lc/a/a/r/j/i$a$a;-><init>(Lc/a/a/r/j/i$a;)V

    iput-object v0, p0, Lc/a/a/r/j/i$a;->d:Lc/a/a/r/j/i$a$a;

    iget-object v0, p0, Lc/a/a/r/j/i$a;->d:Lc/a/a/r/j/i$a$a;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_35
    return-void
.end method

.method b()V
    .registers 3

    iget-object v0, p0, Lc/a/a/r/j/i$a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lc/a/a/r/j/i$a;->d:Lc/a/a/r/j/i$a$a;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/r/j/i$a;->d:Lc/a/a/r/j/i$a$a;

    iget-object v0, p0, Lc/a/a/r/j/i$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method b(Lc/a/a/r/j/g;)V
    .registers 3

    iget-object v0, p0, Lc/a/a/r/j/i$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

###### Class c.a.a.r.j.i.a.ViewTreeObserverOnPreDrawListenerC0130a (c.a.a.r.j.i$a$a)
.class final Lc/a/a/r/j/i$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/r/j/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lc/a/a/r/j/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc/a/a/r/j/i$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/a/a/r/j/i$a$a;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    const-string v0, "ViewTarget"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnGlobalLayoutListener called attachStateListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, p0, Lc/a/a/r/j/i$a$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/r/j/i$a;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lc/a/a/r/j/i$a;->a()V

    :cond_2a
    const/4 v0, 0x1

    return v0
.end method
