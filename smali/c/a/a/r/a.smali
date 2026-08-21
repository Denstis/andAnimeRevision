###### Class c.a.a.r.a (c.a.a.r.a)
.class public abstract Lc/a/a/r/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc/a/a/r/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Z

.field private b:I

.field private c:F

.field private d:Lcom/bumptech/glide/load/n/j;

.field private e:Lc/a/a/h;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcom/bumptech/glide/load/g;

.field private n:Z

.field private o:Z

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:I

.field private r:Lcom/bumptech/glide/load/i;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:Landroid/content/res/Resources$Theme;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lc/a/a/r/a;->c:F

    sget-object v0, Lcom/bumptech/glide/load/n/j;->c:Lcom/bumptech/glide/load/n/j;

    iput-object v0, p0, Lc/a/a/r/a;->d:Lcom/bumptech/glide/load/n/j;

    sget-object v0, Lc/a/a/h;->d:Lc/a/a/h;

    iput-object v0, p0, Lc/a/a/r/a;->e:Lc/a/a/h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/r/a;->j:Z

    const/4 v1, -0x1

    iput v1, p0, Lc/a/a/r/a;->k:I

    iput v1, p0, Lc/a/a/r/a;->l:I

    invoke-static {}, Lc/a/a/s/a;->a()Lc/a/a/s/a;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/r/a;->m:Lcom/bumptech/glide/load/g;

    iput-boolean v0, p0, Lc/a/a/r/a;->o:Z

    new-instance v1, Lcom/bumptech/glide/load/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/i;-><init>()V

    iput-object v1, p0, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    new-instance v1, Lc/a/a/t/b;

    invoke-direct {v1}, Lc/a/a/t/b;-><init>()V

    iput-object v1, p0, Lc/a/a/r/a;->s:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lc/a/a/r/a;->t:Ljava/lang/Class;

    iput-boolean v0, p0, Lc/a/a/r/a;->z:Z

    return-void
.end method

.method private J()Lc/a/a/r/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method private K()Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->u:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lc/a/a/r/a;->J()Lc/a/a/r/a;

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/p/c/k;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_7

    invoke-virtual {p0, p1, p2}, Lc/a/a/r/a;->b(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1, p2}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object p1

    :goto_b
    const/4 p2, 0x1

    iput-boolean p2, p1, Lc/a/a/r/a;->z:Z

    return-object p1
.end method

.method private a(I)Z
    .registers 3

    iget v0, p0, Lc/a/a/r/a;->b:I

    invoke-static {v0, p1}, Lc/a/a/r/a;->b(II)Z

    move-result p1

    return p1
.end method

