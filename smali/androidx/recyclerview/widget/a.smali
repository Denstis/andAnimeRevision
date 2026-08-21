###### Class androidx.recyclerview.widget.a (androidx.recyclerview.widget.a)
.class Landroidx/recyclerview/widget/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/a$a;,
        Landroidx/recyclerview/widget/a$b;
    }
.end annotation


# instance fields
.field private a:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroidx/recyclerview/widget/a$a;

.field e:Ljava/lang/Runnable;

.field final f:Z

.field final g:Landroidx/recyclerview/widget/q;

.field private h:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/a$a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/a;-><init>(Landroidx/recyclerview/widget/a$a;Z)V

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/a$a;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/h/n/e;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lb/h/n/e;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lb/h/n/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/a;->h:I

    iput-object p1, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iput-boolean p2, p0, Landroidx/recyclerview/widget/a;->f:Z

    new-instance p1, Landroidx/recyclerview/widget/q;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/q;-><init>(Landroidx/recyclerview/widget/q$a;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/a;->g:Landroidx/recyclerview/widget/q;

    return-void
.end method

.method private b(Landroidx/recyclerview/widget/a$b;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    return-void
.end method

.method private c(Landroidx/recyclerview/widget/a$b;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    return-void
.end method

.method private d(II)I
    .registers 10

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/16 v2, 0x8

    if-ltz v0, :cond_84

    iget-object v3, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a$b;

    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_65

    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v4, v3, Landroidx/recyclerview/widget/a$b;->d:I

    if-ge v2, v4, :cond_20

    goto :goto_23

    :cond_20
    move v6, v4

    move v4, v2

    move v2, v6

    :goto_23
    if-lt p1, v2, :cond_4b

    if-gt p1, v4, :cond_4b

    iget v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v2, v4, :cond_3c

    if-ne p2, v1, :cond_33

    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v2, v1

    :goto_30
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_39

    :cond_33
    if-ne p2, v5, :cond_39

    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v2, v1

    goto :goto_30

    :cond_39
    :goto_39
    add-int/lit8 p1, p1, 0x1

    goto :goto_81

    :cond_3c
    if-ne p2, v1, :cond_43

    add-int/lit8 v4, v4, 0x1

    :goto_40
    iput v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_48

    :cond_43
    if-ne p2, v5, :cond_48

    add-int/lit8 v4, v4, -0x1

    goto :goto_40

    :cond_48
    :goto_48
    add-int/lit8 p1, p1, -0x1

    goto :goto_81

    :cond_4b
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge p1, v2, :cond_81

    if-ne p2, v1, :cond_5b

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v2, v1

    :goto_58
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_81

    :cond_5b
    if-ne p2, v5, :cond_81

    add-int/lit8 v2, v2, -0x1

    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v2, v1

    goto :goto_58

    :cond_65
    iget v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v2, p1, :cond_75

    if-ne v4, v1, :cond_6f

    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr p1, v2

    goto :goto_81

    :cond_6f
    if-ne v4, v5, :cond_81

    iget v2, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr p1, v2

    goto :goto_81

    :cond_75
    if-ne p2, v1, :cond_7c

    add-int/lit8 v2, v2, 0x1

    :goto_79
    iput v2, v3, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_81

    :cond_7c
    if-ne p2, v5, :cond_81

    add-int/lit8 v2, v2, -0x1

    goto :goto_79

    :cond_81
    :goto_81
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_84
    iget-object p2, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_8b
    if-ltz p2, :cond_b1

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    iget v1, v0, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v1, v2, :cond_a2

    iget v1, v0, Landroidx/recyclerview/widget/a$b;->d:I

    iget v3, v0, Landroidx/recyclerview/widget/a$b;->b:I

    if-eq v1, v3, :cond_a6

    if-gez v1, :cond_ae

    goto :goto_a6

    :cond_a2
    iget v1, v0, Landroidx/recyclerview/widget/a$b;->d:I

    if-gtz v1, :cond_ae

    :cond_a6
    :goto_a6
    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    :cond_ae
    add-int/lit8 p2, p2, -0x1

    goto :goto_8b

    :cond_b1
    return p1
.end method

.method private d(Landroidx/recyclerview/widget/a$b;)V
    .registers 12

    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v1, v0

    :goto_b
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v1, v3, :cond_45

    iget-object v8, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v8, v1}, Landroidx/recyclerview/widget/a$a;->a(I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_2d

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/a;->d(I)Z

    move-result v8

    if-eqz v8, :cond_1f

    goto :goto_2d

    :cond_1f
    if-ne v5, v9, :cond_2a

    invoke-virtual {p0, v7, v0, v4, v6}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v5

    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    :goto_2b
    const/4 v6, 0x0

    goto :goto_3a

    :cond_2d
    :goto_2d
    if-nez v5, :cond_38

    invoke-virtual {p0, v7, v0, v4, v6}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v5

    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/a;->f(Landroidx/recyclerview/widget/a$b;)V

    const/4 v5, 0x1

    goto :goto_39

    :cond_38
    const/4 v5, 0x0

    :goto_39
    const/4 v6, 0x1

    :goto_3a
    if-eqz v5, :cond_40

    sub-int/2addr v1, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    goto :goto_42

    :cond_40
    add-int/lit8 v4, v4, 0x1

    :goto_42
    add-int/2addr v1, v9

    move v5, v6

    goto :goto_b

    :cond_45
    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v4, v1, :cond_50

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    invoke-virtual {p0, v7, v0, v4, v6}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    :cond_50
    if-nez v5, :cond_56

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->f(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_59

    :cond_56
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    :goto_59
    return-void
.end method

.method private d(I)Z
    .registers 9

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_3c

    iget-object v3, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a$b;

    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_24

    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/a;->a(II)I

    move-result v3

    if-ne v3, p1, :cond_39

    return v6

    :cond_24
    if-ne v4, v6, :cond_39

    iget v4, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v3, v4

    :goto_2b
    if-ge v4, v3, :cond_39

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/a;->a(II)I

    move-result v5

    if-ne v5, p1, :cond_36

    return v6

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3c
    return v1
.end method

.method private e(Landroidx/recyclerview/widget/a$b;)V
    .registers 11

    iget v0, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v0

    const/4 v3, 0x0

    const/4 v5, -0x1

    :goto_a
    const/4 v6, 0x4

    if-ge v0, v1, :cond_3e

    iget-object v7, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v7, v0}, Landroidx/recyclerview/widget/a$a;->a(I)Landroidx/recyclerview/widget/RecyclerView$d0;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2c

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/a;->d(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_2c

    :cond_1d
    if-ne v5, v8, :cond_2a

    iget-object v5, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v3, v5}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    move v4, v0

    const/4 v3, 0x0

    :cond_2a
    const/4 v5, 0x0

    goto :goto_3a

    :cond_2c
    :goto_2c
    if-nez v5, :cond_39

    iget-object v5, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v3, v5}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v3

    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/a;->f(Landroidx/recyclerview/widget/a$b;)V

    move v4, v0

    const/4 v3, 0x0

    :cond_39
    const/4 v5, 0x1

    :goto_3a
    add-int/2addr v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_3e
    iget v0, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v3, v0, :cond_4b

    iget-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    invoke-virtual {p0, v6, v4, v3, v0}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    :cond_4b
    if-nez v5, :cond_51

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->f(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_54

    :cond_51
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/a;->g(Landroidx/recyclerview/widget/a$b;)V

    :goto_54
    return-void
.end method

.method private f(Landroidx/recyclerview/widget/a$b;)V
    .registers 14

    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_89

    const/16 v2, 0x8

    if-eq v0, v2, :cond_89

    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    invoke-direct {p0, v2, v0}, Landroidx/recyclerview/widget/a;->d(II)I

    move-result v0

    iget v2, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_33

    if-ne v3, v5, :cond_1c

    const/4 v3, 0x1

    goto :goto_34

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "op should be remove or update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    const/4 v3, 0x0

    :goto_34
    move v7, v0

    move v8, v2

    const/4 v0, 0x1

    const/4 v2, 0x1

    :goto_38
    iget v9, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-ge v0, v9, :cond_75

    iget v9, p1, Landroidx/recyclerview/widget/a$b;->b:I

    mul-int v10, v3, v0

    add-int/2addr v9, v10

    iget v10, p1, Landroidx/recyclerview/widget/a$b;->a:I

    invoke-direct {p0, v9, v10}, Landroidx/recyclerview/widget/a;->d(II)I

    move-result v9

    iget v10, p1, Landroidx/recyclerview/widget/a$b;->a:I

    if-eq v10, v4, :cond_55

    if-eq v10, v5, :cond_4f

    :cond_4d
    const/4 v10, 0x0

    goto :goto_58

    :cond_4f
    add-int/lit8 v10, v7, 0x1

    if-ne v9, v10, :cond_4d

    :goto_53
    const/4 v10, 0x1

    goto :goto_58

    :cond_55
    if-ne v9, v7, :cond_4d

    goto :goto_53

    :goto_58
    if-eqz v10, :cond_5d

    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    :cond_5d
    iget v10, p1, Landroidx/recyclerview/widget/a$b;->a:I

    iget-object v11, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v10, v7, v2, v11}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v7

    invoke-virtual {p0, v7, v8}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;I)V

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    iget v7, p1, Landroidx/recyclerview/widget/a$b;->a:I

    if-ne v7, v5, :cond_70

    add-int/2addr v8, v2

    :cond_70
    move v7, v9

    const/4 v2, 0x1

    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_75
    iget-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    if-lez v2, :cond_88

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->a:I

    invoke-virtual {p0, p1, v7, v2, v0}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    invoke-virtual {p0, p1, v8}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    :cond_88
    return-void

    :cond_89
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "should not dispatch add or move for pre layout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_92

    :goto_91
    throw p1

    :goto_92
    goto :goto_91
.end method

.method private g(Landroidx/recyclerview/widget/a$b;)V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/a$a;->a(II)V

    goto :goto_54

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown update op type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p1, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Landroidx/recyclerview/widget/a$a;->a(IILjava/lang/Object;)V

    goto :goto_54

    :cond_41
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/a$a;->b(II)V

    goto :goto_54

    :cond_4b
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->b:I

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, v1, p1}, Landroidx/recyclerview/widget/a$a;->c(II)V

    :goto_54
    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 7

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_47

    iget-object v2, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/a$b;

    iget v3, v2, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e

    goto :goto_44

    :cond_1e
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v3, p1, :cond_25

    iget p1, v2, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_44

    :cond_25
    if-ge v3, p1, :cond_29

    add-int/lit8 p1, p1, -0x1

    :cond_29
    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I

    if-gt v2, p1, :cond_44

    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    :cond_30
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v3, p1, :cond_44

    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v3, v2

    if-le v3, p1, :cond_3b

    const/4 p1, -0x1

    return p1

    :cond_3b
    sub-int/2addr p1, v2

    goto :goto_44

    :cond_3d
    iget v3, v2, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v3, p1, :cond_44

    iget v2, v2, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr p1, v2

    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_47
    return p1
