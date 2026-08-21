###### Class b.j.b.a (b.j.b.a)
.class public abstract Lb/j/b/a;
.super Lb/h/o/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/j/b/a$c;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Lb/j/b/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/j/b/b$a<",
            "Lb/h/o/b0/c;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Lb/j/b/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/j/b/b$b<",
            "Lb/e/h<",
            "Lb/h/o/b0/c;",
            ">;",
            "Lb/h/o/b0/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lb/j/b/a$c;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lb/j/b/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    new-instance v0, Lb/j/b/a$a;

    invoke-direct {v0}, Lb/j/b/a$a;-><init>()V

    sput-object v0, Lb/j/b/a;->NODE_ADAPTER:Lb/j/b/b$a;

    new-instance v0, Lb/j/b/a$b;

    invoke-direct {v0}, Lb/j/b/a$b;-><init>()V

    sput-object v0, Lb/j/b/a;->SPARSE_VALUES_ADAPTER:Lb/j/b/b$b;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Lb/h/o/a;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/j/b/a;->mTempScreenRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/j/b/a;->mTempParentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/j/b/a;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lb/j/b/a;->mTempGlobalRect:[I

    const/high16 v0, -0x80000000

    iput v0, p0, Lb/j/b/a;->mAccessibilityFocusedVirtualViewId:I

    iput v0, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    iput v0, p0, Lb/j/b/a;->mHoveredVirtualViewId:I

    if-eqz p1, :cond_45

    iput-object p1, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lb/j/b/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-static {p1}, Lb/h/o/s;->i(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_44

    invoke-static {p1, v0}, Lb/h/o/s;->f(Landroid/view/View;I)V

    :cond_44
    return-void

    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3

    iget v0, p0, Lb/j/b/a;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_14

    const/high16 v0, -0x80000000

    iput v0, p0, Lb/j/b/a;->mAccessibilityFocusedVirtualViewId:I

    iget-object v0, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lb/j/b/a;->sendEventForVirtualView(II)Z

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .registers 4

    iget v0, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_11

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lb/j/b/a;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    invoke-direct {p0, p1, p2}, Lb/j/b/a;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-direct {p0, p2}, Lb/j/b/a;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    invoke-virtual {p0, p1}, Lb/j/b/a;->obtainAccessibilityNodeInfo(I)Lb/h/o/b0/c;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lb/h/o/b0/c;->g()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lb/h/o/b0/c;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lb/h/o/b0/c;->r()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {v0}, Lb/h/o/b0/c;->q()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {v0}, Lb/h/o/b0/c;->m()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    invoke-virtual {v0}, Lb/h/o/b0/c;->k()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    invoke-virtual {p0, p1, p2}, Lb/j/b/a;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4a

    goto :goto_52

    :cond_4a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    :goto_52
    invoke-virtual {v0}, Lb/h/o/b0/c;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-static {p2, v0, p1}, Lb/h/o/b0/e;->a(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    iget-object p1, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 3

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object v0, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private createNodeForChild(I)Lb/h/o/b0/c;
    .registers 9

    invoke-static {}, Lb/h/o/b0/c;->w()Lb/h/o/b0/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/h/o/b0/c;->g(Z)V

    invoke-virtual {v0, v1}, Lb/h/o/b0/c;->h(Z)V

    const-string v2, "android.view.View"

    invoke-virtual {v0, v2}, Lb/h/o/b0/c;->a(Ljava/lang/CharSequence;)V

    sget-object v2, Lb/j/b/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lb/h/o/b0/c;->c(Landroid/graphics/Rect;)V

    sget-object v2, Lb/j/b/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lb/h/o/b0/c;->d(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v0, v2}, Lb/h/o/b0/c;->b(Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Lb/j/b/a;->onPopulateNodeForVirtualView(ILb/h/o/b0/c;)V

    invoke-virtual {v0}, Lb/h/o/b0/c;->g()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_37

    invoke-virtual {v0}, Lb/h/o/b0/c;->d()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2f

    goto :goto_37

    :cond_2f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    :goto_37
    iget-object v2, p0, Lb/j/b/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lb/h/o/b0/c;->a(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lb/j/b/a;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v3, Lb/j/b/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_149

    invoke-virtual {v0}, Lb/h/o/b0/c;->a()I

    move-result v2

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_141

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-nez v2, :cond_139

    iget-object v2, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/h/o/b0/c;->e(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Lb/h/o/b0/c;->c(Landroid/view/View;I)V

    iget v2, p0, Lb/j/b/a;->mAccessibilityFocusedVirtualViewId:I

    const/4 v4, 0x0

    if-ne v2, p1, :cond_71

    invoke-virtual {v0, v1}, Lb/h/o/b0/c;->a(Z)V

    invoke-virtual {v0, v3}, Lb/h/o/b0/c;->a(I)V

    goto :goto_79

    :cond_71
    invoke-virtual {v0, v4}, Lb/h/o/b0/c;->a(Z)V

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Lb/h/o/b0/c;->a(I)V

    :goto_79
    iget v2, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    if-ne v2, p1, :cond_7f

    const/4 p1, 0x1

    goto :goto_80

    :cond_7f
    const/4 p1, 0x0

    :goto_80
    if-eqz p1, :cond_87

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lb/h/o/b0/c;->a(I)V

    goto :goto_90

    :cond_87
    invoke-virtual {v0}, Lb/h/o/b0/c;->n()Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-virtual {v0, v1}, Lb/h/o/b0/c;->a(I)V

    :cond_90
    :goto_90
    invoke-virtual {v0, p1}, Lb/h/o/b0/c;->i(Z)V

    iget-object p1, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    iget-object v2, p0, Lb/j/b/a;->mTempGlobalRect:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lb/j/b/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lb/h/o/b0/c;->b(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lb/j/b/a;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v2, Lb/j/b/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lb/j/b/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lb/h/o/b0/c;->a(Landroid/graphics/Rect;)V

    iget p1, v0, Lb/h/o/b0/c;->b:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_de

    invoke-static {}, Lb/h/o/b0/c;->w()Lb/h/o/b0/c;

    move-result-object p1

    iget v3, v0, Lb/h/o/b0/c;->b:I

    :goto_b9
    if-eq v3, v2, :cond_db

    iget-object v5, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {p1, v5, v2}, Lb/h/o/b0/c;->b(Landroid/view/View;I)V

    sget-object v5, Lb/j/b/a;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Lb/h/o/b0/c;->c(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v3, p1}, Lb/j/b/a;->onPopulateNodeForVirtualView(ILb/h/o/b0/c;)V

    iget-object v3, p0, Lb/j/b/a;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Lb/h/o/b0/c;->a(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lb/j/b/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lb/j/b/a;->mTempParentRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v3, p1, Lb/h/o/b0/c;->b:I

    goto :goto_b9

    :cond_db
    invoke-virtual {p1}, Lb/h/o/b0/c;->u()V

    :cond_de
    iget-object p1, p0, Lb/j/b/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lb/j/b/a;->mTempGlobalRect:[I

    aget v2, v2, v4

    iget-object v3, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lb/j/b/a;->mTempGlobalRect:[I

    aget v3, v3, v1

    iget-object v5, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_f9
    iget-object p1, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    iget-object v2, p0, Lb/j/b/a;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_138

    iget-object p1, p0, Lb/j/b/a;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lb/j/b/a;->mTempGlobalRect:[I

    aget v2, v2, v4

    iget-object v3, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lb/j/b/a;->mTempGlobalRect:[I

    aget v3, v3, v1

    iget-object v4, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lb/j/b/a;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lb/j/b/a;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_138

    iget-object p1, p0, Lb/j/b/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lb/h/o/b0/c;->d(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lb/j/b/a;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lb/j/b/a;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_138

    invoke-virtual {v0, v1}, Lb/h/o/b0/c;->n(Z)V

    :cond_138
    return-object v0

    :cond_139
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_141
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_149
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_152

    :goto_151
    throw p1

    :goto_152
    goto :goto_151
.end method

.method private createNodeForHost()Lb/h/o/b0/c;
    .registers 7

    iget-object v0, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-static {v0}, Lb/h/o/b0/c;->d(Landroid/view/View;)Lb/h/o/b0/c;

    move-result-object v0

    iget-object v1, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-static {v1, v0}, Lb/h/o/s;->a(Landroid/view/View;Lb/h/o/b0/c;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1}, Lb/j/b/a;->getVisibleVirtualViews(Ljava/util/List;)V

    invoke-virtual {v0}, Lb/h/o/b0/c;->b()I

    move-result v2

    if-lez v2, :cond_28

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_20

    goto :goto_28

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Views cannot have both real and virtual children"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    :goto_28
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_2d
    if-ge v2, v3, :cond_41

    iget-object v4, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lb/h/o/b0/c;->a(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_41
    return-object v0
.end method

.method private getAllNodes()Lb/e/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/e/h<",
            "Lb/h/o/b0/c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lb/j/b/a;->getVisibleVirtualViews(Ljava/util/List;)V

    new-instance v1, Lb/e/h;

    invoke-direct {v1}, Lb/e/h;-><init>()V

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    invoke-direct {p0, v2}, Lb/j/b/a;->createNodeForChild(I)Lb/h/o/b0/c;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lb/e/h;->c(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1e
    return-object v1
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p0, p1}, Lb/j/b/a;->obtainAccessibilityNodeInfo(I)Lb/h/o/b0/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/h/o/b0/c;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2e

    const/16 v1, 0x21

    if-eq p1, v1, :cond_2a

    const/16 v1, 0x42

    const/4 v3, -0x1

    if-eq p1, v1, :cond_26

    const/16 p0, 0x82

    if-ne p1, p0, :cond_1e

    invoke-virtual {p2, v2, v3, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    invoke-virtual {p2, v3, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    :cond_2a
    invoke-virtual {p2, v2, p0, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    :cond_2e
    invoke-virtual {p2, v0, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_31
    return-object p2
.end method

.method private isVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_32

    :cond_a
    iget-object p1, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_13

    return v0

    :cond_13
    iget-object p1, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_2f

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_2e

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_15

    :cond_2e
    return v0

    :cond_2f
    if-eqz p1, :cond_32

    const/4 v0, 0x1

    :cond_32
    :goto_32
    return v0
.end method

.method private static keyToDirection(I)I
    .registers 2

    const/16 v0, 0x13

    if-eq p0, v0, :cond_15

    const/16 v0, 0x15

    if-eq p0, v0, :cond_12

    const/16 v0, 0x16

    if-eq p0, v0, :cond_f

    const/16 p0, 0x82

    return p0

    :cond_f
    const/16 p0, 0x42

    return p0

    :cond_12
    const/16 p0, 0x11

    return p0

    :cond_15
    const/16 p0, 0x21

    return p0
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .registers 12

    invoke-direct {p0}, Lb/j/b/a;->getAllNodes()Lb/e/h;

    move-result-object v7

    iget v0, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v8, -0x80000000

    if-ne v0, v8, :cond_c

    const/4 v0, 0x0

    goto :goto_12

    :cond_c
    invoke-virtual {v7, v0}, Lb/e/h;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/h/o/b0/c;

    :goto_12
    move-object v3, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_55

    const/4 v1, 0x2

    if-eq p1, v1, :cond_55

    const/16 v0, 0x11

    if-eq p1, v0, :cond_32

    const/16 v0, 0x21

    if-eq p1, v0, :cond_32

    const/16 v0, 0x42

    if-eq p1, v0, :cond_32

    const/16 v0, 0x82

    if-ne p1, v0, :cond_2a

    goto :goto_32

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    :goto_32
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget v0, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    if-eq v0, v8, :cond_3f

    invoke-direct {p0, v0, v4}, Lb/j/b/a;->getBoundsInParent(ILandroid/graphics/Rect;)V

    goto :goto_4a

    :cond_3f
    if-eqz p2, :cond_45

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4a

    :cond_45
    iget-object p2, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-static {p2, p1, v4}, Lb/j/b/a;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    :goto_4a
    sget-object v1, Lb/j/b/a;->SPARSE_VALUES_ADAPTER:Lb/j/b/b$b;

    sget-object v2, Lb/j/b/a;->NODE_ADAPTER:Lb/j/b/b$a;

    move-object v0, v7

    move v5, p1

    invoke-static/range {v0 .. v5}, Lb/j/b/b;->a(Ljava/lang/Object;Lb/j/b/b$b;Lb/j/b/b$a;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6c

    :cond_55
    iget-object p2, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-static {p2}, Lb/h/o/s;->k(Landroid/view/View;)I

    move-result p2

    if-ne p2, v0, :cond_5f

    const/4 v5, 0x1

    goto :goto_61

    :cond_5f
    const/4 p2, 0x0

    const/4 v5, 0x0

    :goto_61
    sget-object v1, Lb/j/b/a;->SPARSE_VALUES_ADAPTER:Lb/j/b/b$b;

    sget-object v2, Lb/j/b/a;->NODE_ADAPTER:Lb/j/b/b$a;

    const/4 v6, 0x0

    move-object v0, v7

    move v4, p1

    invoke-static/range {v0 .. v6}, Lb/j/b/b;->a(Ljava/lang/Object;Lb/j/b/b$b;Lb/j/b/b$a;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object p1

    :goto_6c
    check-cast p1, Lb/h/o/b0/c;

    if-nez p1, :cond_71

    goto :goto_79

    :cond_71
    invoke-virtual {v7, p1}, Lb/e/h;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v7, p1}, Lb/e/h;->d(I)I

    move-result v8

    :goto_79
    invoke-virtual {p0, v8}, Lb/j/b/a;->requestKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_22

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1d

    const/16 v0, 0x40

    if-eq p2, v0, :cond_18

    const/16 v0, 0x80

    if-eq p2, v0, :cond_13

    invoke-virtual {p0, p1, p2, p3}, Lb/j/b/a;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_13
    invoke-direct {p0, p1}, Lb/j/b/a;->clearAccessibilityFocus(I)Z

    move-result p1

    return p1

    :cond_18
    invoke-direct {p0, p1}, Lb/j/b/a;->requestAccessibilityFocus(I)Z

    move-result p1

    return p1

    :cond_1d
    invoke-virtual {p0, p1}, Lb/j/b/a;->clearKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1

    :cond_22
    invoke-virtual {p0, p1}, Lb/j/b/a;->requestKeyboardFocusForVirtualView(I)Z

    move-result p1

    return p1
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p2}, Lb/h/o/s;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 4

    iget-object v0, p0, Lb/j/b/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lb/j/b/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_2c

    :cond_12
    iget v0, p0, Lb/j/b/a;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_2c

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1d

    invoke-direct {p0, v0}, Lb/j/b/a;->clearAccessibilityFocus(I)Z

    :cond_1d
    iput p1, p0, Lb/j/b/a;->mAccessibilityFocusedVirtualViewId:I

    iget-object v0, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Lb/j/b/a;->sendEventForVirtualView(II)Z

    const/4 p1, 0x1

    return p1

    :cond_2c
    :goto_2c
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4

    iget v0, p0, Lb/j/b/a;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lb/j/b/a;->mHoveredVirtualViewId:I

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lb/j/b/a;->sendEventForVirtualView(II)Z

    const/16 p1, 0x100

    invoke-virtual {p0, v0, p1}, Lb/j/b/a;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .registers 4

    iget v0, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_6

    return v1

    :cond_6
    const/high16 v0, -0x80000000

    iput v0, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, p1, v1}, Lb/j/b/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lb/j/b/a;->sendEventForVirtualView(II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    iget-object v0, p0, Lb/j/b/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lb/j/b/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_40

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    if-eq v0, v2, :cond_2e

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2e

    const/16 p1, 0xa

    if-eq v0, p1, :cond_25

    return v1

    :cond_25
    iget p1, p0, Lb/j/b/a;->mHoveredVirtualViewId:I

    if-eq p1, v4, :cond_2d

    invoke-direct {p0, v4}, Lb/j/b/a;->updateHoveredVirtualView(I)V

    return v3

    :cond_2d
    return v1

    :cond_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lb/j/b/a;->getVirtualViewAt(FF)I

    move-result p1

    invoke-direct {p0, p1}, Lb/j/b/a;->updateHoveredVirtualView(I)V

    if-eq p1, v4, :cond_40

    const/4 v1, 0x1

    :cond_40
    :goto_40
    return v1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x3d

    const/4 v4, 0x0

    if-eq v0, v3, :cond_48

    const/16 v3, 0x42

    if-eq v0, v3, :cond_37

    packed-switch v0, :pswitch_data_60

    goto :goto_5e

    :pswitch_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-static {v0}, Lb/j/b/a;->keyToDirection(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    add-int/2addr p1, v2

    const/4 v3, 0x0

    :goto_29
    if-ge v1, p1, :cond_35

    invoke-direct {p0, v0, v4}, Lb/j/b/a;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_35

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x1

    goto :goto_29

    :cond_35
    move v1, v3

    goto :goto_5e

    :cond_37
    :pswitch_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_5e

    invoke-direct {p0}, Lb/j/b/a;->clickKeyboardFocusedVirtualView()Z

    const/4 v1, 0x1

    goto :goto_5e

    :cond_48
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 p1, 0x2

    invoke-direct {p0, p1, v4}, Lb/j/b/a;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_5e

    :cond_54
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5e

    invoke-direct {p0, v2, v4}, Lb/j/b/a;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    :cond_5e
    :goto_5e
    return v1

    nop

    :pswitch_data_60
    .packed-switch 0x13
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_37
    .end packed-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .registers 2

    iget v0, p0, Lb/j/b/a;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Lb/h/o/b0/d;
    .registers 2

    iget-object p1, p0, Lb/j/b/a;->mNodeProvider:Lb/j/b/a$c;

    if-nez p1, :cond_b

    new-instance p1, Lb/j/b/a$c;

    invoke-direct {p1, p0}, Lb/j/b/a$c;-><init>(Lb/j/b/a;)V

    iput-object p1, p0, Lb/j/b/a;->mNodeProvider:Lb/j/b/a$c;

    :cond_b
    iget-object p1, p0, Lb/j/b/a;->mNodeProvider:Lb/j/b/a$c;

    return-object p1
.end method

.method public getFocusedVirtualView()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lb/j/b/a;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .registers 2

    iget v0, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lb/j/b/a;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/j/b/a;->invalidateVirtualView(II)V

    return-void
.end method

.method public final invalidateVirtualView(II)V
    .registers 5

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lb/j/b/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_22

    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Lb/j/b/a;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-static {p1, p2}, Lb/h/o/b0/a;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    iget-object p2, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-static {v0, p2, p1}, Lb/h/o/v;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_22
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Lb/h/o/b0/c;
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lb/j/b/a;->createNodeForHost()Lb/h/o/b0/c;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-direct {p0, p1}, Lb/j/b/a;->createNodeForChild(I)Lb/h/o/b0/c;

    move-result-object p1

    return-object p1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6

    iget v0, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    invoke-virtual {p0, v0}, Lb/j/b/a;->clearKeyboardFocusForVirtualView(I)Z

    :cond_9
    if-eqz p1, :cond_e

    invoke-direct {p0, p2, p3}, Lb/j/b/a;->moveFocus(ILandroid/graphics/Rect;)Z

    :cond_e
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lb/h/o/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, p2}, Lb/j/b/a;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/h/o/b0/c;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lb/h/o/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lb/h/o/b0/c;)V

    invoke-virtual {p0, p2}, Lb/j/b/a;->onPopulateNodeForHost(Lb/h/o/b0/c;)V

    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    return-void
.end method

.method protected onPopulateNodeForHost(Lb/h/o/b0/c;)V
    .registers 2

    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILb/h/o/b0/c;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .registers 3

    return-void
.end method

.method performAction(IILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lb/j/b/a;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_8
    invoke-direct {p0, p2, p3}, Lb/j/b/a;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .registers 4

    iget-object v0, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    iget v0, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_17

    return v1

    :cond_17
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1e

    invoke-virtual {p0, v0}, Lb/j/b/a;->clearKeyboardFocusForVirtualView(I)Z

    :cond_1e
    iput p1, p0, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lb/j/b/a;->onVirtualViewKeyboardFocusChanged(IZ)V

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lb/j/b/a;->sendEventForVirtualView(II)Z

    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .registers 5

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_22

    iget-object v1, p0, Lb/j/b/a;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_22

    :cond_e
    iget-object v1, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_17

    return v0

    :cond_17
    invoke-direct {p0, p1, p2}, Lb/j/b/a;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Lb/j/b/a;->mHost:Landroid/view/View;

    invoke-static {v1, p2, p1}, Lb/h/o/v;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_22
    :goto_22
    return v0
.end method

###### Class b.j.b.a.C0111a (b.j.b.a$a)
.class final Lb/j/b/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/j/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/j/b/b$a<",
        "Lb/h/o/b0/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/h/o/b0/c;Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p1, p2}, Lb/h/o/b0/c;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3

    check-cast p1, Lb/h/o/b0/c;

    invoke-virtual {p0, p1, p2}, Lb/j/b/a$a;->a(Lb/h/o/b0/c;Landroid/graphics/Rect;)V

    return-void
.end method

###### Class b.j.b.a.b (b.j.b.a$b)
.class final Lb/j/b/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/j/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/j/b/b$b<",
        "Lb/e/h<",
        "Lb/h/o/b0/c;",
        ">;",
        "Lb/h/o/b0/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/e/h;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/h<",
            "Lb/h/o/b0/c;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lb/e/h;->b()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/e/h;

    invoke-virtual {p0, p1}, Lb/j/b/a$b;->a(Lb/e/h;)I

    move-result p1

    return p1
.end method

.method public a(Lb/e/h;I)Lb/h/o/b0/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e/h<",
            "Lb/h/o/b0/c;",
            ">;I)",
            "Lb/h/o/b0/c;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lb/e/h;->f(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/h/o/b0/c;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lb/e/h;

    invoke-virtual {p0, p1, p2}, Lb/j/b/a$b;->a(Lb/e/h;I)Lb/h/o/b0/c;

    move-result-object p1

    return-object p1
.end method

###### Class b.j.b.a.c (b.j.b.a$c)
.class Lb/j/b/a$c;
.super Lb/h/o/b0/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lb/j/b/a;


# direct methods
.method constructor <init>(Lb/j/b/a;)V
    .registers 2

    iput-object p1, p0, Lb/j/b/a$c;->b:Lb/j/b/a;

    invoke-direct {p0}, Lb/h/o/b0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lb/h/o/b0/c;
    .registers 3

    iget-object v0, p0, Lb/j/b/a$c;->b:Lb/j/b/a;

    invoke-virtual {v0, p1}, Lb/j/b/a;->obtainAccessibilityNodeInfo(I)Lb/h/o/b0/c;

    move-result-object p1

    invoke-static {p1}, Lb/h/o/b0/c;->a(Lb/h/o/b0/c;)Lb/h/o/b0/c;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/os/Bundle;)Z
    .registers 5

    iget-object v0, p0, Lb/j/b/a$c;->b:Lb/j/b/a;

    invoke-virtual {v0, p1, p2, p3}, Lb/j/b/a;->performAction(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public b(I)Lb/h/o/b0/c;
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lb/j/b/a$c;->b:Lb/j/b/a;

    iget p1, p1, Lb/j/b/a;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_c

    :cond_8
    iget-object p1, p0, Lb/j/b/a$c;->b:Lb/j/b/a;

    iget p1, p1, Lb/j/b/a;->mKeyboardFocusedVirtualViewId:I

    :goto_c
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_12

    const/4 p1, 0x0

    return-object p1

    :cond_12
    invoke-virtual {p0, p1}, Lb/j/b/a$c;->a(I)Lb/h/o/b0/c;

    move-result-object p1

    return-object p1
.end method