.method private static b(II)Z
    .registers 2

    and-int/2addr p0, p1

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private c(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/p/c/k;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method A()Z
    .registers 2

    iget-boolean v0, p0, Lc/a/a/r/a;->z:Z

    return v0
.end method

.method public final B()Z
    .registers 2

    iget-boolean v0, p0, Lc/a/a/r/a;->o:Z

    return v0
.end method

.method public final C()Z
    .registers 2

    iget-boolean v0, p0, Lc/a/a/r/a;->n:Z

    return v0
.end method

.method public final D()Z
    .registers 2

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lc/a/a/r/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .registers 3

    iget v0, p0, Lc/a/a/r/a;->l:I

    iget v1, p0, Lc/a/a/r/a;->k:I

    invoke-static {v0, v1}, Lc/a/a/t/k;->b(II)Z

    move-result v0

    return v0
.end method

.method public F()Lc/a/a/r/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/r/a;->u:Z

    invoke-direct {p0}, Lc/a/a/r/a;->J()Lc/a/a/r/a;

    return-object p0
.end method

.method public G()Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/p/c/k;->b:Lcom/bumptech/glide/load/p/c/k;

    new-instance v1, Lcom/bumptech/glide/load/p/c/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/p/c/g;-><init>()V

    invoke-virtual {p0, v0, v1}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method public H()Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/p/c/k;->c:Lcom/bumptech/glide/load/p/c/k;

    new-instance v1, Lcom/bumptech/glide/load/p/c/h;

    invoke-direct {v1}, Lcom/bumptech/glide/load/p/c/h;-><init>()V

    invoke-direct {p0, v0, v1}, Lc/a/a/r/a;->c(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method public I()Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/p/c/k;->a:Lcom/bumptech/glide/load/p/c/k;

    new-instance v1, Lcom/bumptech/glide/load/p/c/p;

    invoke-direct {v1}, Lcom/bumptech/glide/load/p/c/p;-><init>()V

    invoke-direct {p0, v0, v1}, Lc/a/a/r/a;->c(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->u:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_9

    goto :goto_11

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/r/a;->w:Z

    invoke-virtual {p0}, Lc/a/a/r/a;->F()Lc/a/a/r/a;

    return-object p0
.end method

.method public a(F)Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/r/a;->a(F)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_24

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_24

    iput p1, p0, Lc/a/a/r/a;->c:F

    iget p1, p0, Lc/a/a/r/a;->b:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lc/a/a/r/a;->b:I

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)Lc/a/a/r/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/r/a;->a(II)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    iput p1, p0, Lc/a/a/r/a;->l:I

    iput p2, p0, Lc/a/a/r/a;->k:I

    iget p1, p0, Lc/a/a/r/a;->b:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lc/a/a/r/a;->b:I

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method public a(Lc/a/a/h;)Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/h;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/r/a;->a(Lc/a/a/h;)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/a/a/h;

    iput-object p1, p0, Lc/a/a/r/a;->e:Lc/a/a/h;

    iget p1, p0, Lc/a/a/r/a;->b:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lc/a/a/r/a;->b:I

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method public a(Lc/a/a/r/a;)Lc/a/a/r/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/a<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/r/a;->a(Lc/a/a/r/a;)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p1, Lc/a/a/r/a;->c:F

    iput v0, p0, Lc/a/a/r/a;->c:F

    :cond_1a
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-boolean v0, p1, Lc/a/a/r/a;->x:Z

    iput-boolean v0, p0, Lc/a/a/r/a;->x:Z

    :cond_28
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-boolean v0, p1, Lc/a/a/r/a;->A:Z

    iput-boolean v0, p0, Lc/a/a/r/a;->A:Z

    :cond_36
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p1, Lc/a/a/r/a;->d:Lcom/bumptech/glide/load/n/j;

    iput-object v0, p0, Lc/a/a/r/a;->d:Lcom/bumptech/glide/load/n/j;

    :cond_43
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p1, Lc/a/a/r/a;->e:Lc/a/a/h;

    iput-object v0, p0, Lc/a/a/r/a;->e:Lc/a/a/h;

    :cond_51
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    iget-object v0, p1, Lc/a/a/r/a;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc/a/a/r/a;->f:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lc/a/a/r/a;->g:I

    iget v0, p0, Lc/a/a/r/a;->b:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lc/a/a/r/a;->b:I

    :cond_68
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7f

    iget v0, p1, Lc/a/a/r/a;->g:I

    iput v0, p0, Lc/a/a/r/a;->g:I

    iput-object v2, p0, Lc/a/a/r/a;->f:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lc/a/a/r/a;->b:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lc/a/a/r/a;->b:I

    :cond_7f
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p1, Lc/a/a/r/a;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc/a/a/r/a;->h:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lc/a/a/r/a;->i:I

    iget v0, p0, Lc/a/a/r/a;->b:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lc/a/a/r/a;->b:I

    :cond_95
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_ab

    iget v0, p1, Lc/a/a/r/a;->i:I

    iput v0, p0, Lc/a/a/r/a;->i:I

    iput-object v2, p0, Lc/a/a/r/a;->h:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lc/a/a/r/a;->b:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lc/a/a/r/a;->b:I

    :cond_ab
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_b9

    iget-boolean v0, p1, Lc/a/a/r/a;->j:Z

    iput-boolean v0, p0, Lc/a/a/r/a;->j:Z

    :cond_b9
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_cb

    iget v0, p1, Lc/a/a/r/a;->l:I

    iput v0, p0, Lc/a/a/r/a;->l:I

    iget v0, p1, Lc/a/a/r/a;->k:I

    iput v0, p0, Lc/a/a/r/a;->k:I

    :cond_cb
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-object v0, p1, Lc/a/a/r/a;->m:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lc/a/a/r/a;->m:Lcom/bumptech/glide/load/g;

    :cond_d9
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-object v0, p1, Lc/a/a/r/a;->t:Ljava/lang/Class;

    iput-object v0, p0, Lc/a/a/r/a;->t:Ljava/lang/Class;

    :cond_e7
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p1, Lc/a/a/r/a;->p:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc/a/a/r/a;->p:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lc/a/a/r/a;->q:I

    iget v0, p0, Lc/a/a/r/a;->b:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lc/a/a/r/a;->b:I

    :cond_fd
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_113

    iget v0, p1, Lc/a/a/r/a;->q:I

    iput v0, p0, Lc/a/a/r/a;->q:I

    iput-object v2, p0, Lc/a/a/r/a;->p:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lc/a/a/r/a;->b:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lc/a/a/r/a;->b:I

    :cond_113
    iget v0, p1, Lc/a/a/r/a;->b:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p1, Lc/a/a/r/a;->v:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lc/a/a/r/a;->v:Landroid/content/res/Resources$Theme;

    :cond_122
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_130

    iget-boolean v0, p1, Lc/a/a/r/a;->o:Z

    iput-boolean v0, p0, Lc/a/a/r/a;->o:Z

    :cond_130
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_13e

    iget-boolean v0, p1, Lc/a/a/r/a;->n:Z

    iput-boolean v0, p0, Lc/a/a/r/a;->n:Z

    :cond_13e
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_153

    iget-object v0, p0, Lc/a/a/r/a;->s:Ljava/util/Map;

    iget-object v2, p1, Lc/a/a/r/a;->s:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lc/a/a/r/a;->z:Z

    iput-boolean v0, p0, Lc/a/a/r/a;->z:Z

    :cond_153
    iget v0, p1, Lc/a/a/r/a;->b:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lc/a/a/r/a;->b(II)Z

    move-result v0

    if-eqz v0, :cond_161

    iget-boolean v0, p1, Lc/a/a/r/a;->y:Z

    iput-boolean v0, p0, Lc/a/a/r/a;->y:Z

    :cond_161
    iget-boolean v0, p0, Lc/a/a/r/a;->o:Z

    if-nez v0, :cond_17d

    iget-object v0, p0, Lc/a/a/r/a;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lc/a/a/r/a;->b:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lc/a/a/r/a;->b:I

    iput-boolean v1, p0, Lc/a/a/r/a;->n:Z

    iget v0, p0, Lc/a/a/r/a;->b:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lc/a/a/r/a;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/r/a;->z:Z

    :cond_17d
    iget v0, p0, Lc/a/a/r/a;->b:I

    iget v1, p1, Lc/a/a/r/a;->b:I

    or-int/2addr v0, v1

    iput v0, p0, Lc/a/a/r/a;->b:I

    iget-object v0, p0, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    iget-object p1, p1, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/i;)V

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/g;)Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/g;)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/g;

    iput-object p1, p0, Lc/a/a/r/a;->m:Lcom/bumptech/glide/load/g;

    iget p1, p0, Lc/a/a/r/a;->b:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lc/a/a/r/a;->b:I

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lc/a/a/r/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/h<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;

    move-result-object p1

    return-object p1
