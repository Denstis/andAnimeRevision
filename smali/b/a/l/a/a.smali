###### Class b.a.l.a.a (b.a.l.a.a)
.class public Lb/a/l/a/a;
.super Lb/a/l/a/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/l/a/a$f;,
        Lb/a/l/a/a$c;,
        Lb/a/l/a/a$d;,
        Lb/a/l/a/a$e;,
        Lb/a/l/a/a$b;,
        Lb/a/l/a/a$g;
    }
.end annotation


# instance fields
.field private p:Lb/a/l/a/a$c;

.field private q:Lb/a/l/a/a$g;

.field private r:I

.field private s:I

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lb/a/l/a/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lb/a/l/a/a;-><init>(Lb/a/l/a/a$c;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Lb/a/l/a/a$c;Landroid/content/res/Resources;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/l/a/d;-><init>(Lb/a/l/a/d$a;)V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/l/a/a;->r:I

    iput v0, p0, Lb/a/l/a/a;->s:I

    new-instance v0, Lb/a/l/a/a$c;

    invoke-direct {v0, p1, p0, p2}, Lb/a/l/a/a$c;-><init>(Lb/a/l/a/a$c;Lb/a/l/a/a;Landroid/content/res/Resources;)V

    invoke-virtual {p0, v0}, Lb/a/l/a/a;->a(Lb/a/l/a/b$c;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/a/l/a/a;->onStateChange([I)Z

    invoke-virtual {p0}, Lb/a/l/a/a;->jumpToCurrentState()V

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .registers 5

    iget-object v0, p0, Lb/a/l/a/a;->p:Lb/a/l/a/a$c;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_11

    iget v1, v0, Lb/a/l/a/b$c;->d:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Lb/a/l/a/b$c;->d:I

    :cond_11
    sget v1, Lb/a/j;->AnimatedStateListDrawableCompat_android_variablePadding:I

    iget-boolean v2, v0, Lb/a/l/a/b$c;->i:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/l/a/b$c;->b(Z)V

    sget v1, Lb/a/j;->AnimatedStateListDrawableCompat_android_constantSize:I

    iget-boolean v2, v0, Lb/a/l/a/b$c;->l:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/l/a/b$c;->a(Z)V

    sget v1, Lb/a/j;->AnimatedStateListDrawableCompat_android_enterFadeDuration:I

    iget v2, v0, Lb/a/l/a/b$c;->A:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/l/a/b$c;->b(I)V

    sget v1, Lb/a/j;->AnimatedStateListDrawableCompat_android_exitFadeDuration:I

    iget v2, v0, Lb/a/l/a/b$c;->B:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/l/a/b$c;->c(I)V

    sget v1, Lb/a/j;->AnimatedStateListDrawableCompat_android_dither:I

    iget-boolean v0, v0, Lb/a/l/a/b$c;->x:Z

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lb/a/l/a/a;->setDither(Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/a/l/a/a;
    .registers 13

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "animated-selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Lb/a/l/a/a;

    invoke-direct {v0}, Lb/a/l/a/a;-><init>()V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lb/a/l/a/a;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0

    :cond_1b
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": invalid animated-selector tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(I)Z
    .registers 11

    iget-object v0, p0, Lb/a/l/a/a;->q:Lb/a/l/a/a$g;

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    iget v2, p0, Lb/a/l/a/a;->r:I

    if-ne p1, v2, :cond_a

    return v1

    :cond_a
    iget v2, p0, Lb/a/l/a/a;->s:I

    if-ne p1, v2, :cond_1e

    invoke-virtual {v0}, Lb/a/l/a/a$g;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Lb/a/l/a/a$g;->b()V

    iget v0, p0, Lb/a/l/a/a;->s:I

    iput v0, p0, Lb/a/l/a/a;->r:I

    iput p1, p0, Lb/a/l/a/a;->s:I

    return v1

    :cond_1e
    iget v2, p0, Lb/a/l/a/a;->r:I

    invoke-virtual {v0}, Lb/a/l/a/a$g;->d()V

    goto :goto_28

    :cond_24
    invoke-virtual {p0}, Lb/a/l/a/b;->b()I

    move-result v2

    :goto_28
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/l/a/a;->q:Lb/a/l/a/a$g;

    const/4 v0, -0x1

    iput v0, p0, Lb/a/l/a/a;->s:I

    iput v0, p0, Lb/a/l/a/a;->r:I

    iget-object v0, p0, Lb/a/l/a/a;->p:Lb/a/l/a/a$c;

    invoke-virtual {v0, v2}, Lb/a/l/a/a$c;->d(I)I

    move-result v3

    invoke-virtual {v0, p1}, Lb/a/l/a/a$c;->d(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_83

    if-nez v3, :cond_40

    goto :goto_83

    :cond_40
    invoke-virtual {v0, v3, v4}, Lb/a/l/a/a$c;->c(II)I

    move-result v6

    if-gez v6, :cond_47

    return v5

    :cond_47
    invoke-virtual {v0, v3, v4}, Lb/a/l/a/a$c;->e(II)Z

    move-result v7

    invoke-virtual {p0, v6}, Lb/a/l/a/b;->a(I)Z

    invoke-virtual {p0}, Lb/a/l/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    instance-of v8, v6, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_62

    invoke-virtual {v0, v3, v4}, Lb/a/l/a/a$c;->d(II)Z

    move-result v0

    new-instance v3, Lb/a/l/a/a$e;

    check-cast v6, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v3, v6, v0, v7}, Lb/a/l/a/a$e;-><init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V

    goto :goto_79

    :cond_62
    instance-of v0, v6, Lb/r/a/a/c;

    if-eqz v0, :cond_6e

    new-instance v3, Lb/a/l/a/a$d;

    check-cast v6, Lb/r/a/a/c;

    invoke-direct {v3, v6}, Lb/a/l/a/a$d;-><init>(Lb/r/a/a/c;)V

    goto :goto_79

    :cond_6e
    instance-of v0, v6, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_83

    new-instance v3, Lb/a/l/a/a$b;

    check-cast v6, Landroid/graphics/drawable/Animatable;

    invoke-direct {v3, v6}, Lb/a/l/a/a$b;-><init>(Landroid/graphics/drawable/Animatable;)V

    :goto_79
    invoke-virtual {v3}, Lb/a/l/a/a$g;->c()V

    iput-object v3, p0, Lb/a/l/a/a;->q:Lb/a/l/a/a$g;

    iput v2, p0, Lb/a/l/a/a;->s:I

    iput p1, p0, Lb/a/l/a/a;->r:I

    return v1

    :cond_83
    :goto_83
    return v5
.end method

.method private c()V
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/l/a/a;->onStateChange([I)Z

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 11

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    :cond_6
    :goto_6
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v1, :cond_3c

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_15

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3c

    :cond_15
    const/4 v4, 0x2

    if-eq v2, v4, :cond_19

    goto :goto_6

    :cond_19
    if-le v3, v0, :cond_1c

    goto :goto_6

    :cond_1c
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-direct/range {p0 .. p5}, Lb/a/l/a/a;->d(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_6

    :cond_2c
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "transition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct/range {p0 .. p5}, Lb/a/l/a/a;->e(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I

    goto :goto_6

    :cond_3c
    return-void
.end method

.method private d(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .registers 10

    sget-object v0, Lb/a/j;->AnimatedStateListDrawableItem:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lb/a/j;->AnimatedStateListDrawableItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v2, Lb/a/j;->AnimatedStateListDrawableItem_android_drawable:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_1b

    invoke-static {p1, v2}, Lb/a/k/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p4}, Lb/a/l/a/d;->a(Landroid/util/AttributeSet;)[I

    move-result-object v0

    const-string v2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez p1, :cond_6c

    :goto_27
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_2f

    goto :goto_27

    :cond_2f
    const/4 v3, 0x2

    if-ne p1, v3, :cond_53

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "vector"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-static {p2, p3, p4, p5}, Lb/r/a/a/i;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/r/a/a/i;

    move-result-object p1

    goto :goto_6c

    :cond_43
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p1, v3, :cond_4e

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6c

    :cond_4e
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_6c

    :cond_53
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6c
    :goto_6c
    if-eqz p1, :cond_75

    iget-object p2, p0, Lb/a/l/a/a;->p:Lb/a/l/a/a$c;

    invoke-virtual {p2, v0, p1, v1}, Lb/a/l/a/a$c;->a([ILandroid/graphics/drawable/Drawable;I)I

    move-result p1

    return p1

    :cond_75
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_8f

    :goto_8e
    throw p1

    :goto_8f
    goto :goto_8e
.end method

.method private e(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)I
    .registers 13

    sget-object v0, Lb/a/j;->AnimatedStateListDrawableTransition:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lb/a/j;->AnimatedStateListDrawableTransition_android_fromId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v3, Lb/a/j;->AnimatedStateListDrawableTransition_android_toId:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    sget v4, Lb/a/j;->AnimatedStateListDrawableTransition_android_drawable:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_20

    invoke-static {p1, v4}, Lb/a/k/a/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_21

    :cond_20
    const/4 v4, 0x0

    :goto_21
    sget v5, Lb/a/j;->AnimatedStateListDrawableTransition_android_reversible:I

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const-string v0, ": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable"

    if-nez v4, :cond_74

    :goto_2f
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_37

    goto :goto_2f

    :cond_37
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5b

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "animated-vector"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-static {p1, p2, p3, p4, p5}, Lb/r/a/a/c;->a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/r/a/a/c;

    move-result-object v4

    goto :goto_74

    :cond_4b
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt p1, v4, :cond_56

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_74

    :cond_56
    invoke-static {p2, p3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_74

    :cond_5b
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    :goto_74
    if-eqz v4, :cond_9c

    if-eq v1, v2, :cond_81

    if-eq v3, v2, :cond_81

    iget-object p1, p0, Lb/a/l/a/a;->p:Lb/a/l/a/a$c;

    invoke-virtual {p1, v1, v3, v4, v5}, Lb/a/l/a/a$c;->a(IILandroid/graphics/drawable/Drawable;Z)I

    move-result p1

    return p1

    :cond_81
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": <transition> tag requires \'fromId\' & \'toId\' attributes"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9c
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_b6

    :goto_b5
    throw p1

    :goto_b6
    goto :goto_b5
.end method


# virtual methods
.method a()Lb/a/l/a/a$c;
    .registers 4

    new-instance v0, Lb/a/l/a/a$c;

    iget-object v1, p0, Lb/a/l/a/a;->p:Lb/a/l/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lb/a/l/a/a$c;-><init>(Lb/a/l/a/a$c;Lb/a/l/a/a;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method bridge synthetic a()Lb/a/l/a/b$c;
    .registers 2

    invoke-virtual {p0}, Lb/a/l/a/a;->a()Lb/a/l/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a()Lb/a/l/a/d$a;
    .registers 2

    invoke-virtual {p0}, Lb/a/l/a/a;->a()Lb/a/l/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 9

    sget-object v0, Lb/a/j;->AnimatedStateListDrawableCompat:[I

    invoke-static {p2, p5, p4, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lb/a/j;->AnimatedStateListDrawableCompat_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Lb/a/l/a/a;->setVisible(ZZ)Z

    invoke-direct {p0, v0}, Lb/a/l/a/a;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {p0, p2}, Lb/a/l/a/b;->a(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct/range {p0 .. p5}, Lb/a/l/a/a;->c(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0}, Lb/a/l/a/a;->c()V

    return-void
.end method

.method protected a(Lb/a/l/a/b$c;)V
    .registers 3

    invoke-super {p0, p1}, Lb/a/l/a/d;->a(Lb/a/l/a/b$c;)V

    instance-of v0, p1, Lb/a/l/a/a$c;

    if-eqz v0, :cond_b

    check-cast p1, Lb/a/l/a/a$c;

    iput-object p1, p0, Lb/a/l/a/a;->p:Lb/a/l/a/a$c;

    :cond_b
    return-void
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    invoke-super {p0}, Lb/a/l/a/b;->jumpToCurrentState()V

    iget-object v0, p0, Lb/a/l/a/a;->q:Lb/a/l/a/a$g;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lb/a/l/a/a$g;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/l/a/a;->q:Lb/a/l/a/a$g;

    iget v0, p0, Lb/a/l/a/a;->r:I

    invoke-virtual {p0, v0}, Lb/a/l/a/b;->a(I)Z

    const/4 v0, -0x1

    iput v0, p0, Lb/a/l/a/a;->r:I

    iput v0, p0, Lb/a/l/a/a;->s:I

    :cond_17
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-boolean v0, p0, Lb/a/l/a/a;->t:Z

    if-nez v0, :cond_11

    invoke-super {p0}, Lb/a/l/a/d;->mutate()Landroid/graphics/drawable/Drawable;

    if-ne p0, p0, :cond_11

    iget-object v0, p0, Lb/a/l/a/a;->p:Lb/a/l/a/a$c;

    invoke-virtual {v0}, Lb/a/l/a/a$c;->m()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/l/a/a;->t:Z

    :cond_11
    return-object p0
.end method

.method protected onStateChange([I)Z
    .registers 4

    iget-object v0, p0, Lb/a/l/a/a;->p:Lb/a/l/a/a$c;

    invoke-virtual {v0, p1}, Lb/a/l/a/a$c;->b([I)I

    move-result v0

    invoke-virtual {p0}, Lb/a/l/a/b;->b()I

    move-result v1

    if-eq v0, v1, :cond_1a

    invoke-direct {p0, v0}, Lb/a/l/a/a;->b(I)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0, v0}, Lb/a/l/a/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p0}, Lb/a/l/a/a;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_26
    return v0
.end method

.method public setVisible(ZZ)Z
    .registers 5

    invoke-super {p0, p1, p2}, Lb/a/l/a/b;->setVisible(ZZ)Z

    move-result v0

    iget-object v1, p0, Lb/a/l/a/a;->q:Lb/a/l/a/a$g;

    if-eqz v1, :cond_17

    if-nez v0, :cond_c

    if-eqz p2, :cond_17

    :cond_c
    if-eqz p1, :cond_14

    iget-object p1, p0, Lb/a/l/a/a;->q:Lb/a/l/a/a$g;

    invoke-virtual {p1}, Lb/a/l/a/a$g;->c()V

    goto :goto_17

    :cond_14
    invoke-virtual {p0}, Lb/a/l/a/a;->jumpToCurrentState()V

    :cond_17
    :goto_17
    return v0
.end method

###### Class b.a.l.a.a.C0093a (b.a.l.a.a$a)
.class synthetic Lb/a/l/a/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class b.a.l.a.a.b (b.a.l.a.a$b)
.class Lb/a/l/a/a$b;
.super Lb/a/l/a/a$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Animatable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Animatable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/l/a/a$g;-><init>(Lb/a/l/a/a$a;)V

    iput-object p1, p0, Lb/a/l/a/a$b;->a:Landroid/graphics/drawable/Animatable;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    iget-object v0, p0, Lb/a/l/a/a$b;->a:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lb/a/l/a/a$b;->a:Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

###### Class b.a.l.a.a.c (b.a.l.a.a$c)
.class Lb/a/l/a/a$c;
.super Lb/a/l/a/d$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field K:Lb/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/d<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field L:Lb/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/h<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lb/a/l/a/a$c;Lb/a/l/a/a;Landroid/content/res/Resources;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lb/a/l/a/d$a;-><init>(Lb/a/l/a/d$a;Lb/a/l/a/d;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_c

    iget-object p2, p1, Lb/a/l/a/a$c;->K:Lb/e/d;

    iput-object p2, p0, Lb/a/l/a/a$c;->K:Lb/e/d;

    iget-object p1, p1, Lb/a/l/a/a$c;->L:Lb/e/h;

    goto :goto_18

    :cond_c
    new-instance p1, Lb/e/d;

    invoke-direct {p1}, Lb/e/d;-><init>()V

    iput-object p1, p0, Lb/a/l/a/a$c;->K:Lb/e/d;

    new-instance p1, Lb/e/h;

    invoke-direct {p1}, Lb/e/h;-><init>()V

    :goto_18
    iput-object p1, p0, Lb/a/l/a/a$c;->L:Lb/e/h;

    return-void
.end method

.method private static f(II)J
    .registers 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method a(IILandroid/graphics/drawable/Drawable;Z)I
    .registers 14

    invoke-super {p0, p3}, Lb/a/l/a/b$c;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p3

    invoke-static {p1, p2}, Lb/a/l/a/a$c;->f(II)J

    move-result-wide v0

    if-eqz p4, :cond_10

    const-wide v2, 0x200000000L

    goto :goto_12

    :cond_10
    const-wide/16 v2, 0x0

    :goto_12
    iget-object v4, p0, Lb/a/l/a/a$c;->K:Lb/e/d;

    int-to-long v5, p3

    or-long v7, v5, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v0, v1, v7}, Lb/e/d;->a(JLjava/lang/Object;)V

    if-eqz p4, :cond_34

    invoke-static {p2, p1}, Lb/a/l/a/a$c;->f(II)J

    move-result-wide p1

    iget-object p4, p0, Lb/a/l/a/a$c;->K:Lb/e/d;

    const-wide v0, 0x100000000L

    or-long/2addr v0, v5

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, p1, p2, v0}, Lb/e/d;->a(JLjava/lang/Object;)V

    :cond_34
    return p3
.end method

.method a([ILandroid/graphics/drawable/Drawable;I)I
    .registers 4

    invoke-super {p0, p1, p2}, Lb/a/l/a/d$a;->a([ILandroid/graphics/drawable/Drawable;)I

    move-result p1

    iget-object p2, p0, Lb/a/l/a/a$c;->L:Lb/e/h;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lb/e/h;->c(ILjava/lang/Object;)V

    return p1
.end method

.method b([I)I
    .registers 2

    invoke-super {p0, p1}, Lb/a/l/a/d$a;->a([I)I

    move-result p1

    if-ltz p1, :cond_7

    return p1

    :cond_7
    sget-object p1, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-super {p0, p1}, Lb/a/l/a/d$a;->a([I)I

    move-result p1

    return p1
.end method

.method c(II)I
    .registers 6

    invoke-static {p1, p2}, Lb/a/l/a/a$c;->f(II)J

    move-result-wide p1

    iget-object v0, p0, Lb/a/l/a/a$c;->K:Lb/e/d;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lb/e/d;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method

.method d(I)I
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_4

    goto :goto_14

    :cond_4
    iget-object v1, p0, Lb/a/l/a/a$c;->L:Lb/e/h;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lb/e/h;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_14
    return v0
.end method

.method d(II)Z
    .registers 6

    invoke-static {p1, p2}, Lb/a/l/a/a$c;->f(II)J

    move-result-wide p1

    iget-object v0, p0, Lb/a/l/a/a$c;->K:Lb/e/d;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lb/e/d;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide v0, 0x100000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1
.end method

.method e(II)Z
    .registers 6

    invoke-static {p1, p2}, Lb/a/l/a/a$c;->f(II)J

    move-result-wide p1

    iget-object v0, p0, Lb/a/l/a/a$c;->K:Lb/e/d;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lb/e/d;->b(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide v0, 0x200000000L

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    return p1
.end method

.method m()V
    .registers 2

    iget-object v0, p0, Lb/a/l/a/a$c;->K:Lb/e/d;

    invoke-virtual {v0}, Lb/e/d;->clone()Lb/e/d;

    move-result-object v0

    iput-object v0, p0, Lb/a/l/a/a$c;->K:Lb/e/d;

    iget-object v0, p0, Lb/a/l/a/a$c;->L:Lb/e/h;

    invoke-virtual {v0}, Lb/e/h;->clone()Lb/e/h;

    move-result-object v0

    iput-object v0, p0, Lb/a/l/a/a$c;->L:Lb/e/h;

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lb/a/l/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/l/a/a;-><init>(Lb/a/l/a/a$c;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lb/a/l/a/a;

    invoke-direct {v0, p0, p1}, Lb/a/l/a/a;-><init>(Lb/a/l/a/a$c;Landroid/content/res/Resources;)V

    return-object v0
.end method

###### Class b.a.l.a.a.d (b.a.l.a.a$d)
.class Lb/a/l/a/a$d;
.super Lb/a/l/a/a$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lb/r/a/a/c;


# direct methods
.method constructor <init>(Lb/r/a/a/c;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/l/a/a$g;-><init>(Lb/a/l/a/a$a;)V

    iput-object p1, p0, Lb/a/l/a/a$d;->a:Lb/r/a/a/c;

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    iget-object v0, p0, Lb/a/l/a/a$d;->a:Lb/r/a/a/c;

    invoke-virtual {v0}, Lb/r/a/a/c;->start()V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lb/a/l/a/a$d;->a:Lb/r/a/a/c;

    invoke-virtual {v0}, Lb/r/a/a/c;->stop()V

    return-void
.end method

###### Class b.a.l.a.a.e (b.a.l.a.a$e)
.class Lb/a/l/a/a$e;
.super Lb/a/l/a/a$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Landroid/animation/ObjectAnimator;

.field private final b:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;ZZ)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/l/a/a$g;-><init>(Lb/a/l/a/a$a;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p2, :cond_e

    add-int/lit8 v2, v0, -0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    if-eqz p2, :cond_14

    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    sub-int/2addr v0, v3

    :goto_15
    new-instance v4, Lb/a/l/a/a$f;

    invoke-direct {v4, p1, p2}, Lb/a/l/a/a$f;-><init>(Landroid/graphics/drawable/AnimationDrawable;Z)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    aput v2, p2, v1

    aput v0, p2, v3

    const-string v0, "currentIndex"

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p2, v0, :cond_30

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    :cond_30
    invoke-virtual {v4}, Lb/a/l/a/a$f;->a()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-boolean p3, p0, Lb/a/l/a/a$e;->b:Z

    iput-object p1, p0, Lb/a/l/a/a$e;->a:Landroid/animation/ObjectAnimator;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lb/a/l/a/a$e;->b:Z

    return v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lb/a/l/a/a$e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lb/a/l/a/a$e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lb/a/l/a/a$e;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

###### Class b.a.l.a.a.f (b.a.l.a.a$f)
.class Lb/a/l/a/a$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:[I

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/AnimationDrawable;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lb/a/l/a/a$f;->a(Landroid/graphics/drawable/AnimationDrawable;Z)I

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lb/a/l/a/a$f;->c:I

    return v0
.end method

.method a(Landroid/graphics/drawable/AnimationDrawable;Z)I
    .registers 8

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    iput v0, p0, Lb/a/l/a/a$f;->b:I

    iget-object v1, p0, Lb/a/l/a/a$f;->a:[I

    if-eqz v1, :cond_d

    array-length v1, v1

    if-ge v1, v0, :cond_11

    :cond_d
    new-array v1, v0, [I

    iput-object v1, p0, Lb/a/l/a/a$f;->a:[I

    :cond_11
    iget-object v1, p0, Lb/a/l/a/a$f;->a:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_15
    if-ge v2, v0, :cond_29

    if-eqz p2, :cond_1e

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1f

    :cond_1e
    move v4, v2

    :goto_1f
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    aput v4, v1, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_29
    iput v3, p0, Lb/a/l/a/a$f;->c:I

    return v3
.end method

.method public getInterpolation(F)F
    .registers 6

    iget v0, p0, Lb/a/l/a/a$f;->c:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lb/a/l/a/a$f;->b:I

    iget-object v1, p0, Lb/a/l/a/a$f;->a:[I

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1a

    aget v3, v1, v2

    if-lt p1, v3, :cond_1a

    aget v3, v1, v2

    sub-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1a
    if-ge v2, v0, :cond_22

    int-to-float p1, p1

    iget v1, p0, Lb/a/l/a/a$f;->c:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    int-to-float v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    add-float/2addr v1, p1

    return v1
.end method

###### Class b.a.l.a.a.g (b.a.l.a.a$g)
.class abstract Lb/a/l/a/a$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/l/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "g"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/a/l/a/a$a;)V
    .registers 2

    invoke-direct {p0}, Lb/a/l/a/a$g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method
