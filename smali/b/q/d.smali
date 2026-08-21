###### Class b.q.d (b.q.d)
.class public Lb/q/d;
.super Lb/q/j0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/q/d$b;
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lb/q/j0;-><init>()V

    invoke-virtual {p0, p1}, Lb/q/j0;->a(I)V

    return-void
.end method

.method private static a(Lb/q/t;F)F
    .registers 3

    if-eqz p0, :cond_12

    iget-object p0, p0, Lb/q/t;->a:Ljava/util/Map;

    const-string v0, "android:fade:transitionAlpha"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_12
    return p1
.end method

.method private a(Landroid/view/View;FF)Landroid/animation/Animator;
    .registers 6

    cmpl-float v0, p2, p3

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    :cond_6
    invoke-static {p1, p2}, Lb/q/e0;->a(Landroid/view/View;F)V

    sget-object p2, Lb/q/e0;->d:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Lb/q/d$b;

    invoke-direct {p3, p1}, Lb/q/d$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, Lb/q/d$a;

    invoke-direct {p3, p0, p1}, Lb/q/d$a;-><init>(Lb/q/d;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lb/q/n;->addListener(Lb/q/n$g;)Lb/q/n;

    return-object p2
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
    .registers 6

    const/4 p1, 0x0

    invoke-static {p3, p1}, Lb/q/d;->a(Lb/q/t;F)F

    move-result p3

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p4

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    move p1, p3

    :goto_d
    invoke-direct {p0, p2, p1, p4}, Lb/q/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
    .registers 5

    invoke-static {p2}, Lb/q/e0;->e(Landroid/view/View;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p3, p1}, Lb/q/d;->a(Lb/q/t;F)F

    move-result p1

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3}, Lb/q/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method public captureStartValues(Lb/q/t;)V
    .registers 4

    invoke-super {p0, p1}, Lb/q/j0;->captureStartValues(Lb/q/t;)V

    iget-object v0, p1, Lb/q/t;->a:Ljava/util/Map;

    iget-object p1, p1, Lb/q/t;->b:Landroid/view/View;

    invoke-static {p1}, Lb/q/e0;->c(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:fade:transitionAlpha"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class b.q.d.a (b.q.d$a)
.class Lb/q/d$a;
.super Lb/q/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/d;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Lb/q/d;Landroid/view/View;)V
    .registers 3

    iput-object p2, p0, Lb/q/d$a;->a:Landroid/view/View;

    invoke-direct {p0}, Lb/q/o;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/q/n;)V
    .registers 4

    iget-object v0, p0, Lb/q/d$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lb/q/e0;->a(Landroid/view/View;F)V

    iget-object v0, p0, Lb/q/d$a;->a:Landroid/view/View;

    invoke-static {v0}, Lb/q/e0;->a(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Lb/q/n;->removeListener(Lb/q/n$g;)Lb/q/n;

    return-void
.end method

###### Class b.q.d.b (b.q.d$b)
.class Lb/q/d$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/q/d$b;->b:Z

    iput-object p1, p0, Lb/q/d$b;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lb/q/d$b;->a:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lb/q/e0;->a(Landroid/view/View;F)V

    iget-boolean p1, p0, Lb/q/d$b;->b:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lb/q/d$b;->a:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_12
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lb/q/d$b;->a:Landroid/view/View;

    invoke-static {p1}, Lb/h/o/s;->w(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lb/q/d$b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/q/d$b;->b:Z

    iget-object p1, p0, Lb/q/d$b;->a:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1a
    return-void
.end method
