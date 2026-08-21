###### Class androidx.appcompat.widget.ActionMenuView (androidx.appcompat.widget.ActionMenuView)
.class public Landroidx/appcompat/widget/ActionMenuView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/h$b;
.implements Landroidx/appcompat/view/menu/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ActionMenuView$c;,
        Landroidx/appcompat/widget/ActionMenuView$a;,
        Landroidx/appcompat/widget/ActionMenuView$b;,
        Landroidx/appcompat/widget/ActionMenuView$d;,
        Landroidx/appcompat/widget/ActionMenuView$e;
    }
.end annotation


# instance fields
.field private b:Landroidx/appcompat/view/menu/h;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Z

.field private f:Landroidx/appcompat/widget/c;

.field private g:Landroidx/appcompat/view/menu/p$a;

.field h:Landroidx/appcompat/view/menu/h$a;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field m:Landroidx/appcompat/widget/ActionMenuView$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42600000    # 56.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroid/content/Context;

    iput p2, p0, Landroidx/appcompat/widget/ActionMenuView;->d:I

    return-void
.end method

.method static a(Landroid/view/View;IIII)I
    .registers 10

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    invoke-static {v1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    instance-of p4, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz p4, :cond_1b

    move-object p4, p0

    check-cast p4, Landroidx/appcompat/view/menu/ActionMenuItemView;

    goto :goto_1c

    :cond_1b
    const/4 p4, 0x0

    :goto_1c
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_28

    invoke-virtual {p4}, Landroidx/appcompat/view/menu/ActionMenuItemView;->c()Z

    move-result p4

    if-eqz p4, :cond_28

    const/4 p4, 0x1

    goto :goto_29

    :cond_28
    const/4 p4, 0x0

    :goto_29
    const/4 v3, 0x2

    if-lez p2, :cond_4d

    if-eqz p4, :cond_30

    if-lt p2, v3, :cond_4d

    :cond_30
    mul-int p2, p2, p1

    const/high16 v4, -0x80000000

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p2, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    div-int v4, p2, p1

    rem-int/2addr p2, p1

    if-eqz p2, :cond_46

    add-int/lit8 v4, v4, 0x1

    :cond_46
    if-eqz p4, :cond_4b

    if-ge v4, v3, :cond_4b

    goto :goto_4e

    :cond_4b
    move v3, v4

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    iget-boolean p2, v0, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-nez p2, :cond_55

    if-eqz p4, :cond_55

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    iput v3, v0, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    mul-int p1, p1, v3

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->measure(II)V

    return v3
.end method

.method private a(II)V
    .registers 32

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    iget v4, v0, Landroidx/appcompat/widget/ActionMenuView;->k:I

    div-int v7, v2, v4

    rem-int v8, v2, v4

    const/4 v9, 0x0

    if-nez v7, :cond_35

    invoke-virtual {v0, v2, v9}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    :cond_35
    div-int/2addr v8, v7

    add-int/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v14, v7

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    :goto_45
    if-ge v7, v8, :cond_c5

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v9

    move/from16 v19, v3

    const/16 v3, 0x8

    if-ne v9, v3, :cond_57

    goto/16 :goto_bf

    :cond_57
    instance-of v3, v11, Landroidx/appcompat/view/menu/ActionMenuItemView;

    add-int/lit8 v13, v13, 0x1

    if-eqz v3, :cond_66

    iget v9, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    move/from16 v20, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_69

    :cond_66
    move/from16 v20, v13

    const/4 v13, 0x0

    :goto_69
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/ActionMenuView$c;

    iput-boolean v13, v9, Landroidx/appcompat/widget/ActionMenuView$c;->h:Z

    iput v13, v9, Landroidx/appcompat/widget/ActionMenuView$c;->e:I

    iput v13, v9, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    iput-boolean v13, v9, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    iput v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v3, :cond_88

    move-object v3, v11

    check-cast v3, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ActionMenuItemView;->c()Z

    move-result v3

    if-eqz v3, :cond_88

    const/4 v3, 0x1

    goto :goto_89

    :cond_88
    const/4 v3, 0x0

    :goto_89
    iput-boolean v3, v9, Landroidx/appcompat/widget/ActionMenuView$c;->g:Z

    iget-boolean v3, v9, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v3, :cond_91

    const/4 v3, 0x1

    goto :goto_92

    :cond_91
    move v3, v14

    :goto_92
    invoke-static {v11, v4, v3, v6, v5}, Landroidx/appcompat/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-boolean v15, v9, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-eqz v15, :cond_a0

    add-int/lit8 v16, v16, 0x1

    :cond_a0
    iget-boolean v9, v9, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v9, :cond_a5

    const/4 v12, 0x1

    :cond_a5
    sub-int/2addr v14, v3

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v9, 0x1

    if-ne v3, v9, :cond_bb

    shl-int v3, v9, v7

    move v11, v10

    int-to-long v9, v3

    or-long v9, v17, v9

    move-wide/from16 v17, v9

    move v10, v11

    goto :goto_bc

    :cond_bb
    move v11, v10

    :goto_bc
    move v15, v13

    move/from16 v13, v20

    :goto_bf
    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v19

    const/4 v9, 0x0

    goto :goto_45

    :cond_c5
    move/from16 v19, v3

    const/4 v3, 0x2

    if-eqz v12, :cond_ce

    if-ne v13, v3, :cond_ce

    const/4 v5, 0x1

    goto :goto_cf

    :cond_ce
    const/4 v5, 0x0

    :goto_cf
    const/4 v7, 0x0

    :goto_d0
    const-wide/16 v20, 0x1

    if-lez v16, :cond_172

    if-lez v14, :cond_172

    const v9, 0x7fffffff

    const v3, 0x7fffffff

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v22, 0x0

    :goto_e0
    if-ge v9, v8, :cond_111

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    move/from16 v25, v7

    move-object/from16 v7, v24

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$c;

    move/from16 v24, v10

    iget-boolean v10, v7, Landroidx/appcompat/widget/ActionMenuView$c;->f:Z

    if-nez v10, :cond_f7

    goto :goto_10a

    :cond_f7
    iget v7, v7, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    if-ge v7, v3, :cond_102

    shl-long v10, v20, v9

    move v3, v7

    move-wide/from16 v22, v10

    const/4 v11, 0x1

    goto :goto_10a

    :cond_102
    if-ne v7, v3, :cond_10a

    shl-long v26, v20, v9

    or-long v22, v22, v26

    add-int/lit8 v11, v11, 0x1

    :cond_10a
    :goto_10a
    add-int/lit8 v9, v9, 0x1

    move/from16 v10, v24

    move/from16 v7, v25

    goto :goto_e0

    :cond_111
    move/from16 v25, v7

    move/from16 v24, v10

    or-long v17, v17, v22

    if-le v11, v14, :cond_11d

    move v11, v1

    move/from16 v26, v2

    goto :goto_179

    :cond_11d
    add-int/lit8 v3, v3, 0x1

    const/4 v7, 0x0

    :goto_120
    if-ge v7, v8, :cond_16c

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/widget/ActionMenuView$c;

    move/from16 v26, v2

    const/4 v11, 0x1

    shl-int v2, v11, v7

    move v11, v1

    int-to-long v1, v2

    and-long v20, v22, v1

    const-wide/16 v27, 0x0

    cmp-long v25, v20, v27

    if-nez v25, :cond_144

    iget v9, v10, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    if-ne v9, v3, :cond_141

    or-long v17, v17, v1

    :cond_141
    move/from16 v20, v3

    goto :goto_164

    :cond_144
    if-eqz v5, :cond_158

    iget-boolean v1, v10, Landroidx/appcompat/widget/ActionMenuView$c;->g:Z

    if-eqz v1, :cond_158

    const/4 v1, 0x1

    if-ne v14, v1, :cond_158

    iget v2, v0, Landroidx/appcompat/widget/ActionMenuView;->l:I

    add-int v1, v2, v4

    move/from16 v20, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_15a

    :cond_158
    move/from16 v20, v3

    :goto_15a
    iget v1, v10, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v10, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    iput-boolean v2, v10, Landroidx/appcompat/widget/ActionMenuView$c;->h:Z

    add-int/lit8 v14, v14, -0x1

    :goto_164
    add-int/lit8 v7, v7, 0x1

    move v1, v11

    move/from16 v3, v20

    move/from16 v2, v26

    goto :goto_120

    :cond_16c
    move/from16 v10, v24

    const/4 v3, 0x2

    const/4 v7, 0x1

    goto/16 :goto_d0

    :cond_172
    move v11, v1

    move/from16 v26, v2

    move/from16 v25, v7

    move/from16 v24, v10

    :goto_179
    const/4 v1, 0x1

    if-nez v12, :cond_180

    if-ne v13, v1, :cond_180

    const/4 v2, 0x1

    goto :goto_181

    :cond_180
    const/4 v2, 0x0

    :goto_181
    if-lez v14, :cond_233

    const-wide/16 v9, 0x0

    cmp-long v3, v17, v9

    if-eqz v3, :cond_233

    sub-int/2addr v13, v1

    if-lt v14, v13, :cond_190

    if-nez v2, :cond_190

    if-le v15, v1, :cond_233

    :cond_190
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    int-to-float v1, v1

    if-nez v2, :cond_1cf

    and-long v2, v17, v20

    const/high16 v5, 0x3f000000    # 0.5f

    const-wide/16 v9, 0x0

    cmp-long v7, v2, v9

    const/4 v13, 0x0

    if-eqz v7, :cond_1b1

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->g:Z

    if-nez v2, :cond_1b1

    sub-float/2addr v1, v5

    :cond_1b1
    add-int/lit8 v2, v8, -0x1

    const/4 v3, 0x1

    shl-int v7, v3, v2

    int-to-long v9, v7

    and-long v9, v17, v9

    const-wide/16 v15, 0x0

    cmp-long v3, v9, v15

    if-eqz v3, :cond_1d0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$c;->g:Z

    if-nez v2, :cond_1d0

    sub-float/2addr v1, v5

    goto :goto_1d0

    :cond_1cf
    const/4 v13, 0x0

    :cond_1d0
    :goto_1d0
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1db

    mul-int v14, v14, v4

    int-to-float v2, v14

    div-float/2addr v2, v1

    float-to-int v9, v2

    goto :goto_1dc

    :cond_1db
    const/4 v9, 0x0

    :goto_1dc
    const/4 v1, 0x0

    :goto_1dd
    if-ge v1, v8, :cond_234

    const/4 v2, 0x1

    shl-int v3, v2, v1

    int-to-long v2, v3

    and-long v2, v17, v2

    const-wide/16 v14, 0x0

    cmp-long v5, v2, v14

    if-nez v5, :cond_1ee

    const/4 v2, 0x1

    const/4 v5, 0x2

    goto :goto_230

    :cond_1ee
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    instance-of v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v2, :cond_210

    iput v9, v3, Landroidx/appcompat/widget/ActionMenuView$c;->e:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Landroidx/appcompat/widget/ActionMenuView$c;->h:Z

    if-nez v1, :cond_20d

    iget-boolean v2, v3, Landroidx/appcompat/widget/ActionMenuView$c;->g:Z

    if-nez v2, :cond_20d

    neg-int v2, v9

    const/4 v5, 0x2

    div-int/2addr v2, v5

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_20e

    :cond_20d
    const/4 v5, 0x2

    :goto_20e
    const/4 v2, 0x1

    goto :goto_21e

    :cond_210
    const/4 v5, 0x2

    iget-boolean v2, v3, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v2, :cond_221

    iput v9, v3, Landroidx/appcompat/widget/ActionMenuView$c;->e:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Landroidx/appcompat/widget/ActionMenuView$c;->h:Z

    neg-int v7, v9

    div-int/2addr v7, v5

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_21e
    const/16 v25, 0x1

    goto :goto_230

    :cond_221
    const/4 v2, 0x1

    if-eqz v1, :cond_228

    div-int/lit8 v7, v9, 0x2

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_228
    add-int/lit8 v7, v8, -0x1

    if-eq v1, v7, :cond_230

    div-int/lit8 v7, v9, 0x2

    iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_230
    :goto_230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1dd

    :cond_233
    const/4 v13, 0x0

    :cond_234
    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v25, :cond_25a

    :goto_238
    if-ge v13, v8, :cond_25a

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v5, v3, Landroidx/appcompat/widget/ActionMenuView$c;->h:Z

    if-nez v5, :cond_249

    goto :goto_257

    :cond_249
    iget v5, v3, Landroidx/appcompat/widget/ActionMenuView$c;->d:I

    mul-int v5, v5, v4

    iget v3, v3, Landroidx/appcompat/widget/ActionMenuView$c;->e:I

    add-int/2addr v5, v3

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v6}, Landroid/view/View;->measure(II)V

    :goto_257
    add-int/lit8 v13, v13, 0x1

    goto :goto_238

    :cond_25a
    if-eq v11, v1, :cond_25f

    move/from16 v1, v24

    goto :goto_261

    :cond_25f
    move/from16 v1, v19

    :goto_261
    move/from16 v2, v26

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/p$a;Landroidx/appcompat/view/menu/h$a;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/view/menu/p$a;

    iput-object p2, p0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/h$a;

    return-void
