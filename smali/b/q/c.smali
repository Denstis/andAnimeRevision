###### Class b.q.c (b.q.c)
.class public Lb/q/c;
.super Lb/q/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/q/c$k;
    }
.end annotation


# static fields
.field private static final e:[Ljava/lang/String;

.field private static final f:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lb/q/c$k;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lb/q/c$k;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Lb/q/k;


# instance fields
.field private b:[I

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, Lb/q/c;->e:[Ljava/lang/String;

    new-instance v0, Lb/q/c$b;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Lb/q/c$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->f:Landroid/util/Property;

    new-instance v0, Lb/q/c$c;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "topLeft"

    invoke-direct {v0, v1, v2}, Lb/q/c$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->g:Landroid/util/Property;

    new-instance v0, Lb/q/c$d;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Lb/q/c$d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->h:Landroid/util/Property;

    new-instance v0, Lb/q/c$e;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Lb/q/c$e;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->i:Landroid/util/Property;

    new-instance v0, Lb/q/c$f;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Lb/q/c$f;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->j:Landroid/util/Property;

    new-instance v0, Lb/q/c$g;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Lb/q/c$g;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/c;->k:Landroid/util/Property;

    new-instance v0, Lb/q/k;

    invoke-direct {v0}, Lb/q/k;-><init>()V

    sput-object v0, Lb/q/c;->l:Lb/q/k;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lb/q/n;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lb/q/c;->b:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/q/c;->c:Z

    iput-boolean v0, p0, Lb/q/c;->d:Z

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .registers 6

    iget-boolean v0, p0, Lb/q/c;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1, v1}, Lb/q/n;->getMatchedTransitionValues(Landroid/view/View;Z)Lb/q/t;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_11

    if-ne p1, p2, :cond_f

    goto :goto_15

    :cond_f
    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    iget-object p1, v0, Lb/q/t;->b:Landroid/view/View;

    if-ne p2, p1, :cond_f

    :cond_15
    :goto_15
    return v1
.end method

.method private captureValues(Lb/q/t;)V
    .registers 9

    iget-object v0, p1, Lb/q/t;->b:Landroid/view/View;

    invoke-static {v0}, Lb/h/o/s;->z(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_77

    :cond_14
    iget-object v1, p1, Lb/q/t;->a:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lb/q/t;->a:Ljava/util/Map;

    iget-object v2, p1, Lb/q/t;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lb/q/c;->d:Z

    if-eqz v1, :cond_68

    iget-object v1, p1, Lb/q/t;->b:Landroid/view/View;

    iget-object v2, p0, Lb/q/c;->b:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p1, Lb/q/t;->a:Ljava/util/Map;

    iget-object v2, p0, Lb/q/c;->b:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lb/q/t;->a:Ljava/util/Map;

    iget-object v2, p0, Lb/q/c;->b:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    iget-boolean v1, p0, Lb/q/c;->c:Z

    if-eqz v1, :cond_77

    iget-object p1, p1, Lb/q/t;->a:Ljava/util/Map;

    invoke-static {v0}, Lb/h/o/s;->e(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "android:changeBounds:clip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    return-void
.end method


# virtual methods
.method public captureEndValues(Lb/q/t;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/q/c;->captureValues(Lb/q/t;)V

    return-void
.end method

.method public captureStartValues(Lb/q/t;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/q/c;->captureValues(Lb/q/t;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
    .registers 22

    move-object/from16 v8, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eqz v0, :cond_255

    if-nez v1, :cond_c

    goto/16 :goto_255

    :cond_c
    iget-object v3, v0, Lb/q/t;->a:Ljava/util/Map;

    iget-object v4, v1, Lb/q/t;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:parent"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v3, :cond_253

    if-nez v4, :cond_24

    goto/16 :goto_253

    :cond_24
    iget-object v9, v1, Lb/q/t;->b:Landroid/view/View;

    invoke-direct {v8, v3, v4}, Lb/q/c;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1ac

    iget-object v3, v0, Lb/q/t;->a:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    iget-object v6, v1, Lb/q/t;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->top:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v3, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v13, v6

    sub-int v2, v3, v11

    sub-int v10, v14, v7

    sub-int v4, v15, v12

    iget-object v0, v0, Lb/q/t;->a:Ljava/util/Map;

    move-object/from16 v16, v9

    const-string v9, "android:changeBounds:clip"

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, v1, Lb/q/t;->a:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/graphics/Rect;

    if-eqz v5, :cond_6f

    if-nez v2, :cond_73

    :cond_6f
    if-eqz v10, :cond_82

    if-eqz v4, :cond_82

    :cond_73
    if-ne v6, v7, :cond_7a

    if-eq v11, v12, :cond_78

    goto :goto_7a

    :cond_78
    const/4 v1, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    const/4 v1, 0x1

    :goto_7b
    if-ne v13, v14, :cond_7f

    if-eq v3, v15, :cond_83

    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    :cond_82
    const/4 v1, 0x0

    :cond_83
    :goto_83
    if-eqz v0, :cond_8b

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8f

    :cond_8b
    if-nez v0, :cond_91

    if-eqz v9, :cond_91

    :cond_8f
    add-int/lit8 v1, v1, 0x1

    :cond_91
    if-lez v1, :cond_1e5

    move-object/from16 p1, v9

    iget-boolean v9, v8, Lb/q/c;->c:Z

    move-object/from16 p2, v0

    const/4 v0, 0x2

    if-nez v9, :cond_122

    move-object/from16 v9, v16

    invoke-static {v9, v6, v11, v13, v3}, Lb/q/e0;->a(Landroid/view/View;IIII)V

    if-ne v1, v0, :cond_fa

    if-ne v5, v10, :cond_b6

    if-ne v2, v4, :cond_b6

    invoke-virtual/range {p0 .. p0}, Lb/q/n;->getPathMotion()Lb/q/g;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v11

    int-to-float v3, v7

    int-to-float v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/q/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lb/q/c;->k:Landroid/util/Property;

    goto :goto_11c

    :cond_b6
    new-instance v1, Lb/q/c$k;

    invoke-direct {v1, v9}, Lb/q/c$k;-><init>(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lb/q/n;->getPathMotion()Lb/q/g;

    move-result-object v2

    int-to-float v4, v6

    int-to-float v5, v11

    int-to-float v6, v7

    int-to-float v7, v12

    invoke-virtual {v2, v4, v5, v6, v7}, Lb/q/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v2

    sget-object v4, Lb/q/c;->g:Landroid/util/Property;

    invoke-static {v1, v4, v2}, Lb/q/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lb/q/n;->getPathMotion()Lb/q/g;

    move-result-object v4

    int-to-float v5, v13

    int-to-float v3, v3

    int-to-float v6, v14

    int-to-float v7, v15

    invoke-virtual {v4, v5, v3, v6, v7}, Lb/q/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v3

    sget-object v4, Lb/q/c;->h:Landroid/util/Property;

    invoke-static {v1, v4, v3}, Lb/q/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    const/4 v2, 0x1

    aput-object v3, v0, v2

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lb/q/c$h;

    invoke-direct {v0, v8, v1}, Lb/q/c$h;-><init>(Lb/q/c;Lb/q/c$k;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v4

    goto/16 :goto_191

    :cond_fa
    if-ne v6, v7, :cond_10e

    if-eq v11, v12, :cond_ff

    goto :goto_10e

    :cond_ff
    invoke-virtual/range {p0 .. p0}, Lb/q/n;->getPathMotion()Lb/q/g;

    move-result-object v0

    int-to-float v1, v13

    int-to-float v2, v3

    int-to-float v3, v14

    int-to-float v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/q/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lb/q/c;->i:Landroid/util/Property;

    goto :goto_11c

    :cond_10e
    :goto_10e
    invoke-virtual/range {p0 .. p0}, Lb/q/n;->getPathMotion()Lb/q/g;

    move-result-object v0

    int-to-float v1, v6

    int-to-float v2, v11

    int-to-float v3, v7

    int-to-float v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/q/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lb/q/c;->j:Landroid/util/Property;

    :goto_11c
    invoke-static {v9, v1, v0}, Lb/q/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto/16 :goto_191

    :cond_122
    move-object/from16 v9, v16

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v1, v6

    add-int/2addr v3, v11

    invoke-static {v9, v6, v11, v1, v3}, Lb/q/e0;->a(Landroid/view/View;IIII)V

    if-ne v6, v7, :cond_138

    if-eq v11, v12, :cond_136

    goto :goto_138

    :cond_136
    const/4 v11, 0x0

    goto :goto_14b

    :cond_138
    :goto_138
    invoke-virtual/range {p0 .. p0}, Lb/q/n;->getPathMotion()Lb/q/g;

    move-result-object v1

    int-to-float v3, v6

    int-to-float v6, v11

    int-to-float v11, v7

    int-to-float v13, v12

    invoke-virtual {v1, v3, v6, v11, v13}, Lb/q/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v1

    sget-object v3, Lb/q/c;->k:Landroid/util/Property;

    invoke-static {v9, v3, v1}, Lb/q/f;->a(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    move-object v11, v1

    :goto_14b
    if-nez p2, :cond_154

    new-instance v1, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_157

    :cond_154
    const/4 v3, 0x0

    move-object/from16 v1, p2

    :goto_157
    if-nez p1, :cond_15f

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v10, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_161

    :cond_15f
    move-object/from16 v2, p1

    :goto_161
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18c

    invoke-static {v9, v1}, Lb/h/o/s;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    sget-object v4, Lb/q/c;->l:Lb/q/k;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const-string v1, "clipBounds"

    invoke-static {v9, v1, v4, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v13, Lb/q/c$i;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v9

    move-object/from16 v3, p1

    move v4, v7

    move v5, v12

    move v6, v14

    move v7, v15

    invoke-direct/range {v0 .. v7}, Lb/q/c$i;-><init>(Lb/q/c;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    invoke-virtual {v10, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_18d

    :cond_18c
    const/4 v10, 0x0

    :goto_18d
    invoke-static {v11, v10}, Lb/q/s;->a(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    :goto_191
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1ab

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lb/q/y;->a(Landroid/view/ViewGroup;Z)V

    new-instance v2, Lb/q/c$j;

    invoke-direct {v2, v8, v1}, Lb/q/c$j;-><init>(Lb/q/c;Landroid/view/ViewGroup;)V

    invoke-virtual {v8, v2}, Lb/q/n;->addListener(Lb/q/n$g;)Lb/q/n;

    :cond_1ab
    return-object v0

    :cond_1ac
    iget-object v2, v0, Lb/q/t;->a:Ljava/util/Map;

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Lb/q/t;->a:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowY"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, v1, Lb/q/t;->a:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v1, Lb/q/t;->a:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v3, :cond_1e7

    if-eq v0, v1, :cond_1e5

    goto :goto_1e7

    :cond_1e5
    const/4 v0, 0x0

    return-object v0

    :cond_1e7
    :goto_1e7
    iget-object v4, v8, Lb/q/c;->b:[I

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v9, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {v9}, Lb/q/e0;->c(Landroid/view/View;)F

    move-result v7

    const/4 v4, 0x0

    invoke-static {v9, v4}, Lb/q/e0;->a(Landroid/view/View;F)V

    invoke-static/range {p1 .. p1}, Lb/q/e0;->b(Landroid/view/View;)Lb/q/d0;

    move-result-object v4

    invoke-interface {v4, v6}, Lb/q/d0;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lb/q/n;->getPathMotion()Lb/q/g;

    move-result-object v4

    iget-object v10, v8, Lb/q/c;->b:[I

    const/4 v11, 0x0

    aget v12, v10, v11

    sub-int/2addr v2, v12

    int-to-float v2, v2

    const/4 v12, 0x1

    aget v13, v10, v12

    sub-int/2addr v0, v13

    int-to-float v0, v0

    aget v13, v10, v11

    sub-int/2addr v3, v13

    int-to-float v3, v3

    aget v10, v10, v12

    sub-int/2addr v1, v10

    int-to-float v1, v1

    invoke-virtual {v4, v2, v0, v3, v1}, Lb/q/g;->a(FFFF)Landroid/graphics/Path;

    move-result-object v0

    sget-object v1, Lb/q/c;->f:Landroid/util/Property;

    invoke-static {v1, v0}, Lb/q/i;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v12, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v11

    invoke-static {v6, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    new-instance v11, Lb/q/c$a;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move-object v4, v9

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lb/q/c$a;-><init>(Lb/q/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v10

    :cond_253
    :goto_253
    const/4 v0, 0x0

    return-object v0

    :cond_255
    :goto_255
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    sget-object v0, Lb/q/c;->e:[Ljava/lang/String;

    return-object v0
.end method

###### Class b.q.c.a (b.q.c$a)
.class Lb/q/c$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/c;->createAnimator(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:F


# direct methods
.method constructor <init>(Lb/q/c;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .registers 6

    iput-object p2, p0, Lb/q/c$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lb/q/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lb/q/c$a;->c:Landroid/view/View;

    iput p5, p0, Lb/q/c$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lb/q/c$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/q/e0;->b(Landroid/view/View;)Lb/q/d0;

    move-result-object p1

    iget-object v0, p0, Lb/q/c$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {p1, v0}, Lb/q/d0;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lb/q/c$a;->c:Landroid/view/View;

    iget v0, p0, Lb/q/c$a;->d:F

    invoke-static {p1, v0}, Lb/q/e0;->a(Landroid/view/View;F)V

    return-void
.end method

###### Class b.q.c.b (b.q.c$b)
.class final Lb/q/c$b;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lb/q/c$b;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;
    .registers 4

    iget-object v0, p0, Lb/q/c$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/PointF;

    iget-object v0, p0, Lb/q/c$b;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V
    .registers 5

    iget-object v0, p0, Lb/q/c$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lb/q/c$b;->a:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p2, p0, Lb/q/c$b;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lb/q/c$b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/graphics/drawable/Drawable;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lb/q/c$b;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class b.q.c.C0123c (b.q.c$c)
.class final Lb/q/c$c;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lb/q/c$k;",
        "Landroid/graphics/PointF;",
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
.method public a(Lb/q/c$k;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lb/q/c$k;Landroid/graphics/PointF;)V
    .registers 3

    invoke-virtual {p1, p2}, Lb/q/c$k;->b(Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lb/q/c$k;

    invoke-virtual {p0, p1}, Lb/q/c$c;->a(Lb/q/c$k;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lb/q/c$k;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lb/q/c$c;->a(Lb/q/c$k;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class b.q.c.d (b.q.c$d)
.class final Lb/q/c$d;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lb/q/c$k;",
        "Landroid/graphics/PointF;",
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
.method public a(Lb/q/c$k;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lb/q/c$k;Landroid/graphics/PointF;)V
    .registers 3

    invoke-virtual {p1, p2}, Lb/q/c$k;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lb/q/c$k;

    invoke-virtual {p0, p1}, Lb/q/c$d;->a(Lb/q/c$k;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lb/q/c$k;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lb/q/c$d;->a(Lb/q/c$k;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class b.q.c.e (b.q.c$e)
.class final Lb/q/c$e;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
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
.method public a(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, v0, v1, v2, p2}, Lb/q/e0;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lb/q/c$e;->a(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lb/q/c$e;->a(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class b.q.c.f (b.q.c$f)
.class final Lb/q/c$f;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
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
.method public a(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-static {p1, v0, p2, v1, v2}, Lb/q/e0;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lb/q/c$f;->a(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lb/q/c$f;->a(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class b.q.c.g (b.q.c$g)
.class final Lb/q/c$g;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/PointF;",
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
.method public a(Landroid/view/View;)Landroid/graphics/PointF;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 6

    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-static {p1, v0, p2, v1, v2}, Lb/q/e0;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lb/q/c$g;->a(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Lb/q/c$g;->a(Landroid/view/View;Landroid/graphics/PointF;)V

    return-void
.end method

###### Class b.q.c.h (b.q.c$h)
.class Lb/q/c$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/c;->createAnimator(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/q/c$k;

.field private mViewBounds:Lb/q/c$k;


# direct methods
.method constructor <init>(Lb/q/c;Lb/q/c$k;)V
    .registers 3

    iput-object p2, p0, Lb/q/c$h;->a:Lb/q/c$k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iget-object p1, p0, Lb/q/c$h;->a:Lb/q/c$k;

    iput-object p1, p0, Lb/q/c$h;->mViewBounds:Lb/q/c$k;

    return-void
.end method

###### Class b.q.c.i (b.q.c$i)
.class Lb/q/c$i;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/c;->createAnimator(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I


# direct methods
.method constructor <init>(Lb/q/c;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .registers 8

    iput-object p2, p0, Lb/q/c$i;->b:Landroid/view/View;

    iput-object p3, p0, Lb/q/c$i;->c:Landroid/graphics/Rect;

    iput p4, p0, Lb/q/c$i;->d:I

    iput p5, p0, Lb/q/c$i;->e:I

    iput p6, p0, Lb/q/c$i;->f:I

    iput p7, p0, Lb/q/c$i;->g:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/q/c$i;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    iget-boolean p1, p0, Lb/q/c$i;->a:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Lb/q/c$i;->b:Landroid/view/View;

    iget-object v0, p0, Lb/q/c$i;->c:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lb/h/o/s;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lb/q/c$i;->b:Landroid/view/View;

    iget v0, p0, Lb/q/c$i;->d:I

    iget v1, p0, Lb/q/c$i;->e:I

    iget v2, p0, Lb/q/c$i;->f:I

    iget v3, p0, Lb/q/c$i;->g:I

    invoke-static {p1, v0, v1, v2, v3}, Lb/q/e0;->a(Landroid/view/View;IIII)V

    :cond_18
    return-void
.end method

###### Class b.q.c.j (b.q.c$j)
.class Lb/q/c$j;
.super Lb/q/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/q/c;->createAnimator(Landroid/view/ViewGroup;Lb/q/t;Lb/q/t;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lb/q/c;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p2, p0, Lb/q/c$j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lb/q/o;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/q/c$j;->a:Z

    return-void
.end method


# virtual methods
.method public b(Lb/q/n;)V
    .registers 3

    iget-object p1, p0, Lb/q/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/q/y;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public c(Lb/q/n;)V
    .registers 4

    iget-boolean v0, p0, Lb/q/c$j;->a:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lb/q/c$j;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/q/y;->a(Landroid/view/ViewGroup;Z)V

    :cond_a
    invoke-virtual {p1, p0}, Lb/q/n;->removeListener(Lb/q/n$g;)Lb/q/n;

    return-void
.end method

.method public d(Lb/q/n;)V
    .registers 3

    iget-object p1, p0, Lb/q/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lb/q/y;->a(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/q/c$j;->a:Z

    return-void
.end method

.method public e(Lb/q/n;)V
    .registers 3

    iget-object p1, p0, Lb/q/c$j;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lb/q/y;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

###### Class b.q.c.k (b.q.c$k)
.class Lb/q/c$k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:I

.field private g:I


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/q/c$k;->e:Landroid/view/View;

    return-void
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Lb/q/c$k;->e:Landroid/view/View;

    iget v1, p0, Lb/q/c$k;->a:I

    iget v2, p0, Lb/q/c$k;->b:I

    iget v3, p0, Lb/q/c$k;->c:I

    iget v4, p0, Lb/q/c$k;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lb/q/e0;->a(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    iput v0, p0, Lb/q/c$k;->f:I

    iput v0, p0, Lb/q/c$k;->g:I

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/PointF;)V
    .registers 3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lb/q/c$k;->c:I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lb/q/c$k;->d:I

    iget p1, p0, Lb/q/c$k;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/q/c$k;->g:I

    iget p1, p0, Lb/q/c$k;->f:I

    iget v0, p0, Lb/q/c$k;->g:I

    if-ne p1, v0, :cond_1f

    invoke-direct {p0}, Lb/q/c$k;->a()V

    :cond_1f
    return-void
.end method

.method b(Landroid/graphics/PointF;)V
    .registers 3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lb/q/c$k;->a:I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lb/q/c$k;->b:I

    iget p1, p0, Lb/q/c$k;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/q/c$k;->f:I

    iget p1, p0, Lb/q/c$k;->f:I

    iget v0, p0, Lb/q/c$k;->g:I

    if-ne p1, v0, :cond_1f

    invoke-direct {p0}, Lb/q/c$k;->a()V

    :cond_1f
    return-void
.end method
