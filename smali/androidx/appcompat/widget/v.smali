###### Class androidx.appcompat.widget.v (androidx.appcompat.widget.v)
.class Landroidx/appcompat/widget/v;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/widget/TextView;

.field private b:Landroidx/appcompat/widget/o0;

.field private c:Landroidx/appcompat/widget/o0;

.field private d:Landroidx/appcompat/widget/o0;

.field private e:Landroidx/appcompat/widget/o0;

.field private f:Landroidx/appcompat/widget/o0;

.field private g:Landroidx/appcompat/widget/o0;

.field private final h:Landroidx/appcompat/widget/x;

.field private i:I

.field private j:Landroid/graphics/Typeface;

.field private k:Z


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/v;->i:I

    iput-object p1, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    new-instance p1, Landroidx/appcompat/widget/x;

    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Landroidx/appcompat/widget/x;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/o0;
    .registers 3

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/j;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_11

    new-instance p1, Landroidx/appcompat/widget/o0;

    invoke-direct {p1}, Landroidx/appcompat/widget/o0;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/appcompat/widget/o0;->d:Z

    iput-object p0, p1, Landroidx/appcompat/widget/o0;->a:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroidx/appcompat/widget/q0;)V
    .registers 7

    sget v0, Lb/a/j;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/v;->i:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/q0;->d(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/v;->i:I

    sget v0, Lb/a/j;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_41

    sget v0, Lb/a/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_41

    :cond_1d
    sget p1, Lb/a/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result p1

    if-eqz p1, :cond_40

    iput-boolean v1, p0, Landroidx/appcompat/widget/v;->k:Z

    sget p1, Lb/a/j;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1, v2}, Landroidx/appcompat/widget/q0;->d(II)I

    move-result p1

    if-eq p1, v2, :cond_3c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_39

    const/4 p2, 0x3

    if-eq p1, p2, :cond_36

    goto :goto_40

    :cond_36
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_3e

    :cond_39
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_3e

    :cond_3c
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_3e
    iput-object p1, p0, Landroidx/appcompat/widget/v;->j:Landroid/graphics/Typeface;

    :cond_40
    :goto_40
    return-void

    :cond_41
    :goto_41
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/v;->j:Landroid/graphics/Typeface;

    sget v0, Lb/a/j;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4f

    sget v0, Lb/a/j;->TextAppearance_fontFamily:I

    goto :goto_51

    :cond_4f
    sget v0, Lb/a/j;->TextAppearance_android_fontFamily:I

    :goto_51
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_74

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-direct {p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Landroidx/appcompat/widget/v$a;

    invoke-direct {v3, p0, p1}, Landroidx/appcompat/widget/v$a;-><init>(Landroidx/appcompat/widget/v;Ljava/lang/ref/WeakReference;)V

    :try_start_63
    iget p1, p0, Landroidx/appcompat/widget/v;->i:I

    invoke-virtual {p2, v0, p1, v3}, Landroidx/appcompat/widget/q0;->a(IILandroidx/core/content/c/f$a;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/v;->j:Landroid/graphics/Typeface;

    iget-object p1, p0, Landroidx/appcompat/widget/v;->j:Landroid/graphics/Typeface;

    if-nez p1, :cond_70

    const/4 v1, 0x1

    :cond_70
    iput-boolean v1, p0, Landroidx/appcompat/widget/v;->k:Z
    :try_end_72
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_63 .. :try_end_72} :catch_73
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_63 .. :try_end_72} :catch_73

    goto :goto_74

    :catch_73
    nop

    :cond_74
    :goto_74
    iget-object p1, p0, Landroidx/appcompat/widget/v;->j:Landroid/graphics/Typeface;

    if-nez p1, :cond_86

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/q0;->d(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_86

    iget p2, p0, Landroidx/appcompat/widget/v;->i:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/v;->j:Landroid/graphics/Typeface;

    :cond_86
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;)V
    .registers 4

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/j;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;[I)V

    :cond_d
    return-void
.end method

.method private b(IF)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/x;->a(IF)V

    return-void
.end method


