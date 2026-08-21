###### Class b.f.a.b (b.f.a.b)
.class public Lb/f/a/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/f/a/e$a;


# instance fields
.field a:Lb/f/a/i;

.field b:F

.field c:Z

.field public final d:Lb/f/a/a;

.field e:Z


# direct methods
.method public constructor <init>(Lb/f/a/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/a/b;->a:Lb/f/a/i;

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/b;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/f/a/b;->e:Z

    new-instance v0, Lb/f/a/a;

    invoke-direct {v0, p0, p1}, Lb/f/a/a;-><init>(Lb/f/a/b;Lb/f/a/c;)V

    iput-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    return-void
.end method


# virtual methods
.method public a(FFFLb/f/a/i;Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;)Lb/f/a/b;
    .registers 12

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/b;->b:F

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v0

    if-eqz v3, :cond_47

    cmpl-float v3, p1, p3

    if-nez v3, :cond_10

    goto :goto_47

    :cond_10
    cmpl-float v3, p1, v0

    if-nez v3, :cond_1f

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p4, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p5, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    goto :goto_5b

    :cond_1f
    cmpl-float v0, p3, v0

    if-nez v0, :cond_2e

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p6, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p7, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    goto :goto_5b

    :cond_2e
    div-float/2addr p1, p2

    div-float/2addr p3, p2

    div-float/2addr p1, p3

    iget-object p2, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p2, p4, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p2, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p2, p5, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p2, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p2, p7, p1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p2, p0, Lb/f/a/b;->d:Lb/f/a/a;

    neg-float p1, p1

    invoke-virtual {p2, p6, p1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    goto :goto_5b

    :cond_47
    :goto_47
    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p4, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p5, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p7, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p6, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    :goto_5b
    return-object p0
.end method

.method public a(Lb/f/a/e;I)Lb/f/a/b;
    .registers 6

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const-string v1, "ep"

    invoke-virtual {p1, p2, v1}, Lb/f/a/e;->a(ILjava/lang/String;)Lb/f/a/i;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const-string v1, "em"

    invoke-virtual {p1, p2, v1}, Lb/f/a/e;->a(ILjava/lang/String;)Lb/f/a/i;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, p2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    return-object p0
.end method

.method a(Lb/f/a/i;I)Lb/f/a/b;
    .registers 4

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    return-object p0
.end method

.method public a(Lb/f/a/i;Lb/f/a/i;I)Lb/f/a/b;
    .registers 6

    const/4 v0, 0x0

    if-eqz p3, :cond_b

    if-gez p3, :cond_8

    mul-int/lit8 p3, p3, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p3, p3

    iput p3, p0, Lb/f/a/b;->b:F

    :cond_b
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_1c

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0, p1, p3}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p2, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    goto :goto_26

    :cond_1c
    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0, p1, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p2, p3}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    :goto_26
    return-object p0
.end method

.method a(Lb/f/a/i;Lb/f/a/i;IFLb/f/a/i;Lb/f/a/i;I)Lb/f/a/b;
    .registers 13

    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_16

    iget-object p3, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p3, p1, v0}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p6, v0}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-virtual {p1, p2, p3}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    return-object p0

    :cond_16
    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, p4, v1

    if-nez v1, :cond_3a

    iget-object p4, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p4, p1, v0}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p2, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p5, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p6, v0}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    if-gtz p3, :cond_36

    if-lez p7, :cond_88

    :cond_36
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    goto :goto_4a

    :cond_3a
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-gtz v1, :cond_4d

    iget-object p4, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p4, p1, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p2, v0}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    int-to-float p1, p3

    :goto_4a
    iput p1, p0, Lb/f/a/b;->b:F

    goto :goto_88

    :cond_4d
    cmpl-float v1, p4, v0

    if-ltz v1, :cond_5d

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p5, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p6, v0}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    int-to-float p1, p7

    goto :goto_4a

    :cond_5d
    iget-object v1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    sub-float v3, v0, p4

    mul-float v4, v3, v0

    invoke-virtual {v1, p1, v4}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    mul-float v1, v3, v2

    invoke-virtual {p1, p2, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    mul-float v2, v2, p4

    invoke-virtual {p1, p5, v2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    mul-float v0, v0, p4

    invoke-virtual {p1, p6, v0}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    if-gtz p3, :cond_7f

    if-lez p7, :cond_88

    :cond_7f
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v3

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p1, p2

    goto :goto_4a

    :cond_88
    :goto_88
    return-object p0
.end method

.method a(Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;F)Lb/f/a/b;
    .registers 7

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    invoke-virtual {p1, p2, v0}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p3, p4}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    return-object p0
.end method

.method public a(Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;I)Lb/f/a/b;
    .registers 7

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    if-gez p4, :cond_8

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p4, p4

    iput p4, p0, Lb/f/a/b;->b:F

    :cond_b
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_21

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0, p1, p4}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p2, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p3, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    goto :goto_30

    :cond_21
    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0, p1, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p2, p4}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p3, p4}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    :goto_30
    return-object p0
