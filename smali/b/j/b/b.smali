###### Class b.j.b.b (b.j.b.b)
.class Lb/j/b/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/j/b/b$b;,
        Lb/j/b/b$a;,
        Lb/j/b/b$c;
    }
.end annotation


# direct methods
.method private static a(II)I
    .registers 3

    mul-int/lit8 v0, p0, 0xd

    mul-int v0, v0, p0

    mul-int p1, p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method public static a(Ljava/lang/Object;Lb/j/b/b$b;Lb/j/b/b$a;Ljava/lang/Object;IZZ)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Lb/j/b/b$b<",
            "T",
            "L;",
            "TT;>;",
            "Lb/j/b/b$a<",
            "TT;>;TT;IZZ)TT;"
        }
    .end annotation

    invoke-interface {p1, p0}, Lb/j/b/b$b;->a(Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_16

    invoke-interface {p1, p0, v2}, Lb/j/b/b$b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    new-instance p0, Lb/j/b/b$c;

    invoke-direct {p0, p5, p2}, Lb/j/b/b$c;-><init>(ZLb/j/b/b$a;)V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x1

    if-eq p4, p0, :cond_31

    const/4 p0, 0x2

    if-ne p4, p0, :cond_29

    invoke-static {p3, v1, p6}, Lb/j/b/b;->a(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    invoke-static {p3, v1, p6}, Lb/j/b/b;->b(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Lb/j/b/b$b;Lb/j/b/b$a;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "Lb/j/b/b$b<",
            "T",
            "L;",
            "TT;>;",
            "Lb/j/b/b$a<",
            "TT;>;TT;",
            "Landroid/graphics/Rect;",
            "I)TT;"
        }
    .end annotation

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p5, v1, :cond_38

    const/16 v1, 0x21

    if-eq p5, v1, :cond_2e

    const/16 v1, 0x42

    if-eq p5, v1, :cond_26

    const/16 v1, 0x82

    if-ne p5, v1, :cond_1e

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    goto :goto_34

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    goto :goto_3e

    :cond_2e
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_34
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_41

    :cond_38
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_3e
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :goto_41
    const/4 v1, 0x0

    invoke-interface {p1, p0}, Lb/j/b/b$b;->a(Ljava/lang/Object;)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :goto_4b
    if-ge v2, v3, :cond_64

    invoke-interface {p1, p0, v2}, Lb/j/b/b$b;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p3, :cond_54

    goto :goto_61

    :cond_54
    invoke-interface {p2, v5, v4}, Lb/j/b/b$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {p5, p4, v4, v0}, Lb/j/b/b;->b(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v1, v5

    :cond_61
    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_64
    return-object v1
.end method

.method private static a(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;Z)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    goto :goto_c

    :cond_8
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_c
    add-int/lit8 p0, p0, 0x1

    if-ge p0, v0, :cond_15

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_15
    if-eqz p2, :cond_1f

    if-lez v0, :cond_1f

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x42

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x82

    if-ne p0, v0, :cond_13

    goto :goto_1b

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    :goto_1b
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p0, v0, :cond_28

    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, p1, :cond_28

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1

    :cond_2a
    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p0, v0, :cond_37

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    return v1
.end method

.method private static a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    invoke-static {p0, p1, p2}, Lb/j/b/b;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    invoke-static {p0, p1, p3}, Lb/j/b/b;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    if-nez v0, :cond_e

    goto :goto_2c

    :cond_e
    invoke-static {p0, p1, p3}, Lb/j/b/b;->b(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    return v1

    :cond_16
    const/16 v0, 0x11

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x42

    if-ne p0, v0, :cond_1f

    goto :goto_2b

    :cond_1f
    invoke-static {p0, p1, p2}, Lb/j/b/b;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p2

    invoke-static {p0, p1, p3}, Lb/j/b/b;->e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    if-ge p2, p0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :cond_2b
    :goto_2b
    return v1

    :cond_2c
    :goto_2c
    return v2
.end method

.method private static a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 6

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_53

    const/16 v0, 0x21

    if-eq p2, v0, :cond_40

    const/16 v0, 0x42

    if-eq p2, v0, :cond_2d

    const/16 v0, 0x82

    if-ne p2, v0, :cond_25

    iget p2, p0, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_1c

    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_23

    :cond_1c
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_37

    iget p2, p0, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_3e

    :cond_37
    iget p0, p0, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    if-ge p0, p1, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    return v1

    :cond_40
    iget p2, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_4a

    iget p2, p0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_51

    :cond_4a
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-le p0, p1, :cond_51

    goto :goto_52

    :cond_51
    const/4 v1, 0x0

    :goto_52
    return v1

    :cond_53
    iget p2, p0, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt p2, v0, :cond_5d

    iget p2, p0, Landroid/graphics/Rect;->left:I

    if-lt p2, v0, :cond_64

    :cond_5d
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-le p0, p1, :cond_64

    goto :goto_65

    :cond_64
    const/4 v1, 0x0

    :goto_65
    return v1
.end method

.method private static b(Ljava/lang/Object;Ljava/util/ArrayList;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/ArrayList<",
            "TT;>;Z)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p0, :cond_8

    move p0, v0

    goto :goto_c

    :cond_8
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_c
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_15

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_15
    if-eqz p2, :cond_20

    if-lez v0, :cond_20

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    const/16 v0, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_35

    const/16 v0, 0x21

    if-eq p0, v0, :cond_2c

    const/16 v0, 0x42

    if-eq p0, v0, :cond_23

    const/16 v0, 0x82

    if-ne p0, v0, :cond_1b

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    if-gt p0, p1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    return v1

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    if-gt p0, p1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1

    :cond_2c
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    if-lt p0, p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    return v1

    :cond_35
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    if-lt p0, p1, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    return v1
.end method

.method private static b(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 7

    invoke-static {p1, p2, p0}, Lb/j/b/b;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {p1, p3, p0}, Lb/j/b/b;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    return v2

    :cond_10
    invoke-static {p0, p1, p2, p3}, Lb/j/b/b;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_17

    return v2

    :cond_17
    invoke-static {p0, p1, p3, p2}, Lb/j/b/b;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1e

    return v1

    :cond_1e
    invoke-static {p0, p1, p2}, Lb/j/b/b;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-static {p0, p1, p2}, Lb/j/b/b;->g(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p2

    invoke-static {v0, p2}, Lb/j/b/b;->a(II)I

    move-result p2

    invoke-static {p0, p1, p3}, Lb/j/b/b;->c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-static {p0, p1, p3}, Lb/j/b/b;->g(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    invoke-static {v0, p0}, Lb/j/b/b;->a(II)I

    move-result p0

    if-ge p2, p0, :cond_39

    const/4 v1, 0x1

    :cond_39
    return v1
.end method

.method private static c(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lb/j/b/b;->d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static d(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    const/16 v0, 0x11

    if-eq p0, v0, :cond_28

    const/16 v0, 0x21

    if-eq p0, v0, :cond_23

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x82

    if-ne p0, v0, :cond_16

    iget p0, p2, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_14
    sub-int/2addr p0, p1

    return p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    iget p0, p2, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_14

    :cond_23
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_14

    :cond_28
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_14
.end method

.method private static e(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    invoke-static {p0, p1, p2}, Lb/j/b/b;->f(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private static f(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    const/16 v0, 0x11

    if-eq p0, v0, :cond_28

    const/16 v0, 0x21

    if-eq p0, v0, :cond_23

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x82

    if-ne p0, v0, :cond_16

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_14
    sub-int/2addr p0, p1

    return p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_14

    :cond_23
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_14

    :cond_28
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p2, Landroid/graphics/Rect;->left:I

    goto :goto_14
.end method

.method private static g(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4

    const/16 v0, 0x11

    if-eq p0, v0, :cond_31

    const/16 v0, 0x21

    if-eq p0, v0, :cond_19

    const/16 v0, 0x42

    if-eq p0, v0, :cond_31

    const/16 v0, 0x82

    if-ne p0, v0, :cond_11

    goto :goto_19

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_19
    iget p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    :goto_28
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0

    :cond_31
    iget p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_28
.end method

###### Class b.j.b.b.a (b.j.b.b$a)
.class public interface abstract Lb/j/b/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method

###### Class b.j.b.b.InterfaceC0112b (b.j.b.b$b)
.class public interface abstract Lb/j/b/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TV;"
        }
    .end annotation
.end method

###### Class b.j.b.b.c (b.j.b.b$c)
.class Lb/j/b/b$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/j/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/Rect;

.field private final d:Z

.field private final e:Lb/j/b/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/j/b/b$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLb/j/b/b$a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lb/j/b/b$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/j/b/b$c;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/j/b/b$c;->c:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lb/j/b/b$c;->d:Z

    iput-object p2, p0, Lb/j/b/b$c;->e:Lb/j/b/b$a;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lb/j/b/b$c;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lb/j/b/b$c;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lb/j/b/b$c;->e:Lb/j/b/b$a;

    invoke-interface {v2, p1, v0}, Lb/j/b/b$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lb/j/b/b$c;->e:Lb/j/b/b$a;

    invoke-interface {p1, p2, v1}, Lb/j/b/b$a;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget p2, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, -0x1

    if-ge p1, p2, :cond_16

    return v2

    :cond_16
    const/4 v3, 0x1

    if-le p1, p2, :cond_1a

    return v3

    :cond_1a
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, p2, :cond_26

    iget-boolean p1, p0, Lb/j/b/b$c;->d:Z

    if-eqz p1, :cond_25

    const/4 v2, 0x1

    :cond_25
    return v2

    :cond_26
    if-le p1, p2, :cond_2f

    iget-boolean p1, p0, Lb/j/b/b$c;->d:Z

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x1

    :goto_2e
    return v2

    :cond_2f
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p1, p2, :cond_36

    return v2

    :cond_36
    if-le p1, p2, :cond_39

    return v3

    :cond_39
    iget p1, v0, Landroid/graphics/Rect;->right:I

    iget p2, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, p2, :cond_45

    iget-boolean p1, p0, Lb/j/b/b$c;->d:Z

    if-eqz p1, :cond_44

    const/4 v2, 0x1

    :cond_44
    return v2

    :cond_45
    if-le p1, p2, :cond_4e

    iget-boolean p1, p0, Lb/j/b/b$c;->d:Z

    if-eqz p1, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x1

    :goto_4d
    return v2

    :cond_4e
    const/4 p1, 0x0

    return p1
.end method