# virtual methods
.method a()V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/o0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/o0;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/o0;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/o0;

    if-eqz v0, :cond_36

    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/o0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;)V

    const/4 v3, 0x1

    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/o0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;)V

    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/o0;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;)V

    const/4 v3, 0x3

    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/o0;

    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;)V

    :cond_36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v0, v3, :cond_58

    iget-object v0, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/o0;

    if-nez v0, :cond_44

    iget-object v0, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/o0;

    if-eqz v0, :cond_58

    :cond_44
    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/o0;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;)V

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/o0;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/v;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/o0;)V

    :cond_58
    return-void
.end method

.method a(I)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/x;->a(I)V

    return-void
.end method

.method a(IF)V
    .registers 4

    sget-boolean v0, Landroidx/core/widget/b;->a:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->h()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/v;->b(IF)V

    :cond_d
    return-void
.end method

.method a(IIII)V
    .registers 6

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/x;->a(IIII)V

    return-void
.end method

.method a(Landroid/content/Context;I)V
    .registers 6

    sget-object v0, Lb/a/j;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/q0;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/q0;

    move-result-object p2

    sget v0, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    sget v0, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/q0;->a(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/v;->a(Z)V

    :cond_18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_33

    sget v0, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v0

    if-eqz v0, :cond_33

    sget v0, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v2, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_33
    sget v0, Lb/a/j;->TextAppearance_android_textSize:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget v0, Lb/a/j;->TextAppearance_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/q0;->c(II)I

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4a
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;Landroidx/appcompat/widget/q0;)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/q0;->a()V

    iget-object p1, p0, Landroidx/appcompat/widget/v;->j:Landroid/graphics/Typeface;

    if-eqz p1, :cond_5b

    iget-object p2, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/v;->i:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_5b
    return-void
.end method

