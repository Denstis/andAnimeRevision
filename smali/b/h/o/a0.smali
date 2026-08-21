###### Class b.h.o.a0 (b.h.o.a0)
.class public Lb/h/o/a0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/Object;)Lb/h/o/a0;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Lb/h/o/a0;

    invoke-direct {v0, p0}, Lb/h/o/a0;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_a
    return-object p0
.end method

.method static a(Lb/h/o/a0;)Ljava/lang/Object;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_6

    :cond_4
    iget-object p0, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    :goto_6
    return-object p0
.end method


# virtual methods
.method public a()Lb/h/o/a0;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_14

    new-instance v0, Lb/h/o/a0;

    iget-object v1, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/h/o/a0;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(IIII)Lb/h/o/a0;
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_14

    new-instance v0, Lb/h/o/a0;

    iget-object v1, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowInsets;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/h/o/a0;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_22

    const-class v2, Lb/h/o/a0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_22

    :cond_10
    check-cast p1, Lb/h/o/a0;

    iget-object v2, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    iget-object p1, p1, Lb/h/o/a0;->a:Ljava/lang/Object;

    if-nez v2, :cond_1d

    if-nez p1, :cond_1b

    goto :goto_21

    :cond_1b
    const/4 v0, 0x0

    goto :goto_21

    :cond_1d
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_21
    return v0

    :cond_22
    :goto_22
    return v1
.end method

.method public f()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lb/h/o/a0;->a:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method