.end method

.method a(II)I
    .registers 8

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge p2, v0, :cond_41

    iget-object v1, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/a$b;

    iget v2, v1, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_28

    iget v2, v1, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v2, p1, :cond_1d

    iget p1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    goto :goto_3e

    :cond_1d
    if-ge v2, p1, :cond_21

    add-int/lit8 p1, p1, -0x1

    :cond_21
    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    if-gt v1, p1, :cond_3e

    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    :cond_28
    iget v3, v1, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v3, p1, :cond_3e

    const/4 v4, 0x2

    if-ne v2, v4, :cond_38

    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_36

    const/4 p1, -0x1

    return p1

    :cond_36
    sub-int/2addr p1, v1

    goto :goto_3e

    :cond_38
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    iget v1, v1, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr p1, v1

    :cond_3e
    :goto_3e
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_41
    return p1
.end method

.method public a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
    .registers 6

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lb/h/n/d;

    invoke-interface {v0}, Lb/h/n/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/a$b;

    if-nez v0, :cond_10

    new-instance v0, Landroidx/recyclerview/widget/a$b;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/a$b;-><init>(IIILjava/lang/Object;)V

    goto :goto_18

    :cond_10
    iput p1, v0, Landroidx/recyclerview/widget/a$b;->a:I

    iput p2, v0, Landroidx/recyclerview/widget/a$b;->b:I

    iput p3, v0, Landroidx/recyclerview/widget/a$b;->d:I

    iput-object p4, v0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    :goto_18
    return-object v0