.end method

.method public a(Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;F)Lb/f/a/b;
    .registers 8

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, p1, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v0}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p3, p5}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    neg-float p2, p5

    invoke-virtual {p1, p4, p2}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    return-object p0
.end method

.method public a(Lb/f/a/e;[Z)Lb/f/a/i;
    .registers 4

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lb/f/a/a;->a([ZLb/f/a/i;)Lb/f/a/i;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .registers 3

    iget v0, p0, Lb/f/a/b;->b:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_12

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    iput v0, p0, Lb/f/a/b;->b:F

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0}, Lb/f/a/a;->b()V

    :cond_12
    return-void
.end method

.method public a(Lb/f/a/e$a;)V
    .registers 7

    instance-of v0, p1, Lb/f/a/b;

    if-eqz v0, :cond_28

    check-cast p1, Lb/f/a/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/a/b;->a:Lb/f/a/i;

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0}, Lb/f/a/a;->a()V

    const/4 v0, 0x0

    :goto_f
    iget-object v1, p1, Lb/f/a/b;->d:Lb/f/a/a;

    iget v2, v1, Lb/f/a/a;->a:I

    if-ge v0, v2, :cond_28

    invoke-virtual {v1, v0}, Lb/f/a/a;->a(I)Lb/f/a/i;

    move-result-object v1

    iget-object v2, p1, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v2, v0}, Lb/f/a/a;->b(I)F

    move-result v2

    iget-object v3, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Lb/f/a/a;->a(Lb/f/a/i;FZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_28
    return-void
.end method

.method public a(Lb/f/a/i;)V
    .registers 5

    iget v0, p1, Lb/f/a/i;->d:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    goto :goto_22

    :cond_8
    const/4 v2, 0x2

    if-ne v0, v2, :cond_e

    const/high16 v1, 0x447a0000    # 1000.0f

    goto :goto_22

    :cond_e
    const/4 v2, 0x3

    if-ne v0, v2, :cond_15

    const v1, 0x49742400    # 1000000.0f

    goto :goto_22

    :cond_15
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    const v1, 0x4e6e6b28    # 1.0E9f

    goto :goto_22

    :cond_1c
    const/4 v2, 0x5

    if-ne v0, v2, :cond_22

    const v1, 0x5368d4a5    # 1.0E12f

    :cond_22
    :goto_22
    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0, p1, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    return-void
.end method

.method a(Lb/f/a/e;)Z
    .registers 4

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0, p1}, Lb/f/a/a;->a(Lb/f/a/e;)Lb/f/a/i;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p1}, Lb/f/a/b;->d(Lb/f/a/i;)V

    const/4 p1, 0x0

    :goto_f
    iget-object v1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    iget v1, v1, Lb/f/a/a;->a:I

    if-nez v1, :cond_17

    iput-boolean v0, p0, Lb/f/a/b;->e:Z

    :cond_17
    return p1
.end method

.method b(Lb/f/a/i;I)Lb/f/a/b;
    .registers 3

    iput-object p1, p0, Lb/f/a/b;->a:Lb/f/a/i;

    int-to-float p2, p2

    iput p2, p1, Lb/f/a/i;->e:F

    iput p2, p0, Lb/f/a/b;->b:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/f/a/b;->e:Z

    return-object p0
.end method

.method public b(Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;I)Lb/f/a/b;
    .registers 7

    const/4 v0, 0x0

    if-eqz p4, :cond_b

    if-gez p4, :cond_8

    mul-int/lit8 p4, p4, -0x1

    const/4 v0, 0x1

    :cond_8
    int-to-float p4, p4

    iput p4, p0, Lb/f/a/b;->b:F

    :cond_b
    const/high16 p4, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_21

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0, p1, p4}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p2, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p3, p4}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    goto :goto_30

    :cond_21
    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0, p1, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p2, p4}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p3, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    :goto_30
    return-object p0
.end method

.method public b(Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;Lb/f/a/i;F)Lb/f/a/b;
    .registers 8

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, p3, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p3, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p3, p4, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p3, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/high16 p4, -0x41000000    # -0.5f

    invoke-virtual {p3, p1, p4}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, p2, p4}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    neg-float p1, p5

    iput p1, p0, Lb/f/a/b;->b:F

    return-object p0
