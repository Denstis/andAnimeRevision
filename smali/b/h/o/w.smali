###### Class b.h.o.w (b.h.o.w)
.class public final Lb/h/o/w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/o/w$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;

.field c:Ljava/lang/Runnable;

.field d:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/h/o/w;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Lb/h/o/w;->c:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lb/h/o/w;->d:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(Landroid/view/View;Lb/h/o/x;)V
    .registers 5

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lb/h/o/w$a;

    invoke-direct {v1, p0, p2, p1}, Lb/h/o/w$a;-><init>(Lb/h/o/w;Lb/h/o/x;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_17

    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_17
    return-void
.end method


# virtual methods
.method public a(F)Lb/h/o/w;
    .registers 3

    iget-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_11
    return-object p0
.end method

.method public a(J)Lb/h/o/w;
    .registers 4

    iget-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_11
    return-object p0
.end method

.method public a(Landroid/view/animation/Interpolator;)Lb/h/o/w;
    .registers 3

    iget-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_11
    return-object p0
.end method

.method public a(Lb/h/o/x;)Lb/h/o/w;
    .registers 5

    iget-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_11

    goto :goto_1b

    :cond_11
    const/high16 v1, 0x7e000000

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance p1, Lb/h/o/w$c;

    invoke-direct {p1, p0}, Lb/h/o/w$c;-><init>(Lb/h/o/w;)V

    :goto_1b
    invoke-direct {p0, v0, p1}, Lb/h/o/w;->a(Landroid/view/View;Lb/h/o/x;)V

    :cond_1e
    return-object p0
.end method

.method public a(Lb/h/o/z;)Lb/h/o/w;
    .registers 5

    iget-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1f

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1f

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    new-instance v1, Lb/h/o/w$b;

    invoke-direct {v1, p0, p1, v0}, Lb/h/o/w$b;-><init>(Lb/h/o/w;Lb/h/o/z;Landroid/view/View;)V

    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1f
    return-object p0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_11
    return-void
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public b(F)Lb/h/o/w;
    .registers 3

    iget-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_11
    return-object p0
.end method

.method public b(J)Lb/h/o/w;
    .registers 4

    iget-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_11
    return-object p0
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lb/h/o/w;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_11
    return-void
.end method

###### Class b.h.o.w.a (b.h.o.w$a)
.class Lb/h/o/w$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/o/w;->a(Landroid/view/View;Lb/h/o/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/h/o/x;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lb/h/o/w;Lb/h/o/x;Landroid/view/View;)V
    .registers 4

    iput-object p2, p0, Lb/h/o/w$a;->a:Lb/h/o/x;

    iput-object p3, p0, Lb/h/o/w$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lb/h/o/w$a;->a:Lb/h/o/x;

    iget-object v0, p0, Lb/h/o/w$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/h/o/x;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lb/h/o/w$a;->a:Lb/h/o/x;

    iget-object v0, p0, Lb/h/o/w$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/h/o/x;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lb/h/o/w$a;->a:Lb/h/o/x;

    iget-object v0, p0, Lb/h/o/w$a;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/h/o/x;->c(Landroid/view/View;)V

    return-void
.end method

###### Class b.h.o.w.b (b.h.o.w$b)
.class Lb/h/o/w$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/o/w;->a(Lb/h/o/z;)Lb/h/o/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/h/o/z;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lb/h/o/w;Lb/h/o/z;Landroid/view/View;)V
    .registers 4

    iput-object p2, p0, Lb/h/o/w$b;->a:Lb/h/o/z;

    iput-object p3, p0, Lb/h/o/w$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget-object p1, p0, Lb/h/o/w$b;->a:Lb/h/o/z;

    iget-object v0, p0, Lb/h/o/w$b;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lb/h/o/z;->a(Landroid/view/View;)V

    return-void
.end method

###### Class b.h.o.w.c (b.h.o.w$c)
.class Lb/h/o/w$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/o/x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/o/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Lb/h/o/w;

.field b:Z


# direct methods
.method constructor <init>(Lb/h/o/w;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/o/w$c;->a:Lb/h/o/w;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 4

    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lb/h/o/x;

    if-eqz v1, :cond_d

    check-cast v0, Lb/h/o/x;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_13

    invoke-interface {v0, p1}, Lb/h/o/x;->a(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lb/h/o/w$c;->a:Lb/h/o/w;

    iget v0, v0, Lb/h/o/w;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_f

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lb/h/o/w$c;->a:Lb/h/o/w;

    iput v1, v0, Lb/h/o/w;->d:I

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_19

    iget-boolean v0, p0, Lb/h/o/w$c;->b:Z

    if-nez v0, :cond_39

    :cond_19
    iget-object v0, p0, Lb/h/o/w$c;->a:Lb/h/o/w;

    iget-object v1, v0, Lb/h/o/w;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_24

    iput-object v2, v0, Lb/h/o/w;->c:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_24
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lb/h/o/x;

    if-eqz v1, :cond_31

    move-object v2, v0

    check-cast v2, Lb/h/o/x;

    :cond_31
    if-eqz v2, :cond_36

    invoke-interface {v2, p1}, Lb/h/o/x;->b(Landroid/view/View;)V

    :cond_36
    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/h/o/w$c;->b:Z

    :cond_39
    return-void
.end method

.method public c(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/h/o/w$c;->b:Z

    iget-object v0, p0, Lb/h/o/w$c;->a:Lb/h/o/w;

    iget v0, v0, Lb/h/o/w;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_f

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_f
    iget-object v0, p0, Lb/h/o/w$c;->a:Lb/h/o/w;

    iget-object v2, v0, Lb/h/o/w;->b:Ljava/lang/Runnable;

    if-eqz v2, :cond_1a

    iput-object v1, v0, Lb/h/o/w;->b:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1a
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lb/h/o/x;

    if-eqz v2, :cond_27

    move-object v1, v0

    check-cast v1, Lb/h/o/x;

    :cond_27
    if-eqz v1, :cond_2c

    invoke-interface {v1, p1}, Lb/h/o/x;->c(Landroid/view/View;)V

    :cond_2c
    return-void
.end method
