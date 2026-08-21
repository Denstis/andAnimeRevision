###### Class androidx.constraintlayout.widget.c (androidx.constraintlayout.widget.c)
.class public Landroidx/constraintlayout/widget/c;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/c$a;
    }
.end annotation


# instance fields
.field b:Landroidx/constraintlayout/widget/b;


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/c;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/c$a;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/constraintlayout/widget/c$a;
    .registers 3

    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/c$a;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/c;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/c$a;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/c$a;
    .registers 4

    new-instance v0, Landroidx/constraintlayout/widget/c$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/c$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getConstraintSet()Landroidx/constraintlayout/widget/b;
    .registers 2

    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Landroidx/constraintlayout/widget/b;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/constraintlayout/widget/b;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Landroidx/constraintlayout/widget/b;

    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Landroidx/constraintlayout/widget/b;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/b;->a(Landroidx/constraintlayout/widget/c;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/c;->b:Landroidx/constraintlayout/widget/b;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    return-void
.end method

###### Class androidx.constraintlayout.widget.c.a (androidx.constraintlayout.widget.c$a)
.class public Landroidx/constraintlayout/widget/c$a;
.super Landroidx/constraintlayout/widget/ConstraintLayout$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public m0:F

.field public n0:Z

.field public o0:F

.field public p0:F

.field public q0:F

.field public r0:F

.field public s0:F

.field public t0:F

.field public u0:F

.field public v0:F

.field public w0:F

.field public x0:F

.field public y0:F


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/constraintlayout/widget/c$a;->m0:F

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/constraintlayout/widget/c$a;->n0:Z

    const/4 p2, 0x0

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->o0:F

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->p0:F

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->q0:F

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->r0:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$a;->s0:F

    iput p1, p0, Landroidx/constraintlayout/widget/c$a;->t0:F

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->u0:F

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->v0:F

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->w0:F

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->x0:F

    iput p2, p0, Landroidx/constraintlayout/widget/c$a;->y0:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->m0:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/c$a;->n0:Z

    const/4 v2, 0x0

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->o0:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->p0:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->q0:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->r0:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->s0:F

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->t0:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->u0:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->v0:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->w0:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->x0:F

    iput v2, p0, Landroidx/constraintlayout/widget/c$a;->y0:F

    sget-object v0, Landroidx/constraintlayout/widget/g;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_2b
    if-ge v1, p2, :cond_d1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_alpha:I

    if-ne v0, v2, :cond_3f

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->m0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->m0:F

    goto/16 :goto_cd

    :cond_3f
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_elevation:I

    if-ne v0, v2, :cond_50

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->o0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->o0:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/c$a;->n0:Z

    goto/16 :goto_cd

    :cond_50
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_rotationX:I

    if-ne v0, v2, :cond_5e

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->q0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->q0:F

    goto/16 :goto_cd

    :cond_5e
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_rotationY:I

    if-ne v0, v2, :cond_6b

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->r0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->r0:F

    goto :goto_cd

    :cond_6b
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_rotation:I

    if-ne v0, v2, :cond_78

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->p0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->p0:F

    goto :goto_cd

    :cond_78
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_scaleX:I

    if-ne v0, v2, :cond_85

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->s0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->s0:F

    goto :goto_cd

    :cond_85
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_scaleY:I

    if-ne v0, v2, :cond_92

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->t0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->t0:F

    goto :goto_cd

    :cond_92
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v2, :cond_9f

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->u0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->u0:F

    goto :goto_cd

    :cond_9f
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v2, :cond_ac

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->v0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->v0:F

    goto :goto_cd

    :cond_ac
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_translationX:I

    if-ne v0, v2, :cond_b9

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->w0:F

    :goto_b2
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->w0:F

    goto :goto_cd

    :cond_b9
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_translationY:I

    if-ne v0, v2, :cond_c6

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->x0:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/widget/c$a;->x0:F

    goto :goto_cd

    :cond_c6
    sget v2, Landroidx/constraintlayout/widget/g;->ConstraintSet_android_translationZ:I

    if-ne v0, v2, :cond_cd

    iget v2, p0, Landroidx/constraintlayout/widget/c$a;->y0:F

    goto :goto_b2

    :cond_cd
    :goto_cd
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2b

    :cond_d1
    return-void
.end method