.end method

.method a(Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance v0, Lcom/bumptech/glide/load/p/c/n;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/p/c/n;-><init>(Lcom/bumptech/glide/load/l;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lc/a/a/r/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lc/a/a/r/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/c/n;->a()Lcom/bumptech/glide/load/l;

    invoke-virtual {p0, v1, v0, p2}, Lc/a/a/r/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;

    const-class v0, Lcom/bumptech/glide/load/p/g/c;

    new-instance v1, Lcom/bumptech/glide/load/p/g/f;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/p/g/f;-><init>(Lcom/bumptech/glide/load/l;)V

    invoke-virtual {p0, v0, v1, p2}, Lc/a/a/r/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/n/j;)Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/j;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/n/j;)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/load/n/j;

    iput-object p1, p0, Lc/a/a/r/a;->d:Lcom/bumptech/glide/load/n/j;

    iget p1, p0, Lc/a/a/r/a;->b:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lc/a/a/r/a;->b:I

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/p/c/k;)Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/p/c/k;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/p/c/k;->f:Lcom/bumptech/glide/load/h;

    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/h;Ljava/lang/Object;)Lc/a/a/r/a;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/p/c/k;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p0, p1}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/p/c/k;)Lc/a/a/r/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/r/a;->a(Ljava/lang/Class;)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lc/a/a/r/a;->t:Ljava/lang/Class;

    iget p1, p0, Lc/a/a/r/a;->b:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lc/a/a/r/a;->b:I

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/bumptech/glide/load/l<",
            "TY;>;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc/a/a/r/a;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/l;Z)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/a/a/r/a;->s:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lc/a/a/r/a;->b:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lc/a/a/r/a;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/a/a/r/a;->o:Z

    iget p2, p0, Lc/a/a/r/a;->b:I

    const/high16 v0, 0x10000

    or-int/2addr p2, v0

    iput p2, p0, Lc/a/a/r/a;->b:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lc/a/a/r/a;->z:Z

    if-eqz p3, :cond_36

    iget p2, p0, Lc/a/a/r/a;->b:I

    const/high16 p3, 0x20000

    or-int/2addr p2, p3

    iput p2, p0, Lc/a/a/r/a;->b:I

    iput-boolean p1, p0, Lc/a/a/r/a;->n:Z

    :cond_36
    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method public a(Z)Lc/a/a/r/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lc/a/a/r/a;->a(Z)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_e
    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lc/a/a/r/a;->j:Z

    iget p1, p0, Lc/a/a/r/a;->b:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lc/a/a/r/a;->b:I

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method public b()Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/p/c/k;->b:Lcom/bumptech/glide/load/p/c/k;

    new-instance v1, Lcom/bumptech/glide/load/p/c/g;

    invoke-direct {v1}, Lcom/bumptech/glide/load/p/c/g;-><init>()V

    invoke-virtual {p0, v0, v1}, Lc/a/a/r/a;->b(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method final b(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/p/c/k;",
            "Lcom/bumptech/glide/load/l<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc/a/a/r/a;->b(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-virtual {p0, p1}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/p/c/k;)Lc/a/a/r/a;

    invoke-virtual {p0, p2}, Lc/a/a/r/a;->a(Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Z)Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/a/a/r/a;->w:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc/a/a/r/a;->b(Z)Lc/a/a/r/a;

    move-result-object p1

    return-object p1

    :cond_d
    iput-boolean p1, p0, Lc/a/a/r/a;->A:Z

    iget p1, p0, Lc/a/a/r/a;->b:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lc/a/a/r/a;->b:I

    invoke-direct {p0}, Lc/a/a/r/a;->K()Lc/a/a/r/a;

    return-object p0
.end method

.method public c()Lc/a/a/r/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/p/c/k;->c:Lcom/bumptech/glide/load/p/c/k;

    new-instance v1, Lcom/bumptech/glide/load/p/c/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/p/c/i;-><init>()V

    invoke-virtual {p0, v0, v1}, Lc/a/a/r/a;->b(Lcom/bumptech/glide/load/p/c/k;Lcom/bumptech/glide/load/l;)Lc/a/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lc/a/a/r/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/r/a;

    new-instance v1, Lcom/bumptech/glide/load/i;

    invoke-direct {v1}, Lcom/bumptech/glide/load/i;-><init>()V

    iput-object v1, v0, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    iget-object v1, v0, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    iget-object v2, p0, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/i;->a(Lcom/bumptech/glide/load/i;)V

    new-instance v1, Lc/a/a/t/b;

    invoke-direct {v1}, Lc/a/a/t/b;-><init>()V

    iput-object v1, v0, Lc/a/a/r/a;->s:Ljava/util/Map;

    iget-object v1, v0, Lc/a/a/r/a;->s:Ljava/util/Map;

    iget-object v2, p0, Lc/a/a/r/a;->s:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lc/a/a/r/a;->u:Z

    iput-boolean v1, v0, Lc/a/a/r/a;->w:Z
    :try_end_27
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lc/a/a/r/a;->clone()Lc/a/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/bumptech/glide/load/n/j;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/a;->d:Lcom/bumptech/glide/load/n/j;

    return-object v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lc/a/a/r/a;->g:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lc/a/a/r/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_ae

    check-cast p1, Lc/a/a/r/a;

    iget v0, p1, Lc/a/a/r/a;->c:F

    iget v2, p0, Lc/a/a/r/a;->c:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_ae

    iget v0, p0, Lc/a/a/r/a;->g:I

    iget v2, p1, Lc/a/a/r/a;->g:I

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lc/a/a/r/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lc/a/a/r/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lc/a/a/t/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget v0, p0, Lc/a/a/r/a;->i:I

    iget v2, p1, Lc/a/a/r/a;->i:I

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lc/a/a/r/a;->h:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lc/a/a/r/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lc/a/a/t/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget v0, p0, Lc/a/a/r/a;->q:I

    iget v2, p1, Lc/a/a/r/a;->q:I

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lc/a/a/r/a;->p:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lc/a/a/r/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lc/a/a/t/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-boolean v0, p0, Lc/a/a/r/a;->j:Z

    iget-boolean v2, p1, Lc/a/a/r/a;->j:Z

    if-ne v0, v2, :cond_ae

    iget v0, p0, Lc/a/a/r/a;->k:I

    iget v2, p1, Lc/a/a/r/a;->k:I

    if-ne v0, v2, :cond_ae

    iget v0, p0, Lc/a/a/r/a;->l:I

    iget v2, p1, Lc/a/a/r/a;->l:I

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lc/a/a/r/a;->n:Z

    iget-boolean v2, p1, Lc/a/a/r/a;->n:Z

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lc/a/a/r/a;->o:Z

    iget-boolean v2, p1, Lc/a/a/r/a;->o:Z

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lc/a/a/r/a;->x:Z

    iget-boolean v2, p1, Lc/a/a/r/a;->x:Z

    if-ne v0, v2, :cond_ae

    iget-boolean v0, p0, Lc/a/a/r/a;->y:Z

    iget-boolean v2, p1, Lc/a/a/r/a;->y:Z

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lc/a/a/r/a;->d:Lcom/bumptech/glide/load/n/j;

    iget-object v2, p1, Lc/a/a/r/a;->d:Lcom/bumptech/glide/load/n/j;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lc/a/a/r/a;->e:Lc/a/a/h;

    iget-object v2, p1, Lc/a/a/r/a;->e:Lc/a/a/h;

    if-ne v0, v2, :cond_ae

    iget-object v0, p0, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    iget-object v2, p1, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lc/a/a/r/a;->s:Ljava/util/Map;

    iget-object v2, p1, Lc/a/a/r/a;->s:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lc/a/a/r/a;->t:Ljava/lang/Class;

    iget-object v2, p1, Lc/a/a/r/a;->t:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lc/a/a/r/a;->m:Lcom/bumptech/glide/load/g;

    iget-object v2, p1, Lc/a/a/r/a;->m:Lcom/bumptech/glide/load/g;

    invoke-static {v0, v2}, Lc/a/a/t/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lc/a/a/r/a;->v:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lc/a/a/r/a;->v:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p1}, Lc/a/a/t/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_ae

    const/4 v1, 0x1

    :cond_ae
    return v1
.end method

.method public final f()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/a;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final g()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/a;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lc/a/a/r/a;->q:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lc/a/a/r/a;->c:F

    invoke-static {v0}, Lc/a/a/t/k;->a(F)I

    move-result v0

    iget v1, p0, Lc/a/a/r/a;->g:I

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(II)I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lc/a/a/r/a;->i:I

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(II)I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/a;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lc/a/a/r/a;->q:I

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(II)I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lc/a/a/r/a;->j:Z

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(ZI)I

    move-result v0

    iget v1, p0, Lc/a/a/r/a;->k:I

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(II)I

    move-result v0

    iget v1, p0, Lc/a/a/r/a;->l:I

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(II)I

    move-result v0

    iget-boolean v1, p0, Lc/a/a/r/a;->n:Z

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(ZI)I

    move-result v0

    iget-boolean v1, p0, Lc/a/a/r/a;->o:Z

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(ZI)I

    move-result v0

    iget-boolean v1, p0, Lc/a/a/r/a;->x:Z

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(ZI)I

    move-result v0

    iget-boolean v1, p0, Lc/a/a/r/a;->y:Z

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(ZI)I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/a;->d:Lcom/bumptech/glide/load/n/j;

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/a;->e:Lc/a/a/h;

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/a;->s:Ljava/util/Map;

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/a;->t:Ljava/lang/Class;

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/a;->m:Lcom/bumptech/glide/load/g;

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lc/a/a/r/a;->v:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lc/a/a/t/k;->a(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lc/a/a/r/a;->y:Z

    return v0
.end method

.method public final l()Lcom/bumptech/glide/load/i;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/a;->r:Lcom/bumptech/glide/load/i;

    return-object v0
.end method

.method public final m()I
    .registers 2

    iget v0, p0, Lc/a/a/r/a;->k:I

    return v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lc/a/a/r/a;->l:I

    return v0
.end method

.method public final o()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/a;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final p()I
    .registers 2

    iget v0, p0, Lc/a/a/r/a;->i:I

    return v0
.end method

.method public final q()Lc/a/a/h;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/a;->e:Lc/a/a/h;

    return-object v0
.end method

.method public final r()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/r/a;->t:Ljava/lang/Class;

    return-object v0
.end method

.method public final s()Lcom/bumptech/glide/load/g;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/a;->m:Lcom/bumptech/glide/load/g;

    return-object v0
.end method

.method public final t()F
    .registers 2

    iget v0, p0, Lc/a/a/r/a;->c:F

    return v0
.end method

.method public final u()Landroid/content/res/Resources$Theme;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/a;->v:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final v()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/l<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/r/a;->s:Ljava/util/Map;

    return-object v0
.end method

.method public final w()Z
    .registers 2

    iget-boolean v0, p0, Lc/a/a/r/a;->A:Z

    return v0
.end method

.method public final x()Z
    .registers 2

    iget-boolean v0, p0, Lc/a/a/r/a;->x:Z

    return v0
.end method

.method public final y()Z
    .registers 2

    iget-boolean v0, p0, Lc/a/a/r/a;->j:Z

    return v0
.end method

.method public final z()Z
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lc/a/a/r/a;->a(I)Z

    move-result v0

    return v0
.end method