.method a(Landroid/util/AttributeSet;I)V
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroidx/appcompat/widget/j;->a()Landroidx/appcompat/widget/j;

    move-result-object v4

    sget-object v5, Lb/a/j;->AppCompatTextHelper:[I

    const/4 v6, 0x0

    invoke-static {v3, v1, v5, v2, v6}, Landroidx/appcompat/widget/q0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/q0;

    move-result-object v5

    sget v7, Lb/a/j;->AppCompatTextHelper_android_textAppearance:I

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroidx/appcompat/widget/q0;->g(II)I

    move-result v7

    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_32

    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v5, v9, v6}, Landroidx/appcompat/widget/q0;->g(II)I

    move-result v9

    invoke-static {v3, v4, v9}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/o0;

    move-result-object v9

    iput-object v9, v0, Landroidx/appcompat/widget/v;->b:Landroidx/appcompat/widget/o0;

    :cond_32
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_46

    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v5, v9, v6}, Landroidx/appcompat/widget/q0;->g(II)I

    move-result v9

    invoke-static {v3, v4, v9}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/o0;

    move-result-object v9

    iput-object v9, v0, Landroidx/appcompat/widget/v;->c:Landroidx/appcompat/widget/o0;

    :cond_46
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_5a

    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v5, v9, v6}, Landroidx/appcompat/widget/q0;->g(II)I

    move-result v9

    invoke-static {v3, v4, v9}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/o0;

    move-result-object v9

    iput-object v9, v0, Landroidx/appcompat/widget/v;->d:Landroidx/appcompat/widget/o0;

    :cond_5a
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_6e

    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v5, v9, v6}, Landroidx/appcompat/widget/q0;->g(II)I

    move-result v9

    invoke-static {v3, v4, v9}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/o0;

    move-result-object v9

    iput-object v9, v0, Landroidx/appcompat/widget/v;->e:Landroidx/appcompat/widget/o0;

    :cond_6e
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_9c

    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_88

    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v5, v9, v6}, Landroidx/appcompat/widget/q0;->g(II)I

    move-result v9

    invoke-static {v3, v4, v9}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/o0;

    move-result-object v9

    iput-object v9, v0, Landroidx/appcompat/widget/v;->f:Landroidx/appcompat/widget/o0;

    :cond_88
    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_9c

    sget v9, Lb/a/j;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v5, v9, v6}, Landroidx/appcompat/widget/q0;->g(II)I

    move-result v9

    invoke-static {v3, v4, v9}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;Landroidx/appcompat/widget/j;I)Landroidx/appcompat/widget/o0;

    move-result-object v4

    iput-object v4, v0, Landroidx/appcompat/widget/v;->g:Landroidx/appcompat/widget/o0;

    :cond_9c
    invoke-virtual {v5}, Landroidx/appcompat/widget/q0;->a()V

    iget-object v4, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    const/4 v5, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x0

    if-eq v7, v8, :cond_109

    sget-object v11, Lb/a/j;->TextAppearance:[I

    invoke-static {v3, v7, v11}, Landroidx/appcompat/widget/q0;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/q0;

    move-result-object v7

    if-nez v4, :cond_c6

    sget v11, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v11

    if-eqz v11, :cond_c6

    sget v11, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v7, v11, v6}, Landroidx/appcompat/widget/q0;->a(IZ)Z

    move-result v11

    move v12, v11

    const/4 v11, 0x1

    goto :goto_c8

    :cond_c6
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_c8
    invoke-direct {v0, v3, v7}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;Landroidx/appcompat/widget/q0;)V

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v13, v9, :cond_103

    sget v13, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v13

    if-eqz v13, :cond_de

    sget v13, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_df

    :cond_de
    move-object v13, v10

    :goto_df
    sget v14, Lb/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v14

    if-eqz v14, :cond_ee

    sget v14, Lb/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    goto :goto_ef

    :cond_ee
    move-object v14, v10

    :goto_ef
    sget v15, Lb/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v15

    if-eqz v15, :cond_fd

    sget v10, Lb/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    :cond_fd
    move-object/from16 v16, v13

    move-object v13, v10

    move-object/from16 v10, v16

    goto :goto_105

    :cond_103
    move-object v13, v10

    move-object v14, v13

    :goto_105
    invoke-virtual {v7}, Landroidx/appcompat/widget/q0;->a()V

    goto :goto_10d

    :cond_109
    move-object v13, v10

    move-object v14, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_10d
    sget-object v7, Lb/a/j;->TextAppearance:[I

    invoke-static {v3, v1, v7, v2, v6}, Landroidx/appcompat/widget/q0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/q0;

    move-result-object v7

    if-nez v4, :cond_124

    sget v15, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v7, v15}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v15

    if-eqz v15, :cond_124

    sget v11, Lb/a/j;->TextAppearance_textAllCaps:I

    invoke-virtual {v7, v11, v6}, Landroidx/appcompat/widget/q0;->a(IZ)Z

    move-result v12

    goto :goto_125

    :cond_124
    move v5, v11

    :goto_125
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v11, v9, :cond_153

    sget v9, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_137

    sget v9, Lb/a/j;->TextAppearance_android_textColor:I

    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    :cond_137
    sget v9, Lb/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_145

    sget v9, Lb/a/j;->TextAppearance_android_textColorHint:I

    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    :cond_145
    sget v9, Lb/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_153

    sget v9, Lb/a/j;->TextAppearance_android_textColorLink:I

    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/q0;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    :cond_153
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1c

    if-lt v9, v11, :cond_16f

    sget v9, Lb/a/j;->TextAppearance_android_textSize:I

    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/q0;->g(I)Z

    move-result v9

    if-eqz v9, :cond_16f

    sget v9, Lb/a/j;->TextAppearance_android_textSize:I

    invoke-virtual {v7, v9, v8}, Landroidx/appcompat/widget/q0;->c(II)I

    move-result v9

    if-nez v9, :cond_16f

    iget-object v9, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v9, v6, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_16f
    invoke-direct {v0, v3, v7}, Landroidx/appcompat/widget/v;->a(Landroid/content/Context;Landroidx/appcompat/widget/q0;)V

    invoke-virtual {v7}, Landroidx/appcompat/widget/q0;->a()V

    if-eqz v10, :cond_17c

    iget-object v7, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_17c
    if-eqz v14, :cond_183

    iget-object v7, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_183
    if-eqz v13, :cond_18a

    iget-object v7, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    :cond_18a
    if-nez v4, :cond_191

    if-eqz v5, :cond_191

    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/v;->a(Z)V

    :cond_191
    iget-object v4, v0, Landroidx/appcompat/widget/v;->j:Landroid/graphics/Typeface;

    if-eqz v4, :cond_19c

    iget-object v5, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    iget v7, v0, Landroidx/appcompat/widget/v;->i:I

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_19c
    iget-object v4, v0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v4, v1, v2}, Landroidx/appcompat/widget/x;->a(Landroid/util/AttributeSet;I)V

    sget-boolean v2, Landroidx/core/widget/b;->a:Z

    if-eqz v2, :cond_1e0

    iget-object v2, v0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v2}, Landroidx/appcompat/widget/x;->f()I

    move-result v2

    if-eqz v2, :cond_1e0

    iget-object v2, v0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v2}, Landroidx/appcompat/widget/x;->e()[I

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_1e0

    iget-object v4, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1db

    iget-object v2, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    iget-object v4, v0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v4}, Landroidx/appcompat/widget/x;->c()I

    move-result v4

    iget-object v5, v0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v5}, Landroidx/appcompat/widget/x;->b()I

    move-result v5

    iget-object v7, v0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v7}, Landroidx/appcompat/widget/x;->d()I

    move-result v7

    invoke-virtual {v2, v4, v5, v7, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_1e0

    :cond_1db
    iget-object v4, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v4, v2, v6}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    :cond_1e0
    :goto_1e0
    sget-object v2, Lb/a/j;->AppCompatTextView:[I

    invoke-static {v3, v1, v2}, Landroidx/appcompat/widget/q0;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/q0;

    move-result-object v1

    sget v2, Lb/a/j;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v1, v2, v8}, Landroidx/appcompat/widget/q0;->c(II)I

    move-result v2

    sget v3, Lb/a/j;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v1, v3, v8}, Landroidx/appcompat/widget/q0;->c(II)I

    move-result v3

    sget v4, Lb/a/j;->AppCompatTextView_lineHeight:I

    invoke-virtual {v1, v4, v8}, Landroidx/appcompat/widget/q0;->c(II)I

    move-result v4

    invoke-virtual {v1}, Landroidx/appcompat/widget/q0;->a()V

    if-eq v2, v8, :cond_202

    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    :cond_202
    if-eq v3, v8, :cond_209

    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v1, v3}, Landroidx/core/widget/i;->b(Landroid/widget/TextView;I)V

    :cond_209
    if-eq v4, v8, :cond_210

    iget-object v1, v0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-static {v1, v4}, Landroidx/core/widget/i;->c(Landroid/widget/TextView;I)V

    :cond_210
    return-void
