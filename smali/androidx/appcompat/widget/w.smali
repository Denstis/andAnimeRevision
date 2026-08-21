###### Class androidx.appcompat.widget.w (androidx.appcompat.widget.w)
.class public Landroidx/appcompat/widget/w;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements Lb/h/o/r;
.implements Landroidx/core/widget/b;


# instance fields
.field private final b:Landroidx/appcompat/widget/e;

.field private final c:Landroidx/appcompat/widget/v;

.field private d:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lb/h/m/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-static {p1}, Landroidx/appcompat/widget/n0;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/e;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/e;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/e;

    iget-object p1, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/e;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/e;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/v;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/v;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    iget-object p1, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/v;->a(Landroid/util/AttributeSet;I)V

    iget-object p1, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->a()V

    return-void
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/w;->d:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    :try_start_5
    iput-object v1, p0, Landroidx/appcompat/widget/w;->d:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/h/m/c;

    invoke-static {p0, v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Lb/h/m/c;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_10} :catch_10
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->a()V

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->a()V

    :cond_11
    return-void
.end method

.method public getAutoSizeMaxTextSize()I
    .registers 2

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->c()I

    move-result v0

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeMinTextSize()I
    .registers 2

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->d()I

    move-result v0

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeStepGranularity()I
    .registers 2

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->e()I

    move-result v0

    return v0

    :cond_12
    const/4 v0, -0x1

    return v0
.end method

.method public getAutoSizeTextAvailableSizes()[I
    .registers 2

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_9

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->f()[I

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public getAutoSizeTextType()I
    .registers 4

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-super {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1

    :cond_e
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroidx/appcompat/widget/v;->g()I

    move-result v0

    return v0

    :cond_17
    return v1
.end method

.method public getFirstBaselineToTopHeight()I
    .registers 2

    invoke-static {p0}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getLastBaselineToBottomHeight()I
    .registers 2

    invoke-static {p0}, Landroidx/core/widget/i;->c(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->b()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/appcompat/widget/e;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 2

    invoke-direct {p0}, Landroidx/appcompat/widget/w;->c()V

    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextMetricsParamsCompat()Lb/h/m/c$a;
    .registers 2

    invoke-static {p0}, Landroidx/core/widget/i;->f(Landroid/widget/TextView;)Lb/h/m/c$a;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {v0, p1, p0}, Landroidx/appcompat/widget/l;->a(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_f

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/v;->a(ZIIII)V

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-direct {p0}, Landroidx/appcompat/widget/w;->c()V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p1, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz p1, :cond_16

    sget-boolean p2, Landroidx/core/widget/b;->a:Z

    if-nez p2, :cond_16

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->h()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    invoke-virtual {p1}, Landroidx/appcompat/widget/v;->b()V

    :cond_16
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_f

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/v;->a(IIII)V

    :cond_f
    :goto_f
    return-void
.end method

.method public setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    goto :goto_f

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->a([II)V

    :cond_f
    :goto_f
    return-void
.end method

.method public setAutoSizeTextTypeWithDefaults(I)V
    .registers 3

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    goto :goto_f

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/v;->a(I)V

    :cond_f
    :goto_f
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(I)V

    :cond_a
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setFirstBaselineToTopHeight(I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1}, Landroid/widget/TextView;->setFirstBaselineToTopHeight(I)V

    goto :goto_d

    :cond_a
    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    :goto_d
    return-void
.end method

.method public setLastBaselineToBottomHeight(I)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLastBaselineToBottomHeight(I)V

    goto :goto_d

    :cond_a
    invoke-static {p0, p1}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;I)V

    :goto_d
    return-void
.end method

.method public setLineHeight(I)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/widget/i;->c(Landroid/widget/TextView;I)V

    return-void
.end method

.method public setPrecomputedText(Lb/h/m/c;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Lb/h/m/c;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->b(Landroid/content/res/ColorStateList;)V

    :cond_7
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/w;->b:Landroidx/appcompat/widget/e;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/e;->a(Landroid/graphics/PorterDuff$Mode;)V

    :cond_7
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;I)V

    :cond_a
    return-void
.end method

.method public setTextFuture(Ljava/util/concurrent/Future;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lb/h/m/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/appcompat/widget/w;->d:Ljava/util/concurrent/Future;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setTextMetricsParamsCompat(Lb/h/m/c$a;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;Lb/h/m/c$a;)V

    return-void
.end method

.method public setTextSize(IF)V
    .registers 4

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-eqz v0, :cond_8

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_f

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/widget/w;->c:Landroidx/appcompat/widget/v;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/v;->a(IF)V

    :cond_f
    :goto_f
    return-void
.end method
