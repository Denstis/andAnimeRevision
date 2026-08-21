###### Class b.a.l.a.b (b.a.l.a.b)
.class Lb/a/l/a/b;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/l/a/b$b;,
        Lb/a/l/a/b$c;
    }
.end annotation


# instance fields
.field private b:Lb/a/l/a/b$c;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Ljava/lang/Runnable;

.field private k:J

.field private l:J

.field private m:Lb/a/l/a/b$b;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lb/a/l/a/b;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lb/a/l/a/b;->h:I

    return-void
.end method

.method static a(Landroid/content/res/Resources;I)I
    .registers 2

    if-nez p0, :cond_3

    goto :goto_9

    :cond_3
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_9
    if-nez p1, :cond_d

    const/16 p1, 0xa0

    :cond_d
    return p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iget-object v0, p0, Lb/a/l/a/b;->m:Lb/a/l/a/b$b;

    if-nez v0, :cond_b

    new-instance v0, Lb/a/l/a/b$b;

    invoke-direct {v0}, Lb/a/l/a/b$b;-><init>()V

    iput-object v0, p0, Lb/a/l/a/b;->m:Lb/a/l/a/b$b;

    :cond_b
    iget-object v0, p0, Lb/a/l/a/b;->m:Lb/a/l/a/b$b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/l/a/b$b;->a(Landroid/graphics/drawable/Drawable$Callback;)Lb/a/l/a/b$b;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :try_start_17
    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget v0, v0, Lb/a/l/a/b$c;->A:I

    if-gtz v0, :cond_26

    iget-boolean v0, p0, Lb/a/l/a/b;->g:Z

    if-eqz v0, :cond_26

    iget v0, p0, Lb/a/l/a/b;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_26
    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-boolean v0, v0, Lb/a/l/a/b$c;->E:Z

    if-eqz v0, :cond_34

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-object v0, v0, Lb/a/l/a/b$c;->D:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4e

    :cond_34
    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-boolean v0, v0, Lb/a/l/a/b$c;->H:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-object v0, v0, Lb/a/l/a/b$c;->F:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_41
    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-boolean v0, v0, Lb/a/l/a/b$c;->I:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-object v0, v0, Lb/a/l/a/b$c;->G:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_4e
    :goto_4e
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-boolean v0, v0, Lb/a/l/a/b$c;->x:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_7f

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_7f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_8c

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-boolean v0, v0, Lb/a/l/a/b$c;->C:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_8c
    iget-object v0, p0, Lb/a/l/a/b;->c:Landroid/graphics/Rect;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_a1

    if-eqz v0, :cond_a1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_a1
    .catchall {:try_start_17 .. :try_end_a1} :catchall_ab

    :cond_a1
    iget-object v0, p0, Lb/a/l/a/b;->m:Lb/a/l/a/b$b;

    invoke-virtual {v0}, Lb/a/l/a/b$b;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_ab
    move-exception v0

    iget-object v1, p0, Lb/a/l/a/b;->m:Lb/a/l/a/b$b;

    invoke-virtual {v1}, Lb/a/l/a/b$b;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    throw v0
.end method

