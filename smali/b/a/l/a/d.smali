###### Class b.a.l.a.d (b.a.l.a.d)
.class Lb/a/l/a/d;
.super Lb/a/l/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/l/a/d$a;
    }
.end annotation


# instance fields
.field private n:Lb/a/l/a/d$a;

.field private o:Z


# direct methods
.method constructor <init>(Lb/a/l/a/d$a;)V
    .registers 2

    invoke-direct {p0}, Lb/a/l/a/b;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lb/a/l/a/d;->a(Lb/a/l/a/b$c;)V

    :cond_8
    return-void
.end method

.method constructor <init>(Lb/a/l/a/d$a;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0}, Lb/a/l/a/b;-><init>()V

    new-instance v0, Lb/a/l/a/d$a;

    invoke-direct {v0, p1, p0, p2}, Lb/a/l/a/d$a;-><init>(Lb/a/l/a/d$a;Lb/a/l/a/d;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Lb/a/l/a/d;->a(Lb/a/l/a/b$c;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a/l/a/d;->onStateChange([I)Z

    return-void
.end method


# virtual methods
.method bridge synthetic a()Lb/a/l/a/b$c;
    .registers 2

    invoke-virtual {p0}, Lb/a/l/a/d;->a()Lb/a/l/a/d$a;

    move-result-object v0

    return-object v0
.end method

.method a()Lb/a/l/a/d$a;
    .registers 4

    new-instance v0, Lb/a/l/a/d$a;

    iget-object v1, p0, Lb/a/l/a/d;->n:Lb/a/l/a/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lb/a/l/a/d$a;-><init>(Lb/a/l/a/d$a;Lb/a/l/a/d;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected a(Lb/a/l/a/b$c;)V
    .registers 3

    invoke-super {p0, p1}, Lb/a/l/a/b;->a(Lb/a/l/a/b$c;)V

    instance-of v0, p1, Lb/a/l/a/d$a;

    if-eqz v0, :cond_b

    check-cast p1, Lb/a/l/a/d$a;

    iput-object p1, p0, Lb/a/l/a/d;->n:Lb/a/l/a/d$a;

    :cond_b
    return-void
.end method

.method a(Landroid/util/AttributeSet;)[I
    .registers 10

    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v3, v0, :cond_2b

    invoke-interface {p1, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v5

    if-eqz v5, :cond_28

    const v6, 0x10100d0

    if-eq v5, v6, :cond_28

    const v6, 0x1010199

    if-eq v5, v6, :cond_28

    add-int/lit8 v6, v4, 0x1

    invoke-interface {p1, v3, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v7

    if-eqz v7, :cond_24

    goto :goto_25

    :cond_24
    neg-int v5, v5

    :goto_25
    aput v5, v1, v4

    move v4, v6

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_2b
    invoke-static {v1, v4}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object p1

    return-object p1
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    invoke-super {p0, p1}, Lb/a/l/a/b;->applyTheme(Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a/l/a/d;->onStateChange([I)Z

    return-void
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-boolean v0, p0, Lb/a/l/a/d;->o:Z

    if-nez v0, :cond_11

    invoke-super {p0}, Lb/a/l/a/b;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_11

    iget-object v0, p0, Lb/a/l/a/d;->n:Lb/a/l/a/d$a;

    invoke-virtual {v0}, Lb/a/l/a/d$a;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/l/a/d;->o:Z

    :cond_11
    return-object p0
.end method

.method protected onStateChange([I)Z
    .registers 4

    invoke-super {p0, p1}, Lb/a/l/a/b;->onStateChange([I)Z

    move-result v0

    iget-object v1, p0, Lb/a/l/a/d;->n:Lb/a/l/a/d$a;

    invoke-virtual {v1, p1}, Lb/a/l/a/d$a;->a([I)I

    move-result p1

    if-gez p1, :cond_14

    iget-object p1, p0, Lb/a/l/a/d;->n:Lb/a/l/a/d$a;

    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1, v1}, Lb/a/l/a/d$a;->a([I)I

    move-result p1

    :cond_14
    invoke-virtual {p0, p1}, Lb/a/l/a/b;->a(I)Z

    move-result p1

    if-nez p1, :cond_1f

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

###### Class b.a.l.a.d.a (b.a.l.a.d$a)
.class Lb/a/l/a/d$a;
.super Lb/a/l/a/b$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/l/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field J:[[I


# direct methods
.method constructor <init>(Lb/a/l/a/d$a;Lb/a/l/a/d;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lb/a/l/a/b$c;-><init>(Lb/a/l/a/b$c;Lb/a/l/a/b;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_a

    iget-object p1, p1, Lb/a/l/a/d$a;->J:[[I

    iput-object p1, p0, Lb/a/l/a/d$a;->J:[[I

    goto :goto_12

    :cond_a
    invoke-virtual {p0}, Lb/a/l/a/b$c;->c()I

    move-result p1

    new-array p1, p1, [[I

    iput-object p1, p0, Lb/a/l/a/d$a;->J:[[I

    :goto_12
    return-void
.end method


# virtual methods
.method a([I)I
    .registers 6

    iget-object v0, p0, Lb/a/l/a/d$a;->J:[[I

    invoke-virtual {p0}, Lb/a/l/a/b$c;->d()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget-object v3, v0, v2

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_12

    return v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method a([ILandroid/graphics/drawable/Drawable;)I
    .registers 4

    invoke-virtual {p0, p2}, Lb/a/l/a/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p2

    iget-object v0, p0, Lb/a/l/a/d$a;->J:[[I

    aput-object p1, v0, p2

    return p2
.end method

.method public a(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Lb/a/l/a/b$c;->a(II)V

    new-array p2, p2, [[I

    iget-object v0, p0, Lb/a/l/a/d$a;->J:[[I

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lb/a/l/a/d$a;->J:[[I

    return-void
.end method

.method m()V
    .registers 5

    iget-object v0, p0, Lb/a/l/a/d$a;->J:[[I

    array-length v1, v0

    new-array v1, v1, [[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    iget-object v2, p0, Lb/a/l/a/d$a;->J:[[I

    aget-object v3, v2, v0

    if-eqz v3, :cond_19

    aget-object v2, v2, v0

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1f
    iput-object v1, p0, Lb/a/l/a/d$a;->J:[[I

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lb/a/l/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/l/a/d;-><init>(Lb/a/l/a/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lb/a/l/a/d;

    invoke-direct {v0, p0, p1}, Lb/a/l/a/d;-><init>(Lb/a/l/a/d$a;Landroid/content/res/Resources;)V

    return-object v0
.end method
