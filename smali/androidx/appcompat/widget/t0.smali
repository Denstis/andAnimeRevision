###### Class androidx.appcompat.widget.t0 (androidx.appcompat.widget.t0)
.class Landroidx/appcompat/widget/t0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# static fields
.field private static k:Landroidx/appcompat/widget/t0;

.field private static l:Landroidx/appcompat/widget/t0;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Ljava/lang/CharSequence;

.field private final d:I

.field private final e:Ljava/lang/Runnable;

.field private final f:Ljava/lang/Runnable;

.field private g:I

.field private h:I

.field private i:Landroidx/appcompat/widget/u0;

.field private j:Z


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/widget/t0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/t0$a;-><init>(Landroidx/appcompat/widget/t0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/t0;->e:Ljava/lang/Runnable;

    new-instance v0, Landroidx/appcompat/widget/t0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/t0$b;-><init>(Landroidx/appcompat/widget/t0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/t0;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    iput-object p2, p0, Landroidx/appcompat/widget/t0;->c:Ljava/lang/CharSequence;

    iget-object p1, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-static {p1}, Lb/h/o/t;->a(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/t0;->d:I

    invoke-direct {p0}, Landroidx/appcompat/widget/t0;->c()V

    iget-object p1, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4

    sget-object v0, Landroidx/appcompat/widget/t0;->k:Landroidx/appcompat/widget/t0;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, v0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    if-ne v0, p0, :cond_c

    invoke-static {v1}, Landroidx/appcompat/widget/t0;->a(Landroidx/appcompat/widget/t0;)V

    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object p1, Landroidx/appcompat/widget/t0;->l:Landroidx/appcompat/widget/t0;

    if-eqz p1, :cond_1d

    iget-object v0, p1, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    if-ne v0, p0, :cond_1d

    invoke-virtual {p1}, Landroidx/appcompat/widget/t0;->a()V

    :cond_1d
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_2d

    :cond_28
    new-instance v0, Landroidx/appcompat/widget/t0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/t0;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_2d
    return-void
.end method

.method private static a(Landroidx/appcompat/widget/t0;)V
    .registers 2

    sget-object v0, Landroidx/appcompat/widget/t0;->k:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_7

    invoke-direct {v0}, Landroidx/appcompat/widget/t0;->b()V

    :cond_7
    sput-object p0, Landroidx/appcompat/widget/t0;->k:Landroidx/appcompat/widget/t0;

    sget-object p0, Landroidx/appcompat/widget/t0;->k:Landroidx/appcompat/widget/t0;

    if-eqz p0, :cond_10

    invoke-direct {p0}, Landroidx/appcompat/widget/t0;->d()V

    :cond_10
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Landroidx/appcompat/widget/t0;->g:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/t0;->d:I

    if-gt v1, v2, :cond_24

    iget v1, p0, Landroidx/appcompat/widget/t0;->h:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/t0;->d:I

    if-gt v1, v2, :cond_24

    const/4 p1, 0x0

    return p1

    :cond_24
    iput v0, p0, Landroidx/appcompat/widget/t0;->g:I

    iput p1, p0, Landroidx/appcompat/widget/t0;->h:I

    const/4 p1, 0x1

    return p1
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/t0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c()V
    .registers 2

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/appcompat/widget/t0;->g:I

    iput v0, p0, Landroidx/appcompat/widget/t0;->h:I

    return-void
.end method

.method private d()V
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/t0;->e:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method a()V
    .registers 4

    sget-object v0, Landroidx/appcompat/widget/t0;->l:Landroidx/appcompat/widget/t0;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_20

    sput-object v1, Landroidx/appcompat/widget/t0;->l:Landroidx/appcompat/widget/t0;

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/u0;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroidx/appcompat/widget/u0;->a()V

    iput-object v1, p0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/u0;

    invoke-direct {p0}, Landroidx/appcompat/widget/t0;->c()V

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_20

    :cond_19
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    sget-object v0, Landroidx/appcompat/widget/t0;->k:Landroidx/appcompat/widget/t0;

    if-ne v0, p0, :cond_27

    invoke-static {v1}, Landroidx/appcompat/widget/t0;->a(Landroidx/appcompat/widget/t0;)V

    :cond_27
    iget-object v0, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/t0;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Z)V
    .registers 9

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    invoke-static {v0}, Lb/h/o/s;->y(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/appcompat/widget/t0;->a(Landroidx/appcompat/widget/t0;)V

    sget-object v0, Landroidx/appcompat/widget/t0;->l:Landroidx/appcompat/widget/t0;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroidx/appcompat/widget/t0;->a()V

    :cond_14
    sput-object p0, Landroidx/appcompat/widget/t0;->l:Landroidx/appcompat/widget/t0;

    iput-boolean p1, p0, Landroidx/appcompat/widget/t0;->j:Z

    new-instance p1, Landroidx/appcompat/widget/u0;

    iget-object v0, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/widget/u0;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/u0;

    iget-object v1, p0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/u0;

    iget-object v2, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    iget v3, p0, Landroidx/appcompat/widget/t0;->g:I

    iget v4, p0, Landroidx/appcompat/widget/t0;->h:I

    iget-boolean v5, p0, Landroidx/appcompat/widget/t0;->j:Z

    iget-object v6, p0, Landroidx/appcompat/widget/t0;->c:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/u0;->a(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean p1, p0, Landroidx/appcompat/widget/t0;->j:Z

    if-eqz p1, :cond_40

    const-wide/16 v0, 0x9c4

    goto :goto_55

    :cond_40
    iget-object p1, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    invoke-static {p1}, Lb/h/o/s;->s(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_4d

    const-wide/16 v0, 0xbb8

    goto :goto_4f

    :cond_4d
    const-wide/16 v0, 0x3a98

    :goto_4f
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    :goto_55
    iget-object p1, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/t0;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/t0;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object p1, p0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/u0;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Landroidx/appcompat/widget/t0;->j:Z

    if-eqz p1, :cond_a

    return v0

    :cond_a
    iget-object p1, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_25

    return v0

    :cond_25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_38

    const/16 p2, 0xa

    if-eq p1, p2, :cond_31

    goto :goto_4d

    :cond_31
    invoke-direct {p0}, Landroidx/appcompat/widget/t0;->c()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/t0;->a()V

    goto :goto_4d

    :cond_38
    iget-object p1, p0, Landroidx/appcompat/widget/t0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Landroidx/appcompat/widget/t0;->i:Landroidx/appcompat/widget/u0;

    if-nez p1, :cond_4d

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/t0;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4d

    invoke-static {p0}, Landroidx/appcompat/widget/t0;->a(Landroidx/appcompat/widget/t0;)V

    :cond_4d
    :goto_4d
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/t0;->g:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/appcompat/widget/t0;->h:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/t0;->a(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/t0;->a()V

    return-void
.end method

###### Class androidx.appcompat.widget.t0.a (androidx.appcompat.widget.t0$a)
.class Landroidx/appcompat/widget/t0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/widget/t0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/t0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/t0$a;->b:Landroidx/appcompat/widget/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/t0$a;->b:Landroidx/appcompat/widget/t0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/t0;->a(Z)V

    return-void
.end method

###### Class androidx.appcompat.widget.t0.b (androidx.appcompat.widget.t0$b)
.class Landroidx/appcompat/widget/t0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/widget/t0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/t0;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/t0$b;->b:Landroidx/appcompat/widget/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/t0$b;->b:Landroidx/appcompat/widget/t0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/t0;->a()V

    return-void
.end method