.end method

.method a(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/appcompat/widget/v;->k:Z

    if-eqz v0, :cond_13

    iput-object p2, p0, Landroidx/appcompat/widget/v;->j:Landroid/graphics/Typeface;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_13

    iget v0, p0, Landroidx/appcompat/widget/v;->i:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_13
    return-void
.end method

.method a(Z)V
    .registers 3

    iget-object v0, p0, Landroidx/appcompat/widget/v;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method a(ZIIII)V
    .registers 6

    sget-boolean p1, Landroidx/core/widget/b;->a:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/widget/v;->b()V

    :cond_7
    return-void
.end method

.method a([II)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/x;->a([II)V

    return-void
.end method

.method b()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->a()V

    return-void
.end method

.method c()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->b()I

    move-result v0

    return v0
.end method

.method d()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->c()I

    move-result v0

    return v0
.end method

.method e()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->d()I

    move-result v0

    return v0
.end method

.method f()[I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->e()[I

    move-result-object v0

    return-object v0
.end method

.method g()I
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->f()I

    move-result v0

    return v0
.end method

.method h()Z
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/widget/v;->h:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->g()Z

    move-result v0

    return v0
.end method

###### Class androidx.appcompat.widget.v.a (androidx.appcompat.widget.v$a)
.class Landroidx/appcompat/widget/v$a;
.super Landroidx/core/content/c/f$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/v;->a(Landroid/content/Context;Landroidx/appcompat/widget/q0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Landroidx/appcompat/widget/v;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/v;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Landroidx/appcompat/widget/v$a;->b:Landroidx/appcompat/widget/v;

    iput-object p2, p0, Landroidx/appcompat/widget/v$a;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroidx/core/content/c/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .registers 2

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .registers 4

    iget-object v0, p0, Landroidx/appcompat/widget/v$a;->b:Landroidx/appcompat/widget/v;

    iget-object v1, p0, Landroidx/appcompat/widget/v$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/widget/v;->a(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method