.end method

.method protected a(I)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1f

    instance-of v3, v1, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz v3, :cond_1f

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v1}, Landroidx/appcompat/widget/ActionMenuView$a;->a()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1f
    if-lez p1, :cond_2c

    instance-of p1, v2, Landroidx/appcompat/widget/ActionMenuView$a;

    if-eqz p1, :cond_2c

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$a;

    invoke-interface {v2}, Landroidx/appcompat/widget/ActionMenuView$a;->b()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2c
    return v0
.end method

.method public a(Landroidx/appcompat/view/menu/k;)Z
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/h;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    return p1
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->b()Z

    :cond_7
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    if-eqz p1, :cond_8

    instance-of p1, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public d()Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    return-object v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->f()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public g()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 3

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->b:I

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 4

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;
    .registers 3

    if-eqz p1, :cond_1c

    instance-of v0, p1, Landroidx/appcompat/widget/ActionMenuView$c;

    if-eqz v0, :cond_e

    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroidx/appcompat/widget/ActionMenuView$c;)V

    goto :goto_13

    :cond_e
    new-instance v0, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/ActionMenuView$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_13
    iget p1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->b:I

    if-gtz p1, :cond_1b

    const/16 p1, 0x10

    iput p1, v0, Landroidx/appcompat/widget/LinearLayoutCompat$a;->b:I

    :cond_1b
    return-object v0

    :cond_1c
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->generateDefaultLayoutParams()Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$a;
    .registers 2

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/ActionMenuView$c;

    move-result-object p1

    return-object p1
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/view/menu/h;

    if-nez v0, :cond_43

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/h;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/h;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/view/menu/h;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/view/menu/h;

    new-instance v2, Landroidx/appcompat/widget/ActionMenuView$d;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ActionMenuView$d;-><init>(Landroidx/appcompat/widget/ActionMenuView;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/h;->setCallback(Landroidx/appcompat/view/menu/h$a;)V

    new-instance v1, Landroidx/appcompat/widget/c;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/c;->b(Z)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->g:Landroidx/appcompat/view/menu/p$a;

    if-eqz v1, :cond_2d

    goto :goto_32

    :cond_2d
    new-instance v1, Landroidx/appcompat/widget/ActionMenuView$b;

    invoke-direct {v1}, Landroidx/appcompat/widget/ActionMenuView$b;-><init>()V

    :goto_32
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/b;->setCallback(Landroidx/appcompat/view/menu/p$a;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/view/menu/h;

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/h;->addMenuPresenter(Landroidx/appcompat/view/menu/p;Landroid/content/Context;)V

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/widget/ActionMenuView;)V

    :cond_43
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/view/menu/h;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->d:I

    return v0
.end method

.method public getWindowAnimations()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Z

    return v0
.end method

.method public i()Landroidx/appcompat/view/menu/h;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/view/menu/h;

    return-object v0
.end method

.method public initialize(Landroidx/appcompat/view/menu/h;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/view/menu/h;

    return-void
.end method

.method public j()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/appcompat/widget/c;->h()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/c;->updateMenuView(Z)V

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->g()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->d()Z

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/c;->h()Z

    :cond_1d
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->c()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-nez v1, :cond_a

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    return-void

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getDividerWidth()I

    move-result v3

    sub-int v4, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/w0;->a(Landroid/view/View;)Z

    move-result v6

    move v10, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2b
    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v5, v1, :cond_8f

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v11, :cond_3b

    goto :goto_8c

    :cond_3b
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/ActionMenuView$c;

    iget-boolean v14, v11, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v14, :cond_7b

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->a(I)Z

    move-result v14

    if-eqz v14, :cond_50

    add-int/2addr v8, v3

    :cond_50
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v6, :cond_60

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v15

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v15, v11

    add-int v11, v15, v8

    goto :goto_70

    :cond_60
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v11, v15, v11

    sub-int v15, v11, v8

    :goto_70
    div-int/lit8 v16, v14, 0x2

    sub-int v7, v2, v16

    add-int/2addr v14, v7

    invoke-virtual {v13, v15, v7, v11, v14}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v10, v8

    const/4 v8, 0x1

    goto :goto_8c

    :cond_7b
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v12, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v12

    iget v11, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v7, v11

    sub-int/2addr v10, v7

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/ActionMenuView;->a(I)Z

    move-result v7

    add-int/lit8 v9, v9, 0x1

    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_8f
    if-ne v1, v12, :cond_ae

    if-nez v8, :cond_ae

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    div-int/lit8 v6, v5, 0x2

    sub-int/2addr v2, v6

    add-int/2addr v3, v4

    add-int/2addr v5, v2

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_ae
    xor-int/lit8 v3, v8, 0x1

    sub-int/2addr v9, v3

    if-lez v9, :cond_b7

    div-int v7, v10, v9

    const/4 v3, 0x0

    goto :goto_b9

    :cond_b7
    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_b9
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v6, :cond_fc

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    :goto_c8
    if-ge v3, v1, :cond_134

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_f9

    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v8, :cond_df

    goto :goto_f9

    :cond_df
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    sub-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v6, v12, v10, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    sub-int/2addr v5, v8

    :cond_f9
    :goto_f9
    add-int/lit8 v3, v3, 0x1

    goto :goto_c8

    :cond_fc
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    :goto_100
    if-ge v3, v1, :cond_134

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/ActionMenuView$c;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_131

    iget-boolean v8, v7, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    if-eqz v8, :cond_117

    goto :goto_131

    :cond_117
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v10, v9, 0x2

    sub-int v10, v2, v10

    add-int v12, v5, v8

    add-int/2addr v9, v10

    invoke-virtual {v6, v5, v10, v12, v9}, Landroid/view/View;->layout(IIII)V

    iget v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    :cond_131
    :goto_131
    add-int/lit8 v3, v3, 0x1

    goto :goto_100

    :cond_134
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    iget-boolean v0, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    iput-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eq v0, v1, :cond_17

    iput v3, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    :cond_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroidx/appcompat/widget/ActionMenuView;->b:Landroidx/appcompat/view/menu/h;

    if-eqz v1, :cond_2c

    iget v4, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    if-eq v0, v4, :cond_2c

    iput v0, p0, Landroidx/appcompat/widget/ActionMenuView;->j:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/h;->onItemsChanged(Z)V

    :cond_2c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-boolean v1, p0, Landroidx/appcompat/widget/ActionMenuView;->i:Z

    if-eqz v1, :cond_3a

    if-lez v0, :cond_3a

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;->a(II)V

    goto :goto_51

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    if-ge v1, v0, :cond_4e

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$c;

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_4e
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    :goto_51
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->a(Z)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/ActionMenuView$e;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->m:Landroidx/appcompat/widget/ActionMenuView$e;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/c;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 2

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView;->e:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4

    iget v0, p0, Landroidx/appcompat/widget/ActionMenuView;->d:I

    if-eq v0, p1, :cond_1a

    iput p1, p0, Landroidx/appcompat/widget/ActionMenuView;->d:I

    if-nez p1, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroid/content/Context;

    goto :goto_1a

    :cond_f
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/widget/ActionMenuView;->c:Landroid/content/Context;

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setPresenter(Landroidx/appcompat/widget/c;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView;->f:Landroidx/appcompat/widget/c;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/c;->a(Landroidx/appcompat/widget/ActionMenuView;)V

    return-void
.end method

###### Class androidx.appcompat.widget.ActionMenuView.a (androidx.appcompat.widget.ActionMenuView$a)
.class public interface abstract Landroidx/appcompat/widget/ActionMenuView$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

###### Class androidx.appcompat.widget.ActionMenuView.b (androidx.appcompat.widget.ActionMenuView$b)
.class Landroidx/appcompat/widget/ActionMenuView$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/h;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/h;Z)V
    .registers 3

    return-void
.end method

###### Class androidx.appcompat.widget.ActionMenuView.c (androidx.appcompat.widget.ActionMenuView$c)
.class public Landroidx/appcompat/widget/ActionMenuView$c;
.super Landroidx/appcompat/widget/LinearLayoutCompat$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public c:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public d:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public e:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public f:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public g:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field h:Z


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/ActionMenuView$c;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p1, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionMenuView$c;->c:Z

    return-void
.end method

###### Class androidx.appcompat.widget.ActionMenuView.d (androidx.appcompat.widget.ActionMenuView$d)
.class Landroidx/appcompat/widget/ActionMenuView$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/view/menu/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Landroidx/appcompat/widget/ActionMenuView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuView;)V
    .registers 2

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuView$d;->b:Landroidx/appcompat/widget/ActionMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(Landroidx/appcompat/view/menu/h;Landroid/view/MenuItem;)Z
    .registers 3

    iget-object p1, p0, Landroidx/appcompat/widget/ActionMenuView$d;->b:Landroidx/appcompat/widget/ActionMenuView;

    iget-object p1, p1, Landroidx/appcompat/widget/ActionMenuView;->m:Landroidx/appcompat/widget/ActionMenuView$e;

    if-eqz p1, :cond_e

    invoke-interface {p1, p2}, Landroidx/appcompat/widget/ActionMenuView$e;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public onMenuModeChange(Landroidx/appcompat/view/menu/h;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuView$d;->b:Landroidx/appcompat/widget/ActionMenuView;

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->h:Landroidx/appcompat/view/menu/h$a;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/h$a;->onMenuModeChange(Landroidx/appcompat/view/menu/h;)V

    :cond_9
    return-void
.end method

###### Class androidx.appcompat.widget.ActionMenuView.e (androidx.appcompat.widget.ActionMenuView$e)
.class public interface abstract Landroidx/appcompat/widget/ActionMenuView$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract onMenuItemClick(Landroid/view/MenuItem;)Z
.end method