.end method

.method a()V
    .registers 6

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_1a

    iget-object v3, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget-object v4, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/a$b;

    invoke-interface {v3, v4}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/util/List;)V

    iput v1, p0, Landroidx/recyclerview/widget/a;->h:I

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/a$b;)V
    .registers 3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/a;->f:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->a:Lb/h/n/d;

    invoke-interface {v0, p1}, Lb/h/n/d;->a(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method a(Landroidx/recyclerview/widget/a$b;I)V
    .registers 5

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/a$a;->a(Landroidx/recyclerview/widget/a$b;)V

    iget v0, p1, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, v1, p1}, Landroidx/recyclerview/widget/a$a;->a(IILjava/lang/Object;)V

    goto :goto_26

    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget p1, p1, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v0, p2, p1}, Landroidx/recyclerview/widget/a$a;->d(II)V

    :goto_26
    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/a$b;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/a;->a(Landroidx/recyclerview/widget/a$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(III)Z
    .registers 8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p3, v1, :cond_22

    iget-object p3, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1, p2, v2}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/recyclerview/widget/a;->h:I

    or-int/2addr p1, v3

    iput p1, p0, Landroidx/recyclerview/widget/a;->h:I

    iget-object p1, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    return v0

    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Moving more than 1 item is not supported yet"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(IILjava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    return v0

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/recyclerview/widget/a;->h:I

    or-int/2addr p1, v3

    iput p1, p0, Landroidx/recyclerview/widget/a;->h:I

    iget-object p1, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method b(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/a;->a(II)I

    move-result p1

    return p1
.end method

.method b()V
    .registers 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/a;->a()V

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_6c

    iget-object v3, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a$b;

    iget v4, v3, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_54

    const/4 v5, 0x2

    if-eq v4, v5, :cond_45

    const/4 v5, 0x4

    if-eq v4, v5, :cond_34

    const/16 v5, 0x8

    if-eq v4, v5, :cond_25

    goto :goto_62

    :cond_25
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/a$a;->a(II)V

    goto :goto_62

    :cond_34
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v6, v3, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object v3, v3, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Landroidx/recyclerview/widget/a$a;->a(IILjava/lang/Object;)V

    goto :goto_62

    :cond_45
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/a$a;->d(II)V

    goto :goto_62

    :cond_54
    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    invoke-interface {v4, v3}, Landroidx/recyclerview/widget/a$a;->b(Landroidx/recyclerview/widget/a$b;)V

    iget-object v4, p0, Landroidx/recyclerview/widget/a;->d:Landroidx/recyclerview/widget/a$a;

    iget v5, v3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, v3, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/a$a;->c(II)V

    :goto_62
    iget-object v3, p0, Landroidx/recyclerview/widget/a;->e:Ljava/lang/Runnable;

    if-eqz v3, :cond_69

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_6c
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/util/List;)V

    iput v1, p0, Landroidx/recyclerview/widget/a;->h:I

    return-void
