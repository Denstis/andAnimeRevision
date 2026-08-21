###### Class androidx.appcompat.widget.SwitchCompat (androidx.appcompat.widget.SwitchCompat)
.class public Landroidx/appcompat/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source ""


# static fields
.field private static final N:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/appcompat/widget/SwitchCompat;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final O:[I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private final G:Landroid/text/TextPaint;

.field private H:Landroid/content/res/ColorStateList;

.field private I:Landroid/text/Layout;

.field private J:Landroid/text/Layout;

.field private K:Landroid/text/method/TransformationMethod;

.field L:Landroid/animation/ObjectAnimator;

.field private final M:Landroid/graphics/Rect;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Landroid/graphics/PorterDuff$Mode;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/lang/CharSequence;

.field private q:Ljava/lang/CharSequence;

.field private r:Z

.field private s:I

.field private t:I

.field private u:F

.field private v:F

.field private w:Landroid/view/VelocityTracker;

.field private x:I

.field y:F

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroidx/appcompat/widget/SwitchCompat$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "thumbPos"

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/SwitchCompat$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/SwitchCompat;->O:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lb/a/a;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/graphics/Rect;

    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v4, Landroid/text/TextPaint;->density:F

    sget-object v2, Lb/a/j;->SwitchCompat:[I

    invoke-static {p1, p2, v2, p3, v1}, Landroidx/appcompat/widget/q0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/q0;

    move-result-object p2

    sget p3, Lb/a/j;->SwitchCompat_android_thumb:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/q0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_4d

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_4d
    sget p3, Lb/a/j;->SwitchCompat_track:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/q0;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_5c

    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5c
    sget p3, Lb/a/j;->SwitchCompat_android_textOn:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/q0;->e(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    sget p3, Lb/a/j;->SwitchCompat_android_textOff:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/q0;->e(I)Ljava/lang/CharSequence;

    move-result-object p3

    iput-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    sget p3, Lb/a/j;->SwitchCompat_showText:I

    invoke-virtual {p2, p3, v3}, Landroidx/appcompat/widget/q0;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z

    sget p3, Lb/a/j;->SwitchCompat_thumbTextPadding:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/q0;->c(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I

    sget p3, Lb/a/j;->SwitchCompat_switchMinWidth:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/q0;->c(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I

    sget p3, Lb/a/j;->SwitchCompat_switchPadding:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/q0;->c(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I

    sget p3, Lb/a/j;->SwitchCompat_splitTrack:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/q0;->a(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/widget/SwitchCompat;->o:Z

    sget p3, Lb/a/j;->SwitchCompat_thumbTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_a0

    iput-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;

    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    :cond_a0
    sget p3, Lb/a/j;->SwitchCompat_thumbTintMode:I

    const/4 v2, -0x1

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/q0;->d(II)I

    move-result p3

    invoke-static {p3, v0}, Landroidx/appcompat/widget/a0;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v4, p3, :cond_b3

    iput-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    :cond_b3
    iget-boolean p3, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    if-nez p3, :cond_bb

    iget-boolean p3, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    if-eqz p3, :cond_be

    :cond_bb
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()V

    :cond_be
    sget p3, Lb/a/j;->SwitchCompat_trackTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    if-eqz p3, :cond_ca

    iput-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;

    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    :cond_ca
    sget p3, Lb/a/j;->SwitchCompat_trackTintMode:I

    invoke-virtual {p2, p3, v2}, Landroidx/appcompat/widget/q0;->d(II)I

    move-result p3

    invoke-static {p3, v0}, Landroidx/appcompat/widget/a0;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p3, :cond_dc

    iput-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v3, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    :cond_dc
    iget-boolean p3, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    if-nez p3, :cond_e4

    iget-boolean p3, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    if-eqz p3, :cond_e7

    :cond_e4
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->b()V

    :cond_e7
    sget p3, Lb/a/j;->SwitchCompat_switchTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/q0;->g(II)I

    move-result p3

    if-eqz p3, :cond_f2

    invoke-virtual {p0, p1, p3}, Landroidx/appcompat/widget/SwitchCompat;->a(Landroid/content/Context;I)V

    :cond_f2
    invoke-virtual {p2}, Landroidx/appcompat/widget/q0;->a()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->x:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method private static a(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move p0, p1

    goto :goto_b

    :cond_6
    cmpl-float p1, p0, p2

    if-lez p1, :cond_b

    move p0, p2

    :cond_b
    :goto_b
    return p0
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 10

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->K:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_8
    move-object v1, p1

    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    if-eqz v1, :cond_1b

    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move v3, v0

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1d
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p1
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    if-eqz v0, :cond_3b

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3b
    return-void
.end method

.method private a(II)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 p1, 0x0

    goto :goto_13

    :cond_b
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_13

    :cond_e
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_13

    :cond_11
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_13
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->a(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .registers 3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private a(Z)V
    .registers 6

    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    :goto_6
    sget-object v0, Landroidx/appcompat/widget/SwitchCompat;->N:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_26

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    :cond_26
    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private a(FF)Z
    .registers 10

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I

    sub-int/2addr v2, v3

    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    add-int/2addr v0, v4

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v5

    add-int/2addr v0, v3

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    add-int/2addr v5, v3

    int-to-float v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3e

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3e

    int-to-float p1, v2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3e

    int-to-float p1, v5

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    return v1
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    if-eqz v0, :cond_3b

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1f
    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3b
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .registers 8

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->x:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_45

    invoke-static {p0}, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3d

    cmpg-float v1, v1, v5

    if-gez v1, :cond_42

    goto :goto_43

    :cond_3d
    cmpl-float v1, v1, v5

    if-lez v1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    :goto_43
    move v1, v2

    goto :goto_4b

    :cond_45
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v1

    goto :goto_4b

    :cond_4a
    move v1, v3

    :goto_4b
    if-eq v1, v3, :cond_50

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    :cond_50
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method private getTargetCheckedState()Z
    .registers 3

    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private getThumbOffset()I
    .registers 3

    invoke-static {p0}, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    sub-float/2addr v0, v1

    goto :goto_e

    :cond_c
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    :goto_e
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getThumbScrollRange()I
    .registers 5

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-static {v0}, Landroidx/appcompat/widget/a0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_14

    :cond_12
    sget-object v0, Landroidx/appcompat/widget/a0;->a:Landroid/graphics/Rect;

    :goto_14
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    return v2

    :cond_26
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .registers 6

    sget-object v0, Lb/a/j;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/q0;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/q0;

    move-result-object p1

    sget p2, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_f

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_13
    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->H:Landroid/content/res/ColorStateList;

    sget p2, Lb/a/j;->TextAppearance_android_textSize:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/q0;->c(II)I

    move-result p2

    if-eqz p2, :cond_31

    int-to-float p2, p2

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    :cond_31
    sget p2, Lb/a/j;->TextAppearance_android_typeface:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/q0;->d(II)I

    move-result p2

    sget v2, Lb/a/j;->TextAppearance_android_textStyle:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/q0;->d(II)I

    move-result v1

    invoke-direct {p0, p2, v1}, Landroidx/appcompat/widget/SwitchCompat;->a(II)V

    sget p2, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/q0;->a(IZ)Z

    move-result p2

    if-eqz p2, :cond_53

    new-instance p2, Lb/a/m/a;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lb/a/m/a;-><init>(Landroid/content/Context;)V

    goto :goto_54

    :cond_53
    const/4 p2, 0x0

    :goto_54
    iput-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->K:Landroid/text/method/TransformationMethod;

    invoke-virtual {p1}, Landroidx/appcompat/widget/q0;->a()V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;I)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_33

    if-nez p1, :cond_b

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_f
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, p2

    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_24

    const/4 v1, 0x1

    :cond_24
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2f

    const/high16 v0, -0x41800000    # -0.25f

    :cond_2f
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_40

    :cond_33
    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    :goto_40
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/graphics/Rect;

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_18

    invoke-static {v6}, Landroidx/appcompat/widget/a0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_1a

    :cond_18
    sget-object v6, Landroidx/appcompat/widget/a0;->a:Landroid/graphics/Rect;

    :goto_1a
    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4f

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    if-eqz v6, :cond_48

    iget v8, v6, Landroid/graphics/Rect;->left:I

    if-le v8, v7, :cond_2c

    sub-int/2addr v8, v7

    add-int/2addr v1, v8

    :cond_2c
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_35

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    goto :goto_36

    :cond_35
    move v7, v2

    :goto_36
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_3e

    sub-int/2addr v8, v9

    sub-int/2addr v3, v8

    :cond_3e
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v8, :cond_49

    sub-int/2addr v6, v8

    sub-int v6, v4, v6

    goto :goto_4a

    :cond_48
    move v7, v2

    :cond_49
    move v6, v4

    :goto_4a
    iget-object v8, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4f
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6e

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-static {v0, v1, v2, v5, v4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_6e
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_10

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_17
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 5

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_17
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_26
    if-eqz v2, :cond_2b

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_2b
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .registers 3

    invoke-static {p0}, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I

    add-int/2addr v0, v1

    :cond_1f
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 3

    invoke-static {p0}, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget v1, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I

    add-int/2addr v0, v1

    :cond_1f
    return v0
.end method

.method public getShowText()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z

    return v0
.end method

.method public getSplitTrack()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->o:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I

    return v0
.end method

.method public getSwitchPadding()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->L:Landroid/animation/ObjectAnimator;

    :cond_23
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 3

    add-int/lit8 p1, p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroidx/appcompat/widget/SwitchCompat;->O:[I

    invoke-static {p1, v0}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_10

    :cond_d
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_10
    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    iget v3, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4c

    iget-boolean v5, p0, Landroidx/appcompat/widget/SwitchCompat;->o:Z

    if-eqz v5, :cond_49

    if-eqz v4, :cond_49

    invoke-static {v4}, Landroidx/appcompat/widget/a0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_4c

    :cond_49
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4c
    :goto_4c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_55

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_55
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;

    goto :goto_60

    :cond_5e
    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;

    :goto_60
    if-eqz v1, :cond_a3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->H:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_74

    iget-object v7, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    :cond_74
    iget-object v6, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_84

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    goto :goto_88

    :cond_84
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v5

    :goto_88
    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v5

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_a3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Switch"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    goto :goto_13

    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3a

    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_2e

    iget-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_12

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_15

    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_15
    iget-object p3, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroidx/appcompat/widget/a0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p3

    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_2f

    :cond_2e
    const/4 p4, 0x0

    :goto_2f
    invoke-static {p0}, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p4

    iget p3, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    add-int/2addr p3, p1

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    goto :goto_51

    :cond_40
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p1, p2

    iget p1, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    sub-int p1, p3, p1

    add-int/2addr p1, p4

    add-int/2addr p1, p2

    :goto_51
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    const/16 p4, 0x10

    if-eq p2, p4, :cond_76

    const/16 p4, 0x50

    if-eq p2, p4, :cond_67

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p2

    iget p4, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I

    :goto_65
    add-int/2addr p4, p2

    goto :goto_8c

    :cond_67
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p4

    sub-int p4, p2, p4

    iget p2, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I

    sub-int p2, p4, p2

    goto :goto_8c

    :cond_76
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p2, p4

    div-int/lit8 p2, p2, 0x2

    iget p4, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I

    div-int/lit8 p5, p4, 0x2

    sub-int/2addr p2, p5

    goto :goto_65

    :goto_8c
    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->C:I

    iput p2, p0, Landroidx/appcompat/widget/SwitchCompat;->D:I

    iput p4, p0, Landroidx/appcompat/widget/SwitchCompat;->F:I

    iput p3, p0, Landroidx/appcompat/widget/SwitchCompat;->E:I

    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;

    :cond_10
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;

    :cond_1c
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->M:Landroid/graphics/Rect;

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_3b

    :cond_39
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3b
    iget-boolean v4, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z

    if-eqz v4, :cond_55

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->I:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/widget/SwitchCompat;->J:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    goto :goto_56

    :cond_55
    const/4 v4, 0x0

    :goto_56
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6a

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_6d

    :cond_6a
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_6d
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_85

    invoke-static {v4}, Landroidx/appcompat/widget/a0;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v4

    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_85
    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->B:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->z:I

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->A:I

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_a9

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    :cond_a9
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    goto :goto_e

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    :goto_e
    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_8d

    if-eq v0, v2, :cond_16

    const/4 v3, 0x3

    if-eq v0, v3, :cond_8d

    goto/16 :goto_bb

    :cond_16
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    if-eqz v0, :cond_bb

    if-eq v0, v1, :cond_59

    if-eq v0, v2, :cond_20

    goto/16 :goto_bb

    :cond_20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v0

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F

    sub-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_34

    int-to-float v0, v0

    div-float/2addr v2, v0

    goto :goto_3f

    :cond_34
    cmpl-float v0, v2, v4

    if-lez v0, :cond_3b

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_3f

    :cond_3b
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    :goto_3f
    invoke-static {p0}, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_46

    neg-float v2, v2

    :cond_46
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    add-float/2addr v0, v2

    invoke-static {v0, v4, v3}, Landroidx/appcompat/widget/SwitchCompat;->a(FFF)F

    move-result v0

    iget v2, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_58

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    :cond_58
    return v1

    :cond_59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_7f

    iget v4, p0, Landroidx/appcompat/widget/SwitchCompat;->v:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/SwitchCompat;->t:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_bb

    :cond_7f
    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F

    iput v3, p0, Landroidx/appcompat/widget/SwitchCompat;->v:F

    return v1

    :cond_8d
    iget v0, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    if-ne v0, v2, :cond_98

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->b(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_98
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->w:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_bb

    :cond_a1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-direct {p0, v0, v2}, Landroidx/appcompat/widget/SwitchCompat;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_bb

    iput v1, p0, Landroidx/appcompat/widget/SwitchCompat;->s:I

    iput v0, p0, Landroidx/appcompat/widget/SwitchCompat;->u:F

    iput v2, p0, Landroidx/appcompat/widget/SwitchCompat;->v:F

    :cond_bb
    :goto_bb
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {p0}, Lb/h/o/s;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->a(Z)V

    goto :goto_23

    :cond_17
    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->c()V

    if-eqz p1, :cond_1f

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    :goto_23
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setShowText(Z)V
    .registers 3

    iget-boolean v0, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->r:Z

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setSplitTrack(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->o:Z

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->m:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->n:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_14
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_29

    if-eqz p1, :cond_29

    :cond_1e
    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->G:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_29
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->q:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->p:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_f
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method setThumbPosition(F)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->y:F

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    return-void
.end method

.method public setThumbResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/k/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .registers 2

    iput p1, p0, Landroidx/appcompat/widget/SwitchCompat;->l:I

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->c:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->e:Z

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->d:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->f:Z

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->a()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_8
    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_f
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/k/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->h:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->j:Z

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->b()V

    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/SwitchCompat;->i:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SwitchCompat;->k:Z

    invoke-direct {p0}, Landroidx/appcompat/widget/SwitchCompat;->b()V

    return-void
.end method

.method public toggle()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Landroidx/appcompat/widget/SwitchCompat;->g:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

###### Class androidx.appcompat.widget.SwitchCompat.a (androidx.appcompat.widget.SwitchCompat$a)
.class final Landroidx/appcompat/widget/SwitchCompat$a;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SwitchCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/widget/SwitchCompat;)Ljava/lang/Float;
    .registers 2

    iget p1, p1, Landroidx/appcompat/widget/SwitchCompat;->y:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroidx/appcompat/widget/SwitchCompat;Ljava/lang/Float;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat$a;->a(Landroidx/appcompat/widget/SwitchCompat;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/SwitchCompat$a;->a(Landroidx/appcompat/widget/SwitchCompat;Ljava/lang/Float;)V

    return-void
.end method