.method private c()Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-virtual {p0}, Lb/a/l/a/b;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method a()Lb/a/l/a/b$c;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method final a(Landroid/content/res/Resources;)V
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0, p1}, Lb/a/l/a/b$c;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method protected a(Lb/a/l/a/b$c;)V
    .registers 3

    iput-object p1, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget v0, p0, Lb/a/l/a/b;->h:I

    if-ltz v0, :cond_13

    invoke-virtual {p1, v0}, Lb/a/l/a/b$c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_13

    invoke-direct {p0, p1}, Lb/a/l/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    const/4 p1, 0x0

    iput-object p1, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method a(Z)V
    .registers 15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/l/a/b;->g:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_36

    iget-wide v9, p0, Lb/a/l/a/b;->k:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_38

    cmp-long v11, v9, v1

    if-gtz v11, :cond_20

    iget v9, p0, Lb/a/l/a/b;->f:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_36

    :cond_20
    sub-long/2addr v9, v1

    mul-long v9, v9, v4

    long-to-int v10, v9

    iget-object v9, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget v9, v9, Lb/a/l/a/b$c;->A:I

    div-int/2addr v10, v9

    rsub-int v9, v10, 0xff

    iget v10, p0, Lb/a/l/a/b;->f:I

    mul-int v9, v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v3, 0x1

    goto :goto_39

    :cond_36
    :goto_36
    iput-wide v7, p0, Lb/a/l/a/b;->k:J

    :cond_38
    const/4 v3, 0x0

    :goto_39
    iget-object v9, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_61

    iget-wide v10, p0, Lb/a/l/a/b;->l:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_63

    cmp-long v12, v10, v1

    if-gtz v12, :cond_4e

    invoke-virtual {v9, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_61

    :cond_4e
    sub-long/2addr v10, v1

    mul-long v10, v10, v4

    long-to-int v3, v10

    iget-object v4, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget v4, v4, Lb/a/l/a/b$c;->B:I

    div-int/2addr v3, v4

    iget v4, p0, Lb/a/l/a/b;->f:I

    mul-int v3, v3, v4

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_64

    :cond_61
    :goto_61
    iput-wide v7, p0, Lb/a/l/a/b;->l:J

    :cond_63
    move v0, v3

    :goto_64
    if-eqz p1, :cond_70

    if-eqz v0, :cond_70

    iget-object p1, p0, Lb/a/l/a/b;->j:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_70
    return-void
.end method

.method a(I)Z
    .registers 11

    iget v0, p0, Lb/a/l/a/b;->h:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget v0, v0, Lb/a/l/a/b$c;->B:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_2e

    iget-object v0, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1a
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    iput-object v0, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget v0, v0, Lb/a/l/a/b$c;->B:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/a/l/a/b;->l:J

    goto :goto_35

    :cond_29
    iput-object v4, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    iput-wide v5, p0, Lb/a/l/a/b;->l:J

    goto :goto_35

    :cond_2e
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_35

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_35
    :goto_35
    if-ltz p1, :cond_55

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget v1, v0, Lb/a/l/a/b$c;->h:I

    if-ge p1, v1, :cond_55

    invoke-virtual {v0, p1}, Lb/a/l/a/b$c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lb/a/l/a/b;->h:I

    if-eqz v0, :cond_5a

    iget-object p1, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget p1, p1, Lb/a/l/a/b$c;->A:I

    if-lez p1, :cond_51

    int-to-long v7, p1

    add-long/2addr v2, v7

    iput-wide v2, p0, Lb/a/l/a/b;->k:J

    :cond_51
    invoke-direct {p0, v0}, Lb/a/l/a/b;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5a

    :cond_55
    iput-object v4, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    iput p1, p0, Lb/a/l/a/b;->h:I

    :cond_5a
    :goto_5a
    iget-wide v0, p0, Lb/a/l/a/b;->k:J

    const/4 p1, 0x1

    cmp-long v2, v0, v5

    if-nez v2, :cond_67

    iget-wide v0, p0, Lb/a/l/a/b;->l:J

    cmp-long v2, v0, v5

    if-eqz v2, :cond_79

    :cond_67
    iget-object v0, p0, Lb/a/l/a/b;->j:Ljava/lang/Runnable;

    if-nez v0, :cond_73

    new-instance v0, Lb/a/l/a/b$a;

    invoke-direct {v0, p0}, Lb/a/l/a/b$a;-><init>(Lb/a/l/a/b;)V

    iput-object v0, p0, Lb/a/l/a/b;->j:Ljava/lang/Runnable;

    goto :goto_76

    :cond_73
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :goto_76
    invoke-virtual {p0, p1}, Lb/a/l/a/b;->a(Z)V

    :cond_79
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return p1
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0, p1}, Lb/a/l/a/b$c;->a(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method b()I
    .registers 2

    iget v0, p0, Lb/a/l/a/b;->h:I

    return v0
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    iget-object v0, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget v0, p0, Lb/a/l/a/b;->f:I

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v1}, Lb/a/l/a/b$c;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {p0}, Lb/a/l/a/b;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lb/a/l/a/b$c;->d:I

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_b
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->e()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, -0x1

    :goto_19
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->i()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, -0x1

    :goto_19
    return v0
