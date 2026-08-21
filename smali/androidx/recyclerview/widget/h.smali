###### Class androidx.recyclerview.widget.h (androidx.recyclerview.widget.h)
.class public Landroidx/recyclerview/widget/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/h$e;,
        Landroidx/recyclerview/widget/h$c;,
        Landroidx/recyclerview/widget/h$f;,
        Landroidx/recyclerview/widget/h$g;,
        Landroidx/recyclerview/widget/h$d;,
        Landroidx/recyclerview/widget/h$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/recyclerview/widget/h$g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroidx/recyclerview/widget/h$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/h$a;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/h;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/h$b;)Landroidx/recyclerview/widget/h$c;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/h$b;Z)Landroidx/recyclerview/widget/h$c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroidx/recyclerview/widget/h$b;Z)Landroidx/recyclerview/widget/h$c;
    .registers 17

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h$b;->b()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h$b;->a()I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroidx/recyclerview/widget/h$f;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v0, v5, v1}, Landroidx/recyclerview/widget/h$f;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int v3, v0, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v3

    mul-int/lit8 v1, v0, 0x2

    new-array v13, v1, [I

    new-array v1, v1, [I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2e
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_dd

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroidx/recyclerview/widget/h$f;

    iget v6, v14, Landroidx/recyclerview/widget/h$f;->a:I

    iget v7, v14, Landroidx/recyclerview/widget/h$f;->b:I

    iget v8, v14, Landroidx/recyclerview/widget/h$f;->c:I

    iget v9, v14, Landroidx/recyclerview/widget/h$f;->d:I

    move-object v5, p0

    move-object v10, v13

    move-object v11, v1

    move v12, v0

    invoke-static/range {v5 .. v12}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/h$b;IIII[I[II)Landroidx/recyclerview/widget/h$g;

    move-result-object v5

    if-eqz v5, :cond_d8

    iget v6, v5, Landroidx/recyclerview/widget/h$g;->c:I

    if-lez v6, :cond_5a

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5a
    iget v6, v5, Landroidx/recyclerview/widget/h$g;->a:I

    iget v7, v14, Landroidx/recyclerview/widget/h$f;->a:I

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/h$g;->a:I

    iget v6, v5, Landroidx/recyclerview/widget/h$g;->b:I

    iget v7, v14, Landroidx/recyclerview/widget/h$f;->c:I

    add-int/2addr v6, v7

    iput v6, v5, Landroidx/recyclerview/widget/h$g;->b:I

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_74

    new-instance v6, Landroidx/recyclerview/widget/h$f;

    invoke-direct {v6}, Landroidx/recyclerview/widget/h$f;-><init>()V

    goto :goto_80

    :cond_74
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/h$f;

    :goto_80
    iget v7, v14, Landroidx/recyclerview/widget/h$f;->a:I

    iput v7, v6, Landroidx/recyclerview/widget/h$f;->a:I

    iget v7, v14, Landroidx/recyclerview/widget/h$f;->c:I

    iput v7, v6, Landroidx/recyclerview/widget/h$f;->c:I

    iget-boolean v7, v5, Landroidx/recyclerview/widget/h$g;->e:Z

    if-eqz v7, :cond_95

    iget v7, v5, Landroidx/recyclerview/widget/h$g;->a:I

    :goto_8e
    iput v7, v6, Landroidx/recyclerview/widget/h$f;->b:I

    iget v7, v5, Landroidx/recyclerview/widget/h$g;->b:I

    :goto_92
    iput v7, v6, Landroidx/recyclerview/widget/h$f;->d:I

    goto :goto_a7

    :cond_95
    iget-boolean v7, v5, Landroidx/recyclerview/widget/h$g;->d:Z

    if-eqz v7, :cond_9e

    iget v7, v5, Landroidx/recyclerview/widget/h$g;->a:I

    add-int/lit8 v7, v7, -0x1

    goto :goto_8e

    :cond_9e
    iget v7, v5, Landroidx/recyclerview/widget/h$g;->a:I

    iput v7, v6, Landroidx/recyclerview/widget/h$f;->b:I

    iget v7, v5, Landroidx/recyclerview/widget/h$g;->b:I

    add-int/lit8 v7, v7, -0x1

    goto :goto_92

    :goto_a7
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v6, v5, Landroidx/recyclerview/widget/h$g;->e:Z

    if-eqz v6, :cond_c7

    iget-boolean v6, v5, Landroidx/recyclerview/widget/h$g;->d:Z

    if-eqz v6, :cond_ba

    iget v6, v5, Landroidx/recyclerview/widget/h$g;->a:I

    iget v7, v5, Landroidx/recyclerview/widget/h$g;->c:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_cc

    :cond_ba
    iget v6, v5, Landroidx/recyclerview/widget/h$g;->a:I

    iget v7, v5, Landroidx/recyclerview/widget/h$g;->c:I

    add-int/2addr v6, v7

    iput v6, v14, Landroidx/recyclerview/widget/h$f;->a:I

    iget v5, v5, Landroidx/recyclerview/widget/h$g;->b:I

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_d1

    :cond_c7
    iget v6, v5, Landroidx/recyclerview/widget/h$g;->a:I

    iget v7, v5, Landroidx/recyclerview/widget/h$g;->c:I

    add-int/2addr v6, v7

    :goto_cc
    iput v6, v14, Landroidx/recyclerview/widget/h$f;->a:I

    iget v5, v5, Landroidx/recyclerview/widget/h$g;->b:I

    add-int/2addr v5, v7

    :goto_d1
    iput v5, v14, Landroidx/recyclerview/widget/h$f;->c:I

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :cond_d8
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :cond_dd
    sget-object v0, Landroidx/recyclerview/widget/h;->a:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Landroidx/recyclerview/widget/h$c;

    move-object v2, v0

    move-object v3, p0

    move-object v5, v13

    move-object v6, v1

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/recyclerview/widget/h$c;-><init>(Landroidx/recyclerview/widget/h$b;Ljava/util/List;[I[IZ)V

    return-object v0
.end method

.method private static a(Landroidx/recyclerview/widget/h$b;IIII[I[II)Landroidx/recyclerview/widget/h$g;
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    sub-int v3, p2, p1

    sub-int v4, p4, p3

    const/4 v5, 0x1

    if-lt v3, v5, :cond_133

    if-ge v4, v5, :cond_11

    goto/16 :goto_133

    :cond_11
    sub-int v6, v3, v4

    add-int v7, v3, v4

    add-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    sub-int v8, p7, v7

    sub-int/2addr v8, v5

    add-int v9, p7, v7

    add-int/2addr v9, v5

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v8, v6

    add-int/2addr v9, v6

    invoke-static {v2, v8, v9, v3}, Ljava/util/Arrays;->fill([IIII)V

    rem-int/lit8 v8, v6, 0x2

    if-eqz v8, :cond_2d

    const/4 v8, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v8, 0x0

    :goto_2e
    const/4 v9, 0x0

    :goto_2f
    if-gt v9, v7, :cond_12b

    neg-int v11, v9

    move v12, v11

    :goto_33
    if-gt v12, v9, :cond_a2

    if-eq v12, v11, :cond_4d

    if-eq v12, v9, :cond_45

    add-int v13, p7, v12

    add-int/lit8 v14, v13, -0x1

    aget v14, v1, v14

    add-int/2addr v13, v5

    aget v13, v1, v13

    if-ge v14, v13, :cond_45

    goto :goto_4d

    :cond_45
    add-int v13, p7, v12

    sub-int/2addr v13, v5

    aget v13, v1, v13

    add-int/2addr v13, v5

    const/4 v14, 0x1

    goto :goto_53

    :cond_4d
    :goto_4d
    add-int v13, p7, v12

    add-int/2addr v13, v5

    aget v13, v1, v13

    const/4 v14, 0x0

    :goto_53
    sub-int v15, v13, v12

    :goto_55
    if-ge v13, v3, :cond_6a

    if-ge v15, v4, :cond_6a

    add-int v10, p1, v13

    add-int v5, p3, v15

    invoke-virtual {v0, v10, v5}, Landroidx/recyclerview/widget/h$b;->b(II)Z

    move-result v5

    if-eqz v5, :cond_6a

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_55

    :cond_6a
    add-int v5, p7, v12

    aput v13, v1, v5

    if-eqz v8, :cond_9c

    sub-int v10, v6, v9

    const/4 v13, 0x1

    add-int/2addr v10, v13

    if-lt v12, v10, :cond_9c

    add-int v10, v6, v9

    sub-int/2addr v10, v13

    if-gt v12, v10, :cond_9c

    aget v10, v1, v5

    aget v13, v2, v5

    if-lt v10, v13, :cond_9c

    new-instance v0, Landroidx/recyclerview/widget/h$g;

    invoke-direct {v0}, Landroidx/recyclerview/widget/h$g;-><init>()V

    aget v3, v2, v5

    iput v3, v0, Landroidx/recyclerview/widget/h$g;->a:I

    iget v3, v0, Landroidx/recyclerview/widget/h$g;->a:I

    sub-int/2addr v3, v12

    iput v3, v0, Landroidx/recyclerview/widget/h$g;->b:I

    aget v1, v1, v5

    aget v2, v2, v5

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/h$g;->c:I

    iput-boolean v14, v0, Landroidx/recyclerview/widget/h$g;->d:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroidx/recyclerview/widget/h$g;->e:Z

    return-object v0

    :cond_9c
    const/4 v5, 0x0

    add-int/lit8 v12, v12, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_33

    :cond_a2
    const/4 v5, 0x0

    move v10, v11

    :goto_a4
    if-gt v10, v9, :cond_120

    add-int v12, v10, v6

    add-int v13, v9, v6

    if-eq v12, v13, :cond_c6

    add-int v13, v11, v6

    if-eq v12, v13, :cond_bd

    add-int v13, p7, v12

    add-int/lit8 v14, v13, -0x1

    aget v14, v2, v14

    const/4 v15, 0x1

    add-int/2addr v13, v15

    aget v13, v2, v13

    if-ge v14, v13, :cond_be

    goto :goto_c7

    :cond_bd
    const/4 v15, 0x1

    :cond_be
    add-int v13, p7, v12

    add-int/2addr v13, v15

    aget v13, v2, v13

    sub-int/2addr v13, v15

    const/4 v14, 0x1

    goto :goto_cd

    :cond_c6
    const/4 v15, 0x1

    :goto_c7
    add-int v13, p7, v12

    sub-int/2addr v13, v15

    aget v13, v2, v13

    const/4 v14, 0x0

    :goto_cd
    sub-int v16, v13, v12

    :goto_cf
    if-lez v13, :cond_ec

    if-lez v16, :cond_ec

    add-int v17, p1, v13

    add-int/lit8 v5, v17, -0x1

    add-int v17, p3, v16

    move/from16 v18, v3

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v0, v5, v3}, Landroidx/recyclerview/widget/h$b;->b(II)Z

    move-result v3

    if-eqz v3, :cond_ee

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v3, v18

    const/4 v5, 0x0

    const/4 v15, 0x1

    goto :goto_cf

    :cond_ec
    move/from16 v18, v3

    :cond_ee
    add-int v3, p7, v12

    aput v13, v2, v3

    if-nez v8, :cond_119

    if-lt v12, v11, :cond_119

    if-gt v12, v9, :cond_119

    aget v5, v1, v3

    aget v13, v2, v3

    if-lt v5, v13, :cond_119

    new-instance v0, Landroidx/recyclerview/widget/h$g;

    invoke-direct {v0}, Landroidx/recyclerview/widget/h$g;-><init>()V

    aget v4, v2, v3

    iput v4, v0, Landroidx/recyclerview/widget/h$g;->a:I

    iget v4, v0, Landroidx/recyclerview/widget/h$g;->a:I

    sub-int/2addr v4, v12

    iput v4, v0, Landroidx/recyclerview/widget/h$g;->b:I

    aget v1, v1, v3

    aget v2, v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/h$g;->c:I

    iput-boolean v14, v0, Landroidx/recyclerview/widget/h$g;->d:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/recyclerview/widget/h$g;->e:Z

    return-object v0

    :cond_119
    const/4 v3, 0x1

    add-int/lit8 v10, v10, 0x2

    move/from16 v3, v18

    const/4 v5, 0x0

    goto :goto_a4

    :cond_120
    move/from16 v18, v3

    const/4 v3, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v18

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto/16 :goto_2f

    :cond_12b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DiffUtil hit an unexpected case while trying to calculate the optimal path. Please make sure your data is not changing during the diff calculation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_133
    :goto_133
    const/4 v0, 0x0

    return-object v0
.end method

###### Class androidx.recyclerview.widget.h.a (androidx.recyclerview.widget.h$a)
.class final Landroidx/recyclerview/widget/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/h$g;",
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
.method public a(Landroidx/recyclerview/widget/h$g;Landroidx/recyclerview/widget/h$g;)I
    .registers 5

    iget v0, p1, Landroidx/recyclerview/widget/h$g;->a:I

    iget v1, p2, Landroidx/recyclerview/widget/h$g;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_d

    iget p1, p1, Landroidx/recyclerview/widget/h$g;->b:I

    iget p2, p2, Landroidx/recyclerview/widget/h$g;->b:I

    sub-int v0, p1, p2

    :cond_d
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Landroidx/recyclerview/widget/h$g;

    check-cast p2, Landroidx/recyclerview/widget/h$g;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/h$a;->a(Landroidx/recyclerview/widget/h$g;Landroidx/recyclerview/widget/h$g;)I

    move-result p1

    return p1
.end method

###### Class androidx.recyclerview.widget.h.b (androidx.recyclerview.widget.h$b)
.class public abstract Landroidx/recyclerview/widget/h$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(II)Z
.end method

.method public abstract b()I
.end method

.method public abstract b(II)Z
.end method

.method public abstract c(II)Ljava/lang/Object;
.end method

###### Class androidx.recyclerview.widget.h.c (androidx.recyclerview.widget.h$c)
.class public Landroidx/recyclerview/widget/h$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/h$g;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[I

.field private final c:[I

.field private final d:Landroidx/recyclerview/widget/h$b;

.field private final e:I

.field private final f:I

.field private final g:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/h$b;Ljava/util/List;[I[IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h$b;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/h$g;",
            ">;[I[IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/recyclerview/widget/h$c;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/recyclerview/widget/h$c;->b:[I

    iput-object p4, p0, Landroidx/recyclerview/widget/h$c;->c:[I

    iget-object p2, p0, Landroidx/recyclerview/widget/h$c;->b:[I

    const/4 p3, 0x0

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([II)V

    iget-object p2, p0, Landroidx/recyclerview/widget/h$c;->c:[I

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([II)V

    iput-object p1, p0, Landroidx/recyclerview/widget/h$c;->d:Landroidx/recyclerview/widget/h$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h$b;->b()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/h$c;->e:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h$b;->a()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/h$c;->f:I

    iput-boolean p5, p0, Landroidx/recyclerview/widget/h$c;->g:Z

    invoke-direct {p0}, Landroidx/recyclerview/widget/h$c;->a()V

    invoke-direct {p0}, Landroidx/recyclerview/widget/h$c;->b()V

    return-void
.end method

.method private static a(Ljava/util/List;IZ)Landroidx/recyclerview/widget/h$e;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/h$e;",
            ">;IZ)",
            "Landroidx/recyclerview/widget/h$e;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_36

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/h$e;

    iget v3, v2, Landroidx/recyclerview/widget/h$e;->a:I

    if-ne v3, p1, :cond_33

    iget-boolean v3, v2, Landroidx/recyclerview/widget/h$e;->c:Z

    if-ne v3, p2, :cond_33

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_32

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/h$e;

    iget v3, p1, Landroidx/recyclerview/widget/h$e;->b:I

    if-eqz p2, :cond_2b

    const/4 v4, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v4, -0x1

    :goto_2c
    add-int/2addr v3, v4

    iput v3, p1, Landroidx/recyclerview/widget/h$e;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_32
    return-object v2

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method private a()V
    .registers 4

    iget-object v0, p0, Landroidx/recyclerview/widget/h$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_13

    :cond_b
    iget-object v0, p0, Landroidx/recyclerview/widget/h$c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/h$g;

    :goto_13
    if-eqz v0, :cond_1d

    iget v2, v0, Landroidx/recyclerview/widget/h$g;->a:I

    if-nez v2, :cond_1d

    iget v0, v0, Landroidx/recyclerview/widget/h$g;->b:I

    if-eqz v0, :cond_31

    :cond_1d
    new-instance v0, Landroidx/recyclerview/widget/h$g;

    invoke-direct {v0}, Landroidx/recyclerview/widget/h$g;-><init>()V

    iput v1, v0, Landroidx/recyclerview/widget/h$g;->a:I

    iput v1, v0, Landroidx/recyclerview/widget/h$g;->b:I

    iput-boolean v1, v0, Landroidx/recyclerview/widget/h$g;->d:Z

    iput v1, v0, Landroidx/recyclerview/widget/h$g;->c:I

    iput-boolean v1, v0, Landroidx/recyclerview/widget/h$g;->e:Z

    iget-object v2, p0, Landroidx/recyclerview/widget/h$c;->a:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_31
    return-void
.end method

.method private a(III)V
    .registers 6

    iget-object v0, p0, Landroidx/recyclerview/widget/h$c;->b:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/h$c;->a(IIIZ)Z

    return-void
.end method

.method private a(Ljava/util/List;Landroidx/recyclerview/widget/p;III)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/h$e;",
            ">;",
            "Landroidx/recyclerview/widget/p;",
            "III)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/recyclerview/widget/h$c;->g:Z

    if-nez v0, :cond_8

    invoke-interface {p2, p3, p4}, Landroidx/recyclerview/widget/p;->b(II)V

    return-void

    :cond_8
    const/4 v0, 0x1

    sub-int/2addr p4, v0

    :goto_a
    if-ltz p4, :cond_86

    iget-object v1, p0, Landroidx/recyclerview/widget/h$c;->c:[I

    add-int v2, p5, p4

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    if-eqz v1, :cond_6a

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4f

    const/16 v4, 0x8

    if-eq v1, v4, :cond_4f

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2b

    new-instance v1, Landroidx/recyclerview/widget/h$e;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p3, v3}, Landroidx/recyclerview/widget/h$e;-><init>(IIZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_83

    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown flag for pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p3, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    iget-object v4, p0, Landroidx/recyclerview/widget/h$c;->c:[I

    aget v4, v4, v2

    shr-int/lit8 v4, v4, 0x5

    invoke-static {p1, v4, v0}, Landroidx/recyclerview/widget/h$c;->a(Ljava/util/List;IZ)Landroidx/recyclerview/widget/h$e;

    move-result-object v5

    iget v5, v5, Landroidx/recyclerview/widget/h$e;->b:I

    invoke-interface {p2, v5, p3}, Landroidx/recyclerview/widget/p;->a(II)V

    if-ne v1, v3, :cond_83

    iget-object v1, p0, Landroidx/recyclerview/widget/h$c;->d:Landroidx/recyclerview/widget/h$b;

    invoke-virtual {v1, v4, v2}, Landroidx/recyclerview/widget/h$b;->c(II)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p3, v0, v1}, Landroidx/recyclerview/widget/p;->a(IILjava/lang/Object;)V

    goto :goto_83

    :cond_6a
    invoke-interface {p2, p3, v0}, Landroidx/recyclerview/widget/p;->b(II)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/h$e;

    iget v3, v2, Landroidx/recyclerview/widget/h$e;->b:I

    add-int/2addr v3, v0

    iput v3, v2, Landroidx/recyclerview/widget/h$e;->b:I

    goto :goto_71

    :cond_83
    :goto_83
    add-int/lit8 p4, p4, -0x1

    goto :goto_a

    :cond_86
    return-void
.end method

.method private a(IIIZ)Z
    .registers 13

    if-eqz p4, :cond_7

    add-int/lit8 p2, p2, -0x1

    move v0, p1

    move v1, p2

    goto :goto_a

    :cond_7
    add-int/lit8 v0, p1, -0x1

    move v1, v0

    :goto_a
    if-ltz p3, :cond_7a

    iget-object v2, p0, Landroidx/recyclerview/widget/h$c;->a:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/h$g;

    iget v3, v2, Landroidx/recyclerview/widget/h$g;->a:I

    iget v4, v2, Landroidx/recyclerview/widget/h$g;->c:I

    add-int/2addr v3, v4

    iget v5, v2, Landroidx/recyclerview/widget/h$g;->b:I

    add-int/2addr v5, v4

    const/16 v4, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eqz p4, :cond_4a

    sub-int/2addr v0, v7

    :goto_23
    if-lt v0, v3, :cond_73

    iget-object p2, p0, Landroidx/recyclerview/widget/h$c;->d:Landroidx/recyclerview/widget/h$b;

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/h$b;->b(II)Z

    move-result p2

    if-eqz p2, :cond_47

    iget-object p1, p0, Landroidx/recyclerview/widget/h$c;->d:Landroidx/recyclerview/widget/h$b;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/h$b;->a(II)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v4, 0x4

    :goto_37
    iget-object p1, p0, Landroidx/recyclerview/widget/h$c;->c:[I

    shl-int/lit8 p2, v0, 0x5

    or-int/lit8 p2, p2, 0x10

    aput p2, p1, v1

    iget-object p1, p0, Landroidx/recyclerview/widget/h$c;->b:[I

    shl-int/lit8 p2, v1, 0x5

    or-int/2addr p2, v4

    aput p2, p1, v0

    return v7

    :cond_47
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_4a
    sub-int/2addr p2, v7

    :goto_4b
    if-lt p2, v5, :cond_73

    iget-object v0, p0, Landroidx/recyclerview/widget/h$c;->d:Landroidx/recyclerview/widget/h$b;

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/h$b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object p3, p0, Landroidx/recyclerview/widget/h$c;->d:Landroidx/recyclerview/widget/h$b;

    invoke-virtual {p3, v1, p2}, Landroidx/recyclerview/widget/h$b;->a(II)Z

    move-result p3

    if-eqz p3, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v4, 0x4

    :goto_5f
    iget-object p3, p0, Landroidx/recyclerview/widget/h$c;->b:[I

    sub-int/2addr p1, v7

    shl-int/lit8 p4, p2, 0x5

    or-int/lit8 p4, p4, 0x10

    aput p4, p3, p1

    iget-object p3, p0, Landroidx/recyclerview/widget/h$c;->c:[I

    shl-int/lit8 p1, p1, 0x5

    or-int/2addr p1, v4

    aput p1, p3, p2

    return v7

    :cond_70
    add-int/lit8 p2, p2, -0x1

    goto :goto_4b

    :cond_73
    iget v0, v2, Landroidx/recyclerview/widget/h$g;->a:I

    iget p2, v2, Landroidx/recyclerview/widget/h$g;->b:I

    add-int/lit8 p3, p3, -0x1

    goto :goto_a

    :cond_7a
    const/4 p1, 0x0

    return p1
.end method

.method private b()V
    .registers 10

    iget v0, p0, Landroidx/recyclerview/widget/h$c;->e:I

    iget v1, p0, Landroidx/recyclerview/widget/h$c;->f:I

    iget-object v2, p0, Landroidx/recyclerview/widget/h$c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_c
    if-ltz v2, :cond_60

    iget-object v4, p0, Landroidx/recyclerview/widget/h$c;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/h$g;

    iget v5, v4, Landroidx/recyclerview/widget/h$g;->a:I

    iget v6, v4, Landroidx/recyclerview/widget/h$g;->c:I

    add-int/2addr v5, v6

    iget v7, v4, Landroidx/recyclerview/widget/h$g;->b:I

    add-int/2addr v7, v6

    iget-boolean v6, p0, Landroidx/recyclerview/widget/h$c;->g:Z

    if-eqz v6, :cond_32

    :goto_22
    if-le v0, v5, :cond_2a

    invoke-direct {p0, v0, v1, v2}, Landroidx/recyclerview/widget/h$c;->a(III)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_2a
    :goto_2a
    if-le v1, v7, :cond_32

    invoke-direct {p0, v0, v1, v2}, Landroidx/recyclerview/widget/h$c;->b(III)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iget v1, v4, Landroidx/recyclerview/widget/h$g;->c:I

    if-ge v0, v1, :cond_59

    iget v1, v4, Landroidx/recyclerview/widget/h$g;->a:I

    add-int/2addr v1, v0

    iget v5, v4, Landroidx/recyclerview/widget/h$g;->b:I

    add-int/2addr v5, v0

    iget-object v6, p0, Landroidx/recyclerview/widget/h$c;->d:Landroidx/recyclerview/widget/h$b;

    invoke-virtual {v6, v1, v5}, Landroidx/recyclerview/widget/h$b;->a(II)Z

    move-result v6

    if-eqz v6, :cond_47

    const/4 v6, 0x1

    goto :goto_48

    :cond_47
    const/4 v6, 0x2

    :goto_48
    iget-object v7, p0, Landroidx/recyclerview/widget/h$c;->b:[I

    shl-int/lit8 v8, v5, 0x5

    or-int/2addr v8, v6

    aput v8, v7, v1

    iget-object v7, p0, Landroidx/recyclerview/widget/h$c;->c:[I

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, v6

    aput v1, v7, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_59
    iget v0, v4, Landroidx/recyclerview/widget/h$g;->a:I

    iget v1, v4, Landroidx/recyclerview/widget/h$g;->b:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    :cond_60
    return-void
.end method

.method private b(III)V
    .registers 6

    iget-object v0, p0, Landroidx/recyclerview/widget/h$c;->c:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/h$c;->a(IIIZ)Z

    return-void
.end method

.method private b(Ljava/util/List;Landroidx/recyclerview/widget/p;III)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/h$e;",
            ">;",
            "Landroidx/recyclerview/widget/p;",
            "III)V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/recyclerview/widget/h$c;->g:Z

    if-nez v0, :cond_8

    invoke-interface {p2, p3, p4}, Landroidx/recyclerview/widget/p;->c(II)V

    return-void

    :cond_8
    const/4 v0, 0x1

    sub-int/2addr p4, v0

    :goto_a
    if-ltz p4, :cond_91

    iget-object v1, p0, Landroidx/recyclerview/widget/h$c;->b:[I

    add-int v2, p5, p4

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1f

    if-eqz v1, :cond_72

    const/4 v3, 0x4

    if-eq v1, v3, :cond_50

    const/16 v4, 0x8

    if-eq v1, v4, :cond_50

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2c

    new-instance v1, Landroidx/recyclerview/widget/h$e;

    add-int v3, p3, p4

    invoke-direct {v1, v2, v3, v0}, Landroidx/recyclerview/widget/h$e;-><init>(IIZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unknown flag for pos "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long p3, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    iget-object v4, p0, Landroidx/recyclerview/widget/h$c;->b:[I

    aget v4, v4, v2

    shr-int/lit8 v4, v4, 0x5

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroidx/recyclerview/widget/h$c;->a(Ljava/util/List;IZ)Landroidx/recyclerview/widget/h$e;

    move-result-object v5

    add-int v6, p3, p4

    iget v7, v5, Landroidx/recyclerview/widget/h$e;->b:I

    sub-int/2addr v7, v0

    invoke-interface {p2, v6, v7}, Landroidx/recyclerview/widget/p;->a(II)V

    if-ne v1, v3, :cond_8d

    iget v1, v5, Landroidx/recyclerview/widget/h$e;->b:I

    sub-int/2addr v1, v0

    iget-object v3, p0, Landroidx/recyclerview/widget/h$c;->d:Landroidx/recyclerview/widget/h$b;

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/h$b;->c(II)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v0, v2}, Landroidx/recyclerview/widget/p;->a(IILjava/lang/Object;)V

    goto :goto_8d

    :cond_72
    add-int v1, p3, p4

    invoke-interface {p2, v1, v0}, Landroidx/recyclerview/widget/p;->c(II)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/h$e;

    iget v3, v2, Landroidx/recyclerview/widget/h$e;->b:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroidx/recyclerview/widget/h$e;->b:I

    goto :goto_7b

    :cond_8d
    :goto_8d
    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_a

    :cond_91
    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/p;)V
    .registers 16

    instance-of v0, p1, Landroidx/recyclerview/widget/e;

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/recyclerview/widget/e;

    goto :goto_d

    :cond_7
    new-instance v0, Landroidx/recyclerview/widget/e;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/e;-><init>(Landroidx/recyclerview/widget/p;)V

    move-object p1, v0

    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Landroidx/recyclerview/widget/h$c;->e:I

    iget v2, p0, Landroidx/recyclerview/widget/h$c;->f:I

    iget-object v3, p0, Landroidx/recyclerview/widget/h$c;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    move v9, v2

    move v8, v3

    :goto_20
    if-ltz v8, :cond_77

    iget-object v2, p0, Landroidx/recyclerview/widget/h$c;->a:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroidx/recyclerview/widget/h$g;

    iget v11, v10, Landroidx/recyclerview/widget/h$g;->c:I

    iget v2, v10, Landroidx/recyclerview/widget/h$g;->a:I

    add-int v12, v2, v11

    iget v2, v10, Landroidx/recyclerview/widget/h$g;->b:I

    add-int v13, v2, v11

    if-ge v12, v1, :cond_41

    sub-int v5, v1, v12

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, v12

    move v6, v12

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/h$c;->b(Ljava/util/List;Landroidx/recyclerview/widget/p;III)V

    :cond_41
    if-ge v13, v9, :cond_4d

    sub-int v5, v9, v13

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, v12

    move v6, v13

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/h$c;->a(Ljava/util/List;Landroidx/recyclerview/widget/p;III)V

    :cond_4d
    add-int/lit8 v11, v11, -0x1

    :goto_4f
    if-ltz v11, :cond_70

    iget-object v1, p0, Landroidx/recyclerview/widget/h$c;->b:[I

    iget v2, v10, Landroidx/recyclerview/widget/h$g;->a:I

    add-int v3, v2, v11

    aget v1, v1, v3

    and-int/lit8 v1, v1, 0x1f

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6d

    add-int v1, v2, v11

    iget-object v3, p0, Landroidx/recyclerview/widget/h$c;->d:Landroidx/recyclerview/widget/h$b;

    add-int/2addr v2, v11

    iget v4, v10, Landroidx/recyclerview/widget/h$g;->b:I

    add-int/2addr v4, v11

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/h$b;->c(II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v7, v2}, Landroidx/recyclerview/widget/e;->a(IILjava/lang/Object;)V

    :cond_6d
    add-int/lit8 v11, v11, -0x1

    goto :goto_4f

    :cond_70
    iget v1, v10, Landroidx/recyclerview/widget/h$g;->a:I

    iget v9, v10, Landroidx/recyclerview/widget/h$g;->b:I

    add-int/lit8 v8, v8, -0x1

    goto :goto_20

    :cond_77
    invoke-virtual {p1}, Landroidx/recyclerview/widget/e;->a()V

    return-void
.end method

###### Class androidx.recyclerview.widget.h.d (androidx.recyclerview.widget.h$d)
.class public abstract Landroidx/recyclerview/widget/h$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

###### Class androidx.recyclerview.widget.h.e (androidx.recyclerview.widget.h$e)
.class Landroidx/recyclerview/widget/h$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/recyclerview/widget/h$e;->a:I

    iput p2, p0, Landroidx/recyclerview/widget/h$e;->b:I

    iput-boolean p3, p0, Landroidx/recyclerview/widget/h$e;->c:Z

    return-void
.end method

###### Class androidx.recyclerview.widget.h.f (androidx.recyclerview.widget.h$f)
.class Landroidx/recyclerview/widget/h$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/recyclerview/widget/h$f;->a:I

    iput p2, p0, Landroidx/recyclerview/widget/h$f;->b:I

    iput p3, p0, Landroidx/recyclerview/widget/h$f;->c:I

    iput p4, p0, Landroidx/recyclerview/widget/h$f;->d:I

    return-void
.end method

###### Class androidx.recyclerview.widget.h.g (androidx.recyclerview.widget.h$g)
.class Landroidx/recyclerview/widget/h$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Z

.field e:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
