###### Class androidx.recyclerview.widget.q (androidx.recyclerview.widget.q)
.class Landroidx/recyclerview/widget/q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/q$a;
    }
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/q$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/q$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$a;

    return-void
.end method

.method private a(Ljava/util/List;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/recyclerview/widget/a$b;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/a$b;

    iget v0, v6, Landroidx/recyclerview/widget/a$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1a

    goto :goto_31

    :cond_1a
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/q;->b(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V

    goto :goto_31

    :cond_22
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/q;->a(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V

    goto :goto_31

    :cond_2a
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/q;->c(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V

    :goto_31
    return-void
.end method

.method private b(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_7
    if-ltz v0, :cond_1c

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/a$b;

    iget v3, v3, Landroidx/recyclerview/widget/a$b;->a:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_18

    if-eqz v2, :cond_19

    return v0

    :cond_18
    const/4 v2, 0x1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_1c
    const/4 p1, -0x1

    return p1
.end method

.method private c(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;I",
            "Landroidx/recyclerview/widget/a$b;",
            "I",
            "Landroidx/recyclerview/widget/a$b;",
            ")V"
        }
    .end annotation

    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v0, v1, :cond_8

    const/4 v0, -0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v1, v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    :cond_11
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p3, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v1, v2, :cond_1c

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v2, v1

    iput v2, p3, Landroidx/recyclerview/widget/a$b;->b:I

    :cond_1c
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    iget v2, p3, Landroidx/recyclerview/widget/a$b;->d:I

    if-gt v1, v2, :cond_27

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v2, v1

    iput v2, p3, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_27
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    add-int/2addr v1, v0

    iput v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/q;->b(Ljava/util/List;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/q;->a(Ljava/util/List;II)V

    goto :goto_0

    :cond_d
    return-void
.end method

.method a(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;I",
            "Landroidx/recyclerview/widget/a$b;",
            "I",
            "Landroidx/recyclerview/widget/a$b;",
            ")V"
        }
    .end annotation

    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/a$b;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-ge v0, v1, :cond_15

    if-ne v4, v0, :cond_13

    iget v4, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v1, v0

    if-ne v4, v1, :cond_13

    const/4 v0, 0x0

    goto :goto_1f

    :cond_13
    const/4 v0, 0x0

    goto :goto_22

    :cond_15
    add-int/lit8 v5, v1, 0x1

    if-ne v4, v5, :cond_21

    iget v4, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v1

    if-ne v4, v0, :cond_21

    const/4 v0, 0x1

    :goto_1f
    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x1

    :goto_22
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v4, p5, Landroidx/recyclerview/widget/a$b;->b:I

    const/4 v5, 0x2

    if-ge v1, v4, :cond_2d

    sub-int/2addr v4, v3

    iput v4, p5, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_46

    :cond_2d
    iget v6, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v4, v6

    if-ge v1, v4, :cond_46

    sub-int/2addr v6, v3

    iput v6, p5, Landroidx/recyclerview/widget/a$b;->d:I

    iput v5, p3, Landroidx/recyclerview/widget/a$b;->a:I

    iput v3, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget p2, p5, Landroidx/recyclerview/widget/a$b;->d:I

    if-nez p2, :cond_45

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$a;

    invoke-interface {p1, p5}, Landroidx/recyclerview/widget/q$a;->a(Landroidx/recyclerview/widget/a$b;)V

    :cond_45
    return-void

    :cond_46
    :goto_46
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v4, p5, Landroidx/recyclerview/widget/a$b;->b:I

    const/4 v6, 0x0

    if-gt v1, v4, :cond_51

    add-int/2addr v4, v3

    iput v4, p5, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_67

    :cond_51
    iget v7, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int v8, v4, v7

    if-ge v1, v8, :cond_67

    add-int/2addr v4, v7

    sub-int/2addr v4, v1

    iget-object v7, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$a;

    add-int/2addr v1, v3

    invoke-interface {v7, v5, v1, v4, v6}, Landroidx/recyclerview/widget/q$a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v6

    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v3, p5, Landroidx/recyclerview/widget/a$b;->b:I

    sub-int/2addr v1, v3

    iput v1, p5, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_67
    :goto_67
    if-eqz v2, :cond_75

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$a;

    invoke-interface {p1, p3}, Landroidx/recyclerview/widget/q$a;->a(Landroidx/recyclerview/widget/a$b;)V

    return-void

    :cond_75
    if-eqz v0, :cond_a1

    if-eqz v6, :cond_8f

    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v1, v6, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v0, v1, :cond_84

    iget v1, v6, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    :cond_84
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v1, v6, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v0, v1, :cond_8f

    iget v1, v6, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_8f
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v0, v1, :cond_9a

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    :cond_9a
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-le v0, v1, :cond_cf

    goto :goto_ca

    :cond_a1
    if-eqz v6, :cond_b9

    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v1, v6, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v0, v1, :cond_ae

    iget v1, v6, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    :cond_ae
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v1, v6, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v0, v1, :cond_b9

    iget v1, v6, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_b9
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v0, v1, :cond_c4

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->b:I

    :cond_c4
    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-lt v0, v1, :cond_cf

    :goto_ca
    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v0, v1

    iput v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_cf
    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p5, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    if-eq p5, v0, :cond_dc

    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_df

    :cond_dc
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_df
    if-eqz v6, :cond_e4

    invoke-interface {p1, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_e4
    return-void
.end method

.method b(Ljava/util/List;ILandroidx/recyclerview/widget/a$b;ILandroidx/recyclerview/widget/a$b;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/a$b;",
            ">;I",
            "Landroidx/recyclerview/widget/a$b;",
            "I",
            "Landroidx/recyclerview/widget/a$b;",
            ")V"
        }
    .end annotation

    iget v0, p3, Landroidx/recyclerview/widget/a$b;->d:I

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_d

    sub-int/2addr v1, v4

    iput v1, p5, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_20

    :cond_d
    iget v5, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int/2addr v1, v5

    if-ge v0, v1, :cond_20

    sub-int/2addr v5, v4

    iput v5, p5, Landroidx/recyclerview/widget/a$b;->d:I

    iget-object v0, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$a;

    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget-object v5, p5, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v0, v2, v1, v4, v5}, Landroidx/recyclerview/widget/q$a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v0

    goto :goto_21

    :cond_20
    :goto_20
    move-object v0, v3

    :goto_21
    iget v1, p3, Landroidx/recyclerview/widget/a$b;->b:I

    iget v5, p5, Landroidx/recyclerview/widget/a$b;->b:I

    if-gt v1, v5, :cond_2b

    add-int/2addr v5, v4

    iput v5, p5, Landroidx/recyclerview/widget/a$b;->b:I

    goto :goto_41

    :cond_2b
    iget v6, p5, Landroidx/recyclerview/widget/a$b;->d:I

    add-int v7, v5, v6

    if-ge v1, v7, :cond_41

    add-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget-object v3, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$a;

    add-int/2addr v1, v4

    iget-object v4, p5, Landroidx/recyclerview/widget/a$b;->c:Ljava/lang/Object;

    invoke-interface {v3, v2, v1, v5, v4}, Landroidx/recyclerview/widget/q$a;->a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;

    move-result-object v3

    iget v1, p5, Landroidx/recyclerview/widget/a$b;->d:I

    sub-int/2addr v1, v5

    iput v1, p5, Landroidx/recyclerview/widget/a$b;->d:I

    :cond_41
    :goto_41
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p3, p5, Landroidx/recyclerview/widget/a$b;->d:I

    if-lez p3, :cond_4c

    invoke-interface {p1, p2, p5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_4c
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p3, p0, Landroidx/recyclerview/widget/q;->a:Landroidx/recyclerview/widget/q$a;

    invoke-interface {p3, p5}, Landroidx/recyclerview/widget/q$a;->a(Landroidx/recyclerview/widget/a$b;)V

    :goto_54
    if-eqz v0, :cond_59

    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_59
    if-eqz v3, :cond_5e

    invoke-interface {p1, p2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_5e
    return-void
.end method

###### Class androidx.recyclerview.widget.q.a (androidx.recyclerview.widget.q$a)
.class interface abstract Landroidx/recyclerview/widget/q$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(IIILjava/lang/Object;)Landroidx/recyclerview/widget/a$b;
.end method

.method public abstract a(Landroidx/recyclerview/widget/a$b;)V
.end method