.end method

.method public getMinimumHeight()I
    .registers 2

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->f()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public getMinimumWidth()I
    .registers 2

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->l()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->g()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    :cond_b
    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->j()I

    move-result v0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, -0x2

    :goto_13
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_7
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 5

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {v0}, Lb/a/l/a/b$c;->h()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_29

    :cond_1a
    const/4 v0, 0x0

    goto :goto_29

    :cond_1c
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_29

    :cond_25
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_29
    invoke-direct {p0}, Lb/a/l/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_37

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    :cond_37
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lb/a/l/a/b$c;->k()V

    :cond_7
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-boolean v0, v0, Lb/a/l/a/b$c;->C:Z

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 8

    iget-object v0, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    iget-object v2, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-boolean v2, p0, Lb/a/l/a/b;->g:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lb/a/l/a/b;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_20
    iget-wide v2, p0, Lb/a/l/a/b;->l:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2b

    iput-wide v4, p0, Lb/a/l/a/b;->l:J

    const/4 v0, 0x1

    :cond_2b
    iget-wide v2, p0, Lb/a/l/a/b;->k:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_34

    iput-wide v4, p0, Lb/a/l/a/b;->k:J

    const/4 v0, 0x1

    :cond_34
    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_39
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-boolean v0, p0, Lb/a/l/a/b;->i:Z

    if-nez v0, :cond_17

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_17

    invoke-virtual {p0}, Lb/a/l/a/b;->a()Lb/a/l/a/b$c;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/l/a/b$c;->m()V

    invoke-virtual {p0, v0}, Lb/a/l/a/b;->a(Lb/a/l/a/b$c;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/l/a/b;->i:Z

    :cond_17
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_e
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 4

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    invoke-virtual {p0}, Lb/a/l/a/b;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lb/a/l/a/b$c;->b(II)Z

    move-result p1

    return p1
.end method

.method protected onLevelChange(I)Z
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method protected onStateChange([I)Z
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_11
    return-void
.end method

.method public setAlpha(I)V
    .registers 8

    iget-boolean v0, p0, Lb/a/l/a/b;->g:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lb/a/l/a/b;->f:I

    if-eq v0, p1, :cond_21

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/l/a/b;->g:Z

    iput p1, p0, Lb/a/l/a/b;->f:I

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_21

    iget-wide v1, p0, Lb/a/l/a/b;->k:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1d

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_21

    :cond_1d
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lb/a/l/a/b;->a(Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 4

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-boolean v1, v0, Lb/a/l/a/b$c;->C:Z

    if-eq v1, p1, :cond_11

    iput-boolean p1, v0, Lb/a/l/a/b$c;->C:Z

    iget-object p1, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11

    iget-boolean v0, v0, Lb/a/l/a/b$c;->C:Z

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    :cond_11
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/a/l/a/b$c;->E:Z

    iget-object v1, v0, Lb/a/l/a/b$c;->D:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_12

    iput-object p1, v0, Lb/a/l/a/b$c;->D:Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_12
    return-void
.end method

.method public setDither(Z)V
    .registers 4

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    iget-boolean v1, v0, Lb/a/l/a/b$c;->x:Z

    if-eq v1, p1, :cond_11

    iput-boolean p1, v0, Lb/a/l/a/b$c;->x:Z

    iget-object p1, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11

    iget-boolean v0, v0, Lb/a/l/a/b$c;->x:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_11
    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    iget-object v0, p0, Lb/a/l/a/b;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lb/a/l/a/b;->c:Landroid/graphics/Rect;

    goto :goto_f

    :cond_c
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    :goto_f
    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_16
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/a/l/a/b$c;->H:Z

    iget-object v1, v0, Lb/a/l/a/b$c;->F:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_10

    iput-object p1, v0, Lb/a/l/a/b$c;->F:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_10
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    iget-object v0, p0, Lb/a/l/a/b;->b:Lb/a/l/a/b$c;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/a/l/a/b$c;->I:Z

    iget-object v1, v0, Lb/a/l/a/b$c;->G:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_10

    iput-object p1, v0, Lb/a/l/a/b$c;->G:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_10
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Lb/a/l/a/b;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_b
    iget-object v1, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_12
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lb/a/l/a/b;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

###### Class b.a.l.a.b.a (b.a.l.a.b$a)
.class Lb/a/l/a/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/l/a/b;->a(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lb/a/l/a/b;


# direct methods
.method constructor <init>(Lb/a/l/a/b;)V
    .registers 2

    iput-object p1, p0, Lb/a/l/a/b$a;->b:Lb/a/l/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b$a;->b:Lb/a/l/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/a/l/a/b;->a(Z)V

    iget-object v0, p0, Lb/a/l/a/b$a;->b:Lb/a/l/a/b;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

###### Class b.a.l.a.b.C0094b (b.a.l.a.b$b)
.class Lb/a/l/a/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/l/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private b:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable$Callback;
    .registers 3

    iget-object v0, p0, Lb/a/l/a/b$b;->b:Landroid/graphics/drawable/Drawable$Callback;

    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/l/a/b$b;->b:Landroid/graphics/drawable/Drawable$Callback;

    return-object v0
.end method

.method public a(Landroid/graphics/drawable/Drawable$Callback;)Lb/a/l/a/b$b;
    .registers 2

    iput-object p1, p0, Lb/a/l/a/b$b;->b:Landroid/graphics/drawable/Drawable$Callback;

    return-object p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    iget-object v0, p0, Lb/a/l/a/b$b;->b:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_7
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lb/a/l/a/b$b;->b:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

###### Class b.a.l.a.b.c (b.a.l.a.b$c)
.class abstract Lb/a/l/a/b$c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/l/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# instance fields
.field A:I

.field B:I

.field C:Z

.field D:Landroid/graphics/ColorFilter;

.field E:Z

.field F:Landroid/content/res/ColorStateList;

.field G:Landroid/graphics/PorterDuff$Mode;

.field H:Z

.field I:Z

.field final a:Lb/a/l/a/b;

.field b:Landroid/content/res/Resources;

.field c:I

.field d:I

.field e:I

.field f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field g:[Landroid/graphics/drawable/Drawable;

.field h:I

.field i:Z

.field j:Z

.field k:Landroid/graphics/Rect;

.field l:Z

.field m:Z

.field n:I

.field o:I

.field p:I

.field q:I

.field r:Z

.field s:I

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:I


# direct methods
.method constructor <init>(Lb/a/l/a/b$c;Lb/a/l/a/b;Landroid/content/res/Resources;)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, Lb/a/l/a/b$c;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/l/a/b$c;->i:Z

    iput-boolean v0, p0, Lb/a/l/a/b$c;->l:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/a/l/a/b$c;->x:Z

    iput v0, p0, Lb/a/l/a/b$c;->A:I

    iput v0, p0, Lb/a/l/a/b$c;->B:I

    iput-object p2, p0, Lb/a/l/a/b$c;->a:Lb/a/l/a/b;

    if-eqz p3, :cond_19

    move-object p2, p3

    goto :goto_1f

    :cond_19
    if-eqz p1, :cond_1e

    iget-object p2, p1, Lb/a/l/a/b$c;->b:Landroid/content/res/Resources;

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    iput-object p2, p0, Lb/a/l/a/b$c;->b:Landroid/content/res/Resources;

    if-eqz p1, :cond_26

    iget p2, p1, Lb/a/l/a/b$c;->c:I

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    invoke-static {p3, p2}, Lb/a/l/a/b;->a(Landroid/content/res/Resources;I)I

    move-result p2

    iput p2, p0, Lb/a/l/a/b$c;->c:I

    if-eqz p1, :cond_ee

    iget p2, p1, Lb/a/l/a/b$c;->d:I

    iput p2, p0, Lb/a/l/a/b$c;->d:I

    iget p2, p1, Lb/a/l/a/b$c;->e:I

    iput p2, p0, Lb/a/l/a/b$c;->e:I

    iput-boolean v1, p0, Lb/a/l/a/b$c;->v:Z

    iput-boolean v1, p0, Lb/a/l/a/b$c;->w:Z

    iget-boolean p2, p1, Lb/a/l/a/b$c;->i:Z

    iput-boolean p2, p0, Lb/a/l/a/b$c;->i:Z

    iget-boolean p2, p1, Lb/a/l/a/b$c;->l:Z

    iput-boolean p2, p0, Lb/a/l/a/b$c;->l:Z

    iget-boolean p2, p1, Lb/a/l/a/b$c;->x:Z

    iput-boolean p2, p0, Lb/a/l/a/b$c;->x:Z

    iget-boolean p2, p1, Lb/a/l/a/b$c;->y:Z

    iput-boolean p2, p0, Lb/a/l/a/b$c;->y:Z

    iget p2, p1, Lb/a/l/a/b$c;->z:I

    iput p2, p0, Lb/a/l/a/b$c;->z:I

    iget p2, p1, Lb/a/l/a/b$c;->A:I

    iput p2, p0, Lb/a/l/a/b$c;->A:I

    iget p2, p1, Lb/a/l/a/b$c;->B:I

    iput p2, p0, Lb/a/l/a/b$c;->B:I

    iget-boolean p2, p1, Lb/a/l/a/b$c;->C:Z

    iput-boolean p2, p0, Lb/a/l/a/b$c;->C:Z

    iget-object p2, p1, Lb/a/l/a/b$c;->D:Landroid/graphics/ColorFilter;

    iput-object p2, p0, Lb/a/l/a/b$c;->D:Landroid/graphics/ColorFilter;

    iget-boolean p2, p1, Lb/a/l/a/b$c;->E:Z

    iput-boolean p2, p0, Lb/a/l/a/b$c;->E:Z

    iget-object p2, p1, Lb/a/l/a/b$c;->F:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Lb/a/l/a/b$c;->F:Landroid/content/res/ColorStateList;

    iget-object p2, p1, Lb/a/l/a/b$c;->G:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lb/a/l/a/b$c;->G:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p2, p1, Lb/a/l/a/b$c;->H:Z

    iput-boolean p2, p0, Lb/a/l/a/b$c;->H:Z

    iget-boolean p2, p1, Lb/a/l/a/b$c;->I:Z

    iput-boolean p2, p0, Lb/a/l/a/b$c;->I:Z

    iget p2, p1, Lb/a/l/a/b$c;->c:I

    iget p3, p0, Lb/a/l/a/b$c;->c:I

    if-ne p2, p3, :cond_9e

    iget-boolean p2, p1, Lb/a/l/a/b$c;->j:Z

    if-eqz p2, :cond_88

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, Lb/a/l/a/b$c;->k:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lb/a/l/a/b$c;->k:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lb/a/l/a/b$c;->j:Z

    :cond_88
    iget-boolean p2, p1, Lb/a/l/a/b$c;->m:Z

    if-eqz p2, :cond_9e

    iget p2, p1, Lb/a/l/a/b$c;->n:I

    iput p2, p0, Lb/a/l/a/b$c;->n:I

    iget p2, p1, Lb/a/l/a/b$c;->o:I

    iput p2, p0, Lb/a/l/a/b$c;->o:I

    iget p2, p1, Lb/a/l/a/b$c;->p:I

    iput p2, p0, Lb/a/l/a/b$c;->p:I

    iget p2, p1, Lb/a/l/a/b$c;->q:I

    iput p2, p0, Lb/a/l/a/b$c;->q:I

    iput-boolean v1, p0, Lb/a/l/a/b$c;->m:Z

    :cond_9e
    iget-boolean p2, p1, Lb/a/l/a/b$c;->r:Z

    if-eqz p2, :cond_a8

    iget p2, p1, Lb/a/l/a/b$c;->s:I

    iput p2, p0, Lb/a/l/a/b$c;->s:I

    iput-boolean v1, p0, Lb/a/l/a/b$c;->r:Z

    :cond_a8
    iget-boolean p2, p1, Lb/a/l/a/b$c;->t:Z

    if-eqz p2, :cond_b2

    iget-boolean p2, p1, Lb/a/l/a/b$c;->u:Z

    iput-boolean p2, p0, Lb/a/l/a/b$c;->u:Z

    iput-boolean v1, p0, Lb/a/l/a/b$c;->t:Z

    :cond_b2
    iget-object p2, p1, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    iget p3, p1, Lb/a/l/a/b$c;->h:I

    iput p3, p0, Lb/a/l/a/b$c;->h:I

    iget-object p1, p1, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    if-eqz p1, :cond_c6

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    goto :goto_cd

    :cond_c6
    new-instance p1, Landroid/util/SparseArray;

    iget p3, p0, Lb/a/l/a/b$c;->h:I

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    :goto_cd
    iput-object p1, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    iget p1, p0, Lb/a/l/a/b$c;->h:I

    :goto_d1
    if-ge v0, p1, :cond_f6

    aget-object p3, p2, v0

    if-eqz p3, :cond_eb

    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    if-eqz p3, :cond_e5

    iget-object v1, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_eb

    :cond_e5
    iget-object p3, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v1, p2, v0

    aput-object v1, p3, v0

    :cond_eb
    :goto_eb
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    :cond_ee
    const/16 p1, 0xa

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lb/a/l/a/b$c;->h:I

    :cond_f6
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    iget v0, p0, Lb/a/l/a/b$c;->z:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lb/a/l/a/b$c;->a:Lb/a/l/a/b;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p1
.end method

.method private n()V
    .registers 7

    iget-object v0, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_2a

    iget-object v2, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v4, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lb/a/l/a/b$c;->b:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lb/a/l/a/b$c;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    :cond_2d
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)I
    .registers 6

    iget v0, p0, Lb/a/l/a/b$c;->h:I

    iget-object v1, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_c

    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Lb/a/l/a/b$c;->a(II)V

    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v3, p0, Lb/a/l/a/b$c;->a:Lb/a/l/a/b;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    iget v3, p0, Lb/a/l/a/b$c;->h:I

    add-int/2addr v3, v1

    iput v3, p0, Lb/a/l/a/b$c;->h:I

    iget v1, p0, Lb/a/l/a/b$c;->e:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, p0, Lb/a/l/a/b$c;->e:I

    invoke-virtual {p0}, Lb/a/l/a/b$c;->k()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/a/l/a/b$c;->k:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lb/a/l/a/b$c;->j:Z

    iput-boolean v2, p0, Lb/a/l/a/b$c;->m:Z

    iput-boolean v2, p0, Lb/a/l/a/b$c;->v:Z

    return v0
.end method

.method public final a(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    iget-object v0, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    iget-object v0, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_38

    iget-object v2, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v3, p0, Lb/a/l/a/b$c;->b:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, Lb/a/l/a/b$c;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    iget-object p1, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object p1, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_37

    iput-object v1, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    :cond_37
    return-object v2

    :cond_38
    return-object v1
.end method

.method public a(II)V
    .registers 5

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method final a(Landroid/content/res/Resources$Theme;)V
    .registers 7

    if-eqz p1, :cond_32

    invoke-direct {p0}, Lb/a/l/a/b$c;->n()V

    iget v0, p0, Lb/a/l/a/b$c;->h:I

    iget-object v1, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_2b

    aget-object v3, v1, v2

    if-eqz v3, :cond_28

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_28

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget v3, p0, Lb/a/l/a/b$c;->e:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Lb/a/l/a/b$c;->e:I

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_2b
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a/l/a/b$c;->a(Landroid/content/res/Resources;)V

    :cond_32
    return-void
.end method

.method final a(Landroid/content/res/Resources;)V
    .registers 3

    if-eqz p1, :cond_15

    iput-object p1, p0, Lb/a/l/a/b$c;->b:Landroid/content/res/Resources;

    iget v0, p0, Lb/a/l/a/b$c;->c:I

    invoke-static {p1, v0}, Lb/a/l/a/b;->a(Landroid/content/res/Resources;I)I

    move-result p1

    iget v0, p0, Lb/a/l/a/b$c;->c:I

    iput p1, p0, Lb/a/l/a/b$c;->c:I

    if-eq v0, p1, :cond_15

    const/4 p1, 0x0

    iput-boolean p1, p0, Lb/a/l/a/b$c;->m:Z

    iput-boolean p1, p0, Lb/a/l/a/b$c;->j:Z

    :cond_15
    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/a/l/a/b$c;->l:Z

    return-void
.end method

.method public declared-synchronized a()Z
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lb/a/l/a/b$c;->v:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lb/a/l/a/b$c;->w:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2a

    monitor-exit p0

    return v0

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lb/a/l/a/b$c;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/l/a/b$c;->v:Z

    iget v1, p0, Lb/a/l/a/b$c;->h:I

    iget-object v2, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v1, :cond_26

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_23

    iput-boolean v3, p0, Lb/a/l/a/b$c;->w:Z
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_2a

    monitor-exit p0

    return v3

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_26
    :try_start_26
    iput-boolean v0, p0, Lb/a/l/a/b$c;->w:Z
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return v0

    :catchall_2a
    move-exception v0

    monitor-exit p0

    goto :goto_2e

    :goto_2d
    throw v0

    :goto_2e
    goto :goto_2d
.end method

.method protected b()V
    .registers 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/l/a/b$c;->m:Z

    invoke-direct {p0}, Lb/a/l/a/b$c;->n()V

    iget v0, p0, Lb/a/l/a/b$c;->h:I

    iget-object v1, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    iput v2, p0, Lb/a/l/a/b$c;->o:I

    iput v2, p0, Lb/a/l/a/b$c;->n:I

    const/4 v2, 0x0

    iput v2, p0, Lb/a/l/a/b$c;->q:I

    iput v2, p0, Lb/a/l/a/b$c;->p:I

    :goto_14
    if-ge v2, v0, :cond_43

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, Lb/a/l/a/b$c;->n:I

    if-le v4, v5, :cond_22

    iput v4, p0, Lb/a/l/a/b$c;->n:I

    :cond_22
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, Lb/a/l/a/b$c;->o:I

    if-le v4, v5, :cond_2c

    iput v4, p0, Lb/a/l/a/b$c;->o:I

    :cond_2c
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget v5, p0, Lb/a/l/a/b$c;->p:I

    if-le v4, v5, :cond_36

    iput v4, p0, Lb/a/l/a/b$c;->p:I

    :cond_36
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    iget v4, p0, Lb/a/l/a/b$c;->q:I

    if-le v3, v4, :cond_40

    iput v3, p0, Lb/a/l/a/b$c;->q:I

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_43
    return-void
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lb/a/l/a/b$c;->A:I

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/a/l/a/b$c;->i:Z

    return-void
.end method

.method final b(II)Z
    .registers 10

    iget v0, p0, Lb/a/l/a/b$c;->h:I

    iget-object v1, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    if-ge v3, v0, :cond_21

    aget-object v5, v1, v3

    if-eqz v5, :cond_1e

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_1a

    aget-object v5, v1, v3

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v5

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    :goto_1b
    if-ne v3, p2, :cond_1e

    move v4, v5

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_21
    iput p1, p0, Lb/a/l/a/b$c;->z:I

    return v4
.end method

.method final c()I
    .registers 2

    iget-object v0, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public final c(I)V
    .registers 2

    iput p1, p0, Lb/a/l/a/b$c;->B:I

    return-void
.end method

.method public canApplyTheme()Z
    .registers 7

    iget v0, p0, Lb/a/l/a/b$c;->h:I

    iget-object v1, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_28

    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_25

    return v5

    :cond_14
    iget-object v4, p0, Lb/a/l/a/b$c;->f:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_25

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_25

    return v5

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_28
    return v2
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lb/a/l/a/b$c;->h:I

    return v0
.end method

.method public final e()I
    .registers 2

    iget-boolean v0, p0, Lb/a/l/a/b$c;->m:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lb/a/l/a/b$c;->b()V

    :cond_7
    iget v0, p0, Lb/a/l/a/b$c;->o:I

    return v0
.end method

.method public final f()I
    .registers 2

    iget-boolean v0, p0, Lb/a/l/a/b$c;->m:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lb/a/l/a/b$c;->b()V

    :cond_7
    iget v0, p0, Lb/a/l/a/b$c;->q:I

    return v0
.end method

.method public final g()I
    .registers 2

    iget-boolean v0, p0, Lb/a/l/a/b$c;->m:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lb/a/l/a/b$c;->b()V

    :cond_7
    iget v0, p0, Lb/a/l/a/b$c;->p:I

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    iget v0, p0, Lb/a/l/a/b$c;->d:I

    iget v1, p0, Lb/a/l/a/b$c;->e:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final h()Landroid/graphics/Rect;
    .registers 9

    iget-boolean v0, p0, Lb/a/l/a/b$c;->i:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lb/a/l/a/b$c;->k:Landroid/graphics/Rect;

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lb/a/l/a/b$c;->j:Z

    if-eqz v0, :cond_f

    goto :goto_58

    :cond_f
    invoke-direct {p0}, Lb/a/l/a/b$c;->n()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v2, p0, Lb/a/l/a/b$c;->h:I

    iget-object v3, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v2, :cond_52

    aget-object v6, v3, v1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4f

    if-nez v5, :cond_2f

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2f
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_37

    iput v6, v5, Landroid/graphics/Rect;->left:I

    :cond_37
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_3f

    iput v6, v5, Landroid/graphics/Rect;->top:I

    :cond_3f
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_47

    iput v6, v5, Landroid/graphics/Rect;->right:I

    :cond_47
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_4f

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/l/a/b$c;->j:Z

    iput-object v5, p0, Lb/a/l/a/b$c;->k:Landroid/graphics/Rect;

    return-object v5

    :cond_58
    :goto_58
    iget-object v0, p0, Lb/a/l/a/b$c;->k:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final i()I
    .registers 2

    iget-boolean v0, p0, Lb/a/l/a/b$c;->m:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lb/a/l/a/b$c;->b()V

    :cond_7
    iget v0, p0, Lb/a/l/a/b$c;->n:I

    return v0
.end method

.method public final j()I
    .registers 7

    iget-boolean v0, p0, Lb/a/l/a/b$c;->r:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lb/a/l/a/b$c;->s:I

    return v0

    :cond_7
    invoke-direct {p0}, Lb/a/l/a/b$c;->n()V

    iget v0, p0, Lb/a/l/a/b$c;->h:I

    iget-object v1, p0, Lb/a/l/a/b$c;->g:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_18

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_19

    :cond_18
    const/4 v2, -0x2

    :goto_19
    const/4 v3, 0x1

    move v4, v2

    const/4 v2, 0x1

    :goto_1c
    if-ge v2, v0, :cond_2b

    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_2b
    iput v4, p0, Lb/a/l/a/b$c;->s:I

    iput-boolean v3, p0, Lb/a/l/a/b$c;->r:Z

    return v4
.end method

.method k()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/l/a/b$c;->r:Z

    iput-boolean v0, p0, Lb/a/l/a/b$c;->t:Z

    return-void
.end method

.method public final l()Z
    .registers 2

    iget-boolean v0, p0, Lb/a/l/a/b$c;->l:Z

    return v0
.end method

.method abstract m()V
.end method