.end method

.method b(II)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    return v0

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/recyclerview/widget/a;->h:I

    or-int/2addr p1, v1

    iput p1, p0, Landroidx/recyclerview/widget/a;->h:I

    iget-object p1, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    return v0
.end method

.method c()Z
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method c(I)Z
    .registers 3

    iget v0, p0, Landroidx/recyclerview/widget/a;->h:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method c(II)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    return v0

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Landroidx/recyclerview/widget/a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/recyclerview/widget/a;->h:I

    or-int/2addr p1, v4

    iput p1, p0, Landroidx/recyclerview/widget/a;->h:I

    iget-object p1, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method d()Z
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method e()V
    .registers 6

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->g:Landroidx/recyclerview/widget/q;

    iget-object v1, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/q;->a(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_41

    iget-object v2, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/a$b;

    iget v3, v2, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_34

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x8

    if-eq v3, v4, :cond_28

    goto :goto_37

    :cond_28
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/a;->c(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_37

    :cond_2c
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/a;->e(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_37

    :cond_30
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/a;->d(Landroidx/recyclerview/widget/a$b;)V

    goto :goto_37

    :cond_34
    invoke-direct {p0, v2}, Landroidx/recyclerview/widget/a;->b(Landroidx/recyclerview/widget/a$b;)V

    :goto_37
    iget-object v2, p0, Landroidx/recyclerview/widget/a;->e:Ljava/lang/Runnable;

    if-eqz v2, :cond_3e

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_41
    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method f()V
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/a;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/a;->h:I

    return-void
.end method

###### Class androidx.recyclerview.widget.a.InterfaceC0022a (androidx.recyclerview.widget.a$a)
.class interface abstract Landroidx/recyclerview/widget/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(I)Landroidx/recyclerview/widget/RecyclerView$d0;
.end method

.method public abstract a(II)V
.end method

.method public abstract a(IILjava/lang/Object;)V
.end method

.method public abstract a(Landroidx/recyclerview/widget/a$b;)V
.end method

.method public abstract b(II)V
.end method

.method public abstract b(Landroidx/recyclerview/widget/a$b;)V
.end method

.method public abstract c(II)V
.end method

.method public abstract d(II)V
.end method

###### Class androidx.recyclerview.widget.a.b (androidx.recyclerview.widget.a$b)
.class Landroidx/recyclerview/widget/a$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/Object;

.field d:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/recyclerview/widget/a$b;->a:I

    iput p2, p0, Landroidx/recyclerview/widget/a$b;->b:I

    iput p3, p0, Landroidx/recyclerview/widget/a$b;->d:I

    iput-object p4, p0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    const-string v0, "??"

    return-object v0

    :cond_12
    const-string v0, "mv"

    return-object v0

    :cond_15
    const-string v0, "up"

    return-object v0

    :cond_18
    const-string v0, "rm"

    return-object v0

    :cond_1b
    const-string v0, "add"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_54

    const-class v2, Landroidx/recyclerview/widget/a$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_54

    :cond_10
    check-cast p1, Landroidx/recyclerview/widget/a$b;

    iget v2, p0, Landroidx/recyclerview/widget/a$b;->a:I

    iget v3, p1, Landroidx/recyclerview/widget/a$b;->a:I

    if-eq v2, v3, :cond_19

    return v1

    :cond_19
    const/16 v3, 0x8

    if-ne v2, v3, :cond_35

    iget v2, p0, Landroidx/recyclerview/widget/a$b;->d:I

    iget v3, p0, Landroidx/recyclerview/widget/a$b;->b:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ne v2, v0, :cond_35

    iget v2, p0, Landroidx/recyclerview/widget/a$b;->d:I

    iget v3, p1, Landroidx/recyclerview/widget/a$b;->b:I

    if-ne v2, v3, :cond_35

    iget v2, p0, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-ne v2, v3, :cond_35

    return v0

    :cond_35
    iget v2, p0, Landroidx/recyclerview/widget/a$b;->d:I

    iget v3, p1, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq v2, v3, :cond_3c

    return v1

    :cond_3c
    iget v2, p0, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p1, Landroidx/recyclerview/widget/a$b;->b:I

    if-eq v2, v3, :cond_43

    return v1

    :cond_43
    iget-object v2, p0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    if-eqz v2, :cond_50

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    return v1

    :cond_50
    if-eqz p1, :cond_53

    return v1

    :cond_53
    return v0

    :cond_54
    :goto_54
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Landroidx/recyclerview/widget/a$b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/a$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/a$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/a$b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