.end method

.method b()Z
    .registers 3

    iget-object v0, p0, Lb/f/a/b;->a:Lb/f/a/i;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lb/f/a/i;->g:Lb/f/a/i$a;

    sget-object v1, Lb/f/a/i$a;->b:Lb/f/a/i$a;

    if-eq v0, v1, :cond_11

    iget v0, p0, Lb/f/a/b;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method b(Lb/f/a/i;)Z
    .registers 3

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0, p1}, Lb/f/a/a;->a(Lb/f/a/i;)Z

    move-result p1

    return p1
.end method

.method public c(Lb/f/a/i;I)Lb/f/a/b;
    .registers 4

    if-gez p2, :cond_c

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    iput p2, p0, Lb/f/a/b;->b:F

    iget-object p2, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_c
    int-to-float p2, p2

    iput p2, p0, Lb/f/a/b;->b:F

    iget-object p2, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/high16 v0, -0x40800000    # -1.0f

    :goto_13
    invoke-virtual {p2, p1, v0}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    return-object p0
.end method

.method c(Lb/f/a/i;)Lb/f/a/i;
    .registers 4

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lb/f/a/a;->a([ZLb/f/a/i;)Lb/f/a/i;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lb/f/a/b;->a:Lb/f/a/i;

    if-nez v0, :cond_13

    iget v0, p0, Lb/f/a/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_13

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    iget v0, v0, Lb/f/a/a;->a:I

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0}, Lb/f/a/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/a/b;->a:Lb/f/a/i;

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/b;->b:F

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/a/b;->a:Lb/f/a/i;

    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v0}, Lb/f/a/a;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lb/f/a/b;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/f/a/b;->e:Z

    return-void
.end method

.method d(Lb/f/a/i;)V
    .registers 5

    iget-object v0, p0, Lb/f/a/b;->a:Lb/f/a/i;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_e

    iget-object v2, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v2, v0, v1}, Lb/f/a/a;->a(Lb/f/a/i;F)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/f/a/b;->a:Lb/f/a/i;

    :cond_e
    iget-object v0, p0, Lb/f/a/b;->d:Lb/f/a/a;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lb/f/a/a;->a(Lb/f/a/i;Z)F

    move-result v0

    mul-float v0, v0, v1

    iput-object p1, p0, Lb/f/a/b;->a:Lb/f/a/i;

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-nez p1, :cond_20

    return-void

    :cond_20
    iget p1, p0, Lb/f/a/b;->b:F

    div-float/2addr p1, v0

    iput p1, p0, Lb/f/a/b;->b:F

    iget-object p1, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {p1, v0}, Lb/f/a/a;->a(F)V

    return-void
.end method

.method e()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lb/f/a/b;->a:Lb/f/a/i;

    const-string v1, ""

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/f/a/b;->a:Lb/f/a/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lb/f/a/b;->b:F

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lb/f/a/b;->b:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_53

    :cond_52
    const/4 v1, 0x0

    :goto_53
    iget-object v5, p0, Lb/f/a/b;->d:Lb/f/a/a;

    iget v5, v5, Lb/f/a/a;->a:I

    :goto_57
    if-ge v2, v5, :cond_d4

    iget-object v6, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v6, v2}, Lb/f/a/a;->a(I)Lb/f/a/i;

    move-result-object v6

    if-nez v6, :cond_62

    goto :goto_d1

    :cond_62
    iget-object v7, p0, Lb/f/a/b;->d:Lb/f/a/a;

    invoke-virtual {v7, v2}, Lb/f/a/a;->b(I)F

    move-result v7

    cmpl-float v8, v7, v4

    if-nez v8, :cond_6d

    goto :goto_d1

    :cond_6d
    invoke-virtual {v6}, Lb/f/a/i;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v8, -0x40800000    # -1.0f

    if-nez v1, :cond_84

    cmpg-float v1, v7, v4

    if-gez v1, :cond_ad

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "- "

    goto :goto_a4

    :cond_84
    cmpl-float v1, v7, v4

    if-lez v1, :cond_9a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_ad

    :cond_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    :goto_a4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    mul-float v7, v7, v8

    :cond_ad
    :goto_ad
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v7, v1

    if-nez v1, :cond_b9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c6

    :cond_b9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    :goto_c6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_d1
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_d4
    if-nez v1, :cond_e7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e7
    return-object v0
.end method

.method public getKey()Lb/f/a/i;
    .registers 2

    iget-object v0, p0, Lb/f/a/b;->a:Lb/f/a/i;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lb/f/a/b;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
