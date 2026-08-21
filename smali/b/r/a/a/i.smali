###### Class b.r.a.a.i (b.r.a.a.i)
.class public Lb/r/a/a/i;
.super Lb/r/a/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/r/a/a/i$c;,
        Lb/r/a/a/i$b;,
        Lb/r/a/a/i$f;,
        Lb/r/a/a/i$d;,
        Lb/r/a/a/i$e;,
        Lb/r/a/a/i$g;,
        Lb/r/a/a/i$h;,
        Lb/r/a/a/i$i;
    }
.end annotation


# static fields
.field static final k:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private c:Lb/r/a/a/i$h;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private final h:[F

.field private final i:Landroid/graphics/Matrix;

.field private final j:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lb/r/a/a/i;->k:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lb/r/a/a/h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/r/a/a/i;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lb/r/a/a/i;->h:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    new-instance v0, Lb/r/a/a/i$h;

    invoke-direct {v0}, Lb/r/a/a/i$h;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    return-void
.end method

.method constructor <init>(Lb/r/a/a/i$h;)V
    .registers 4

    invoke-direct {p0}, Lb/r/a/a/h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/r/a/a/i;->g:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lb/r/a/a/i;->h:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i;->i:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    iput-object p1, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v0, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, p1}, Lb/r/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static a(IF)I
    .registers 4

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_17

    packed-switch p0, :pswitch_data_20

    return-object p1

    :pswitch_e
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_11
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_14
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_17
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1a
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1d
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_20
    .packed-switch 0xe
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lb/r/a/a/i;
    .registers 9

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_21

    new-instance v0, Lb/r/a/a/i;

    invoke-direct {v0}, Lb/r/a/a/i;-><init>()V

    invoke-static {p0, p1, p2}, Landroidx/core/content/c/f;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    new-instance p0, Lb/r/a/a/i$i;

    iget-object p1, v0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/r/a/a/i$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0

    :cond_21
    :try_start_21
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_34

    const/4 v5, 0x1

    if-eq v3, v5, :cond_34

    goto :goto_29

    :cond_34
    if-ne v3, v4, :cond_3b

    invoke-static {p0, p1, v2, p2}, Lb/r/a/a/i;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/r/a/a/i;

    move-result-object p0

    return-object p0

    :cond_3b
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_43} :catch_45
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_43} :catch_43

    :catch_43
    move-exception p0

    goto :goto_46

    :catch_45
    move-exception p0

    :goto_46
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 15

    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v1, v0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v3, v1, Lb/r/a/a/i$g;->h:Lb/r/a/a/i$d;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x1

    :goto_19
    if-eq v3, v5, :cond_c4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v4, :cond_24

    if-eq v3, v8, :cond_c4

    :cond_24
    const/4 v7, 0x2

    const-string v9, "group"

    if-ne v3, v7, :cond_af

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/r/a/a/i$d;

    const-string v8, "path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    new-instance v3, Lb/r/a/a/i$c;

    invoke-direct {v3}, Lb/r/a/a/i$c;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Lb/r/a/a/i$c;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v6, v7, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lb/r/a/a/i$f;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_57

    iget-object v6, v1, Lb/r/a/a/i$g;->p:Lb/e/a;

    invoke-virtual {v3}, Lb/r/a/a/i$f;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    const/4 v6, 0x0

    goto :goto_7d

    :cond_59
    const-string v8, "clip-path"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    new-instance v3, Lb/r/a/a/i$b;

    invoke-direct {v3}, Lb/r/a/a/i$b;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Lb/r/a/a/i$b;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v7, v7, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lb/r/a/a/i$f;->getPathName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7d

    iget-object v7, v1, Lb/r/a/a/i$g;->p:Lb/e/a;

    invoke-virtual {v3}, Lb/r/a/a/i$f;->getPathName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    :goto_7d
    iget v7, v0, Lb/r/a/a/i$h;->a:I

    iget v3, v3, Lb/r/a/a/i$f;->c:I

    :goto_81
    or-int/2addr v3, v7

    iput v3, v0, Lb/r/a/a/i$h;->a:I

    goto :goto_be

    :cond_85
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    new-instance v3, Lb/r/a/a/i$d;

    invoke-direct {v3}, Lb/r/a/a/i$d;-><init>()V

    invoke-virtual {v3, p1, p3, p4, p2}, Lb/r/a/a/i$d;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v7, v7, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lb/r/a/a/i$d;->getGroupName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_aa

    iget-object v7, v1, Lb/r/a/a/i$g;->p:Lb/e/a;

    invoke-virtual {v3}, Lb/r/a/a/i$d;->getGroupName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_aa
    iget v7, v0, Lb/r/a/a/i$h;->a:I

    iget v3, v3, Lb/r/a/a/i$d;->k:I

    goto :goto_81

    :cond_af
    if-ne v3, v8, :cond_be

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_be
    :goto_be
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_19

    :cond_c4
    if-nez v6, :cond_c7

    return-void

    :cond_c7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "no path defined"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_d0

    :goto_cf
    throw p1

    :goto_d0
    goto :goto_cf
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8

    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v1, v0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    const-string v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {p1, p2, v2, v3, v4}, Landroidx/core/content/c/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Lb/r/a/a/i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1d

    iput-object v2, v0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    :cond_1d
    const/4 v2, 0x5

    iget-boolean v3, v0, Lb/r/a/a/i$h;->e:Z

    const-string v4, "autoMirrored"

    invoke-static {p1, p2, v4, v2, v3}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    iput-boolean v2, v0, Lb/r/a/a/i$h;->e:Z

    const/4 v0, 0x7

    iget v2, v1, Lb/r/a/a/i$g;->k:F

    const-string v3, "viewportWidth"

    invoke-static {p1, p2, v3, v0, v2}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, Lb/r/a/a/i$g;->k:F

    const/16 v0, 0x8

    iget v2, v1, Lb/r/a/a/i$g;->l:F

    const-string v3, "viewportHeight"

    invoke-static {p1, p2, v3, v0, v2}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, Lb/r/a/a/i$g;->l:F

    iget v0, v1, Lb/r/a/a/i$g;->k:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-lez v0, :cond_d8

    iget v0, v1, Lb/r/a/a/i$g;->l:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_bd

    const/4 v0, 0x3

    iget v3, v1, Lb/r/a/a/i$g;->i:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Lb/r/a/a/i$g;->i:F

    const/4 v0, 0x2

    iget v3, v1, Lb/r/a/a/i$g;->j:F

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Lb/r/a/a/i$g;->j:F

    iget v0, v1, Lb/r/a/a/i$g;->i:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_a2

    iget v0, v1, Lb/r/a/a/i$g;->j:F

    cmpg-float v0, v0, v2

    if-lez v0, :cond_87

    const/4 v0, 0x4

    invoke-virtual {v1}, Lb/r/a/a/i$g;->getAlpha()F

    move-result v2

    const-string v3, "alpha"

    invoke-static {p1, p2, v3, v0, v2}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    invoke-virtual {v1, p2}, Lb/r/a/a/i$g;->setAlpha(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_86

    iput-object p1, v1, Lb/r/a/a/i$g;->n:Ljava/lang/String;

    iget-object p2, v1, Lb/r/a/a/i$g;->p:Lb/e/a;

    invoke-virtual {p2, p1, v1}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_86
    return-void

    :cond_87
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_bd
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d8
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private a()Z
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_15

    invoke-virtual {p0}, Lb/r/a/a/i;->isAutoMirrored()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lb/r/a/a/i;
    .registers 5

    new-instance v0, Lb/r/a/a/i;

    invoke-direct {v0}, Lb/r/a/a/i;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lb/r/a/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method


# virtual methods
.method a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .registers 5

    if-eqz p2, :cond_14

    if-nez p3, :cond_5

    goto :goto_14

    :cond_5
    invoke-virtual {p0}, Lb/r/a/a/i;->getState()[I

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p2, p1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p2

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v0, v0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    iget-object v0, v0, Lb/r/a/a/i$g;->p:Lb/e/a;

    invoke-virtual {v0, p1}, Lb/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lb/r/a/a/i;->g:Z

    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;)Z

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_db

    iget-object v0, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1f

    goto/16 :goto_db

    :cond_1f
    iget-object v0, p0, Lb/r/a/a/i;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_25

    iget-object v0, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    :cond_25
    iget-object v1, p0, Lb/r/a/a/i;->i:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lb/r/a/a/i;->i:Landroid/graphics/Matrix;

    iget-object v2, p0, Lb/r/a/a/i;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, Lb/r/a/a/i;->h:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lb/r/a/a/i;->h:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lb/r/a/a/i;->h:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, Lb/r/a/a/i;->h:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_60

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_64

    :cond_60
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_64
    iget-object v4, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v1

    float-to-int v1, v4

    iget-object v4, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_db

    if-gtz v3, :cond_87

    goto :goto_db

    :cond_87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lb/r/a/a/i;->a()Z

    move-result v5

    if-eqz v5, :cond_ab

    iget-object v5, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_ab
    iget-object v5, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    invoke-virtual {v2, v1, v3}, Lb/r/a/a/i$h;->b(II)V

    iget-boolean v2, p0, Lb/r/a/a/i;->g:Z

    if-nez v2, :cond_bf

    iget-object v2, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    invoke-virtual {v2, v1, v3}, Lb/r/a/a/i$h;->c(II)V

    goto :goto_d1

    :cond_bf
    iget-object v2, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    invoke-virtual {v2}, Lb/r/a/a/i$h;->a()Z

    move-result v2

    if-nez v2, :cond_d1

    iget-object v2, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    invoke-virtual {v2, v1, v3}, Lb/r/a/a/i$h;->c(II)V

    iget-object v1, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    invoke-virtual {v1}, Lb/r/a/a/i$h;->d()V

    :cond_d1
    :goto_d1
    iget-object v1, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v2, p0, Lb/r/a/a/i;->j:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Lb/r/a/a/i$h;->a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_db
    :goto_db
    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->c(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v0, v0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    invoke-virtual {v0}, Lb/r/a/a/i$g;->getRootAlpha()I

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0

    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    invoke-virtual {v1}, Lb/r/a/a/i$h;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 4

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_14

    new-instance v1, Lb/r/a/a/i$i;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/r/a/a/i$i;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v1

    :cond_14
    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    invoke-virtual {p0}, Lb/r/a/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lb/r/a/a/i$h;->a:I

    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v0, v0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    iget v0, v0, Lb/r/a/a/i$g;->j:F

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v0, v0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    iget v0, v0, Lb/r/a/a/i$g;->i:F

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, -0x3

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .registers 5

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lb/r/a/a/i;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1, p2, p3, p4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    new-instance v1, Lb/r/a/a/i$g;

    invoke-direct {v1}, Lb/r/a/a/i$g;-><init>()V

    iput-object v1, v0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    sget-object v1, Lb/r/a/a/a;->a:[I

    invoke-static {p1, p4, p3, v1}, Landroidx/core/content/c/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lb/r/a/a/i;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lb/r/a/a/i;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lb/r/a/a/i$h;->a:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/r/a/a/i$h;->k:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lb/r/a/a/i;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object p1, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, v0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    iget-object p3, v0, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2, p3}, Lb/r/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-boolean v0, v0, Lb/r/a/a/i$h;->e:Z

    return v0
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0

    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lb/r/a/a/i$h;->c()Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v0, v0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_28

    :cond_26
    const/4 v0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v0, 0x1

    :goto_29
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_8
    iget-boolean v0, p0, Lb/r/a/a/i;->f:Z

    if-nez v0, :cond_1e

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    new-instance v0, Lb/r/a/a/i$h;

    iget-object v1, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    invoke-direct {v0, v1}, Lb/r/a/a/i$h;-><init>(Lb/r/a/a/i$h;)V

    iput-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/r/a/a/i;->f:Z

    :cond_1e
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_7
    return-void
.end method

.method protected onStateChange([I)Z
    .registers 7

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    return p1

    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v2, v1, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    iget-object v4, v1, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v4, :cond_21

    iget-object v0, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v0, v2, v4}, Lb/r/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lb/r/a/a/i;->invalidateSelf()V

    const/4 v0, 0x1

    :cond_21
    invoke-virtual {v1}, Lb/r/a/a/i$h;->c()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1, p1}, Lb/r/a/a/i$h;->a([I)Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lb/r/a/a/i;->invalidateSelf()V

    const/4 v0, 0x1

    :cond_31
    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .registers 5

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v0, v0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    invoke-virtual {v0}, Lb/r/a/a/i$g;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1c

    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v0, v0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    invoke-virtual {v0, p1}, Lb/r/a/a/i$g;->setRootAlpha(I)V

    invoke-virtual {p0}, Lb/r/a/a/i;->invalidateSelf()V

    :cond_1c
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 3

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iput-boolean p1, v0, Lb/r/a/a/i$h;->e:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_8
    iput-object p1, p0, Lb/r/a/a/i;->e:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lb/r/a/a/i;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .registers 3

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_8
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/r/a/a/i;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v1, v0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1d

    iput-object p1, v0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Lb/r/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lb/r/a/a/i;->invalidateSelf()V

    :cond_1d
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_8
    iget-object v0, p0, Lb/r/a/a/i;->c:Lb/r/a/a/i$h;

    iget-object v1, v0, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1d

    iput-object p1, v0, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Lb/r/a/a/i;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/i;->d:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lb/r/a/a/i;->invalidateSelf()V

    :cond_1d
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1

    :cond_9
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class b.r.a.a.i.a (b.r.a.a.i$a)
.class synthetic Lb/r/a/a/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class b.r.a.a.i.b (b.r.a.a.i$b)
.class Lb/r/a/a/i$b;
.super Lb/r/a/a/i$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/r/a/a/i$f;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb/r/a/a/i$b;)V
    .registers 2

    invoke-direct {p0, p1}, Lb/r/a/a/i$f;-><init>(Lb/r/a/a/i$f;)V

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object v0, p0, Lb/r/a/a/i$f;->b:Ljava/lang/String;

    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-static {p1}, Lb/h/h/b;->a(Ljava/lang/String;)[Lb/h/h/b$b;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    :cond_16
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    const-string v0, "pathData"

    invoke-static {p4, v0}, Landroidx/core/content/c/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_9

    return-void

    :cond_9
    sget-object p4, Lb/r/a/a/a;->d:[I

    invoke-static {p1, p3, p2, p4}, Landroidx/core/content/c/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/r/a/a/i$b;->a(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class b.r.a.a.i.c (b.r.a.a.i$c)
.class Lb/r/a/a/i$c;
.super Lb/r/a/a/i$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private d:[I

.field e:Landroidx/core/content/c/b;

.field f:F

.field g:Landroidx/core/content/c/b;

.field h:F

.field i:I

.field j:F

.field k:F

.field l:F

.field m:F

.field n:Landroid/graphics/Paint$Cap;

.field o:Landroid/graphics/Paint$Join;

.field p:F


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lb/r/a/a/i$f;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/r/a/a/i$c;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lb/r/a/a/i$c;->h:F

    const/4 v2, 0x0

    iput v2, p0, Lb/r/a/a/i$c;->i:I

    iput v1, p0, Lb/r/a/a/i$c;->j:F

    iput v0, p0, Lb/r/a/a/i$c;->k:F

    iput v1, p0, Lb/r/a/a/i$c;->l:F

    iput v0, p0, Lb/r/a/a/i$c;->m:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lb/r/a/a/i$c;->n:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lb/r/a/a/i$c;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lb/r/a/a/i$c;->p:F

    return-void
.end method

.method public constructor <init>(Lb/r/a/a/i$c;)V
    .registers 5

    invoke-direct {p0, p1}, Lb/r/a/a/i$f;-><init>(Lb/r/a/a/i$f;)V

    const/4 v0, 0x0

    iput v0, p0, Lb/r/a/a/i$c;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lb/r/a/a/i$c;->h:F

    const/4 v2, 0x0

    iput v2, p0, Lb/r/a/a/i$c;->i:I

    iput v1, p0, Lb/r/a/a/i$c;->j:F

    iput v0, p0, Lb/r/a/a/i$c;->k:F

    iput v1, p0, Lb/r/a/a/i$c;->l:F

    iput v0, p0, Lb/r/a/a/i$c;->m:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lb/r/a/a/i$c;->n:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lb/r/a/a/i$c;->o:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lb/r/a/a/i$c;->p:F

    iget-object v0, p1, Lb/r/a/a/i$c;->d:[I

    iput-object v0, p0, Lb/r/a/a/i$c;->d:[I

    iget-object v0, p1, Lb/r/a/a/i$c;->e:Landroidx/core/content/c/b;

    iput-object v0, p0, Lb/r/a/a/i$c;->e:Landroidx/core/content/c/b;

    iget v0, p1, Lb/r/a/a/i$c;->f:F

    iput v0, p0, Lb/r/a/a/i$c;->f:F

    iget v0, p1, Lb/r/a/a/i$c;->h:F

    iput v0, p0, Lb/r/a/a/i$c;->h:F

    iget-object v0, p1, Lb/r/a/a/i$c;->g:Landroidx/core/content/c/b;

    iput-object v0, p0, Lb/r/a/a/i$c;->g:Landroidx/core/content/c/b;

    iget v0, p1, Lb/r/a/a/i$c;->i:I

    iput v0, p0, Lb/r/a/a/i$c;->i:I

    iget v0, p1, Lb/r/a/a/i$c;->j:F

    iput v0, p0, Lb/r/a/a/i$c;->j:F

    iget v0, p1, Lb/r/a/a/i$c;->k:F

    iput v0, p0, Lb/r/a/a/i$c;->k:F

    iget v0, p1, Lb/r/a/a/i$c;->l:F

    iput v0, p0, Lb/r/a/a/i$c;->l:F

    iget v0, p1, Lb/r/a/a/i$c;->m:F

    iput v0, p0, Lb/r/a/a/i$c;->m:F

    iget-object v0, p1, Lb/r/a/a/i$c;->n:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lb/r/a/a/i$c;->n:Landroid/graphics/Paint$Cap;

    iget-object v0, p1, Lb/r/a/a/i$c;->o:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lb/r/a/a/i$c;->o:Landroid/graphics/Paint$Join;

    iget p1, p1, Lb/r/a/a/i$c;->p:F

    iput p1, p0, Lb/r/a/a/i$c;->p:F

    return-void
.end method

.method private a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .registers 4

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    return-object p2

    :cond_9
    sget-object p1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p1

    :cond_c
    sget-object p1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p1

    :cond_f
    sget-object p1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p1
.end method

.method private a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .registers 4

    if-eqz p1, :cond_f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    return-object p2

    :cond_9
    sget-object p1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object p1

    :cond_c
    sget-object p1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object p1

    :cond_f
    sget-object p1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object p1
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V
    .registers 11

    const/4 v0, 0x0

    iput-object v0, p0, Lb/r/a/a/i$c;->d:[I

    const-string v0, "pathData"

    invoke-static {p2, v0}, Landroidx/core/content/c/g;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    iput-object v0, p0, Lb/r/a/a/i$f;->b:Ljava/lang/String;

    :cond_15
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {v0}, Lb/h/h/b;->a(Ljava/lang/String;)[Lb/h/h/b$b;

    move-result-object v0

    iput-object v0, p0, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    :cond_22
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "fillColor"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/c/b;

    move-result-object v0

    iput-object v0, p0, Lb/r/a/a/i$c;->g:Landroidx/core/content/c/b;

    const/16 v0, 0xc

    iget v1, p0, Lb/r/a/a/i$c;->j:F

    const-string v2, "fillAlpha"

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lb/r/a/a/i$c;->j:F

    const/16 v0, 0x8

    const/4 v1, -0x1

    const-string v2, "strokeLineCap"

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/core/content/c/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lb/r/a/a/i$c;->n:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v2}, Lb/r/a/a/i$c;->a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Lb/r/a/a/i$c;->n:Landroid/graphics/Paint$Cap;

    const/16 v0, 0x9

    const-string v2, "strokeLineJoin"

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/core/content/c/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lb/r/a/a/i$c;->o:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Lb/r/a/a/i$c;->a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Lb/r/a/a/i$c;->o:Landroid/graphics/Paint$Join;

    const/16 v0, 0xa

    iget v1, p0, Lb/r/a/a/i$c;->p:F

    const-string v2, "strokeMiterLimit"

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lb/r/a/a/i$c;->p:F

    const/4 v5, 0x3

    const-string v4, "strokeColor"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;II)Landroidx/core/content/c/b;

    move-result-object p3

    iput-object p3, p0, Lb/r/a/a/i$c;->e:Landroidx/core/content/c/b;

    const/16 p3, 0xb

    iget v0, p0, Lb/r/a/a/i$c;->h:F

    const-string v1, "strokeAlpha"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lb/r/a/a/i$c;->h:F

    const/4 p3, 0x4

    iget v0, p0, Lb/r/a/a/i$c;->f:F

    const-string v1, "strokeWidth"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lb/r/a/a/i$c;->f:F

    const/4 p3, 0x6

    iget v0, p0, Lb/r/a/a/i$c;->l:F

    const-string v1, "trimPathEnd"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lb/r/a/a/i$c;->l:F

    const/4 p3, 0x7

    iget v0, p0, Lb/r/a/a/i$c;->m:F

    const-string v1, "trimPathOffset"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lb/r/a/a/i$c;->m:F

    const/4 p3, 0x5

    iget v0, p0, Lb/r/a/a/i$c;->k:F

    const-string v1, "trimPathStart"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p3

    iput p3, p0, Lb/r/a/a/i$c;->k:F

    const/16 p3, 0xd

    iget v0, p0, Lb/r/a/a/i$c;->i:I

    const-string v1, "fillType"

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/core/content/c/g;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lb/r/a/a/i$c;->i:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    sget-object v0, Lb/r/a/a/a;->c:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1, p4, p3}, Lb/r/a/a/i$c;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$c;->g:Landroidx/core/content/c/b;

    invoke-virtual {v0}, Landroidx/core/content/c/b;->d()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lb/r/a/a/i$c;->e:Landroidx/core/content/c/b;

    invoke-virtual {v0}, Landroidx/core/content/c/b;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public a([I)Z
    .registers 4

    iget-object v0, p0, Lb/r/a/a/i$c;->g:Landroidx/core/content/c/b;

    invoke-virtual {v0, p1}, Landroidx/core/content/c/b;->a([I)Z

    move-result v0

    iget-object v1, p0, Lb/r/a/a/i$c;->e:Landroidx/core/content/c/b;

    invoke-virtual {v1, p1}, Landroidx/core/content/c/b;->a([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method getFillAlpha()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$c;->j:F

    return v0
.end method

.method getFillColor()I
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$c;->g:Landroidx/core/content/c/b;

    invoke-virtual {v0}, Landroidx/core/content/c/b;->a()I

    move-result v0

    return v0
.end method

.method getStrokeAlpha()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$c;->h:F

    return v0
.end method

.method getStrokeColor()I
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$c;->e:Landroidx/core/content/c/b;

    invoke-virtual {v0}, Landroidx/core/content/c/b;->a()I

    move-result v0

    return v0
.end method

.method getStrokeWidth()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$c;->f:F

    return v0
.end method

.method getTrimPathEnd()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$c;->l:F

    return v0
.end method

.method getTrimPathOffset()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$c;->m:F

    return v0
.end method

.method getTrimPathStart()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$c;->k:F

    return v0
.end method

.method setFillAlpha(F)V
    .registers 2

    iput p1, p0, Lb/r/a/a/i$c;->j:F

    return-void
.end method

.method setFillColor(I)V
    .registers 3

    iget-object v0, p0, Lb/r/a/a/i$c;->g:Landroidx/core/content/c/b;

    invoke-virtual {v0, p1}, Landroidx/core/content/c/b;->a(I)V

    return-void
.end method

.method setStrokeAlpha(F)V
    .registers 2

    iput p1, p0, Lb/r/a/a/i$c;->h:F

    return-void
.end method

.method setStrokeColor(I)V
    .registers 3

    iget-object v0, p0, Lb/r/a/a/i$c;->e:Landroidx/core/content/c/b;

    invoke-virtual {v0, p1}, Landroidx/core/content/c/b;->a(I)V

    return-void
.end method

.method setStrokeWidth(F)V
    .registers 2

    iput p1, p0, Lb/r/a/a/i$c;->f:F

    return-void
.end method

.method setTrimPathEnd(F)V
    .registers 2

    iput p1, p0, Lb/r/a/a/i$c;->l:F

    return-void
.end method

.method setTrimPathOffset(F)V
    .registers 2

    iput p1, p0, Lb/r/a/a/i$c;->m:F

    return-void
.end method

.method setTrimPathStart(F)V
    .registers 2

    iput p1, p0, Lb/r/a/a/i$c;->k:F

    return-void
.end method

###### Class b.r.a.a.i.d (b.r.a.a.i$d)
.class Lb/r/a/a/i$d;
.super Lb/r/a/a/i$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/graphics/Matrix;

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/r/a/a/i$e;",
            ">;"
        }
    .end annotation
.end field

.field c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field final j:Landroid/graphics/Matrix;

.field k:I

.field private l:[I

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/r/a/a/i$e;-><init>(Lb/r/a/a/i$a;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lb/r/a/a/i$d;->a:Landroid/graphics/Matrix;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lb/r/a/a/i$d;->c:F

    iput v1, p0, Lb/r/a/a/i$d;->d:F

    iput v1, p0, Lb/r/a/a/i$d;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lb/r/a/a/i$d;->f:F

    iput v2, p0, Lb/r/a/a/i$d;->g:F

    iput v1, p0, Lb/r/a/a/i$d;->h:F

    iput v1, p0, Lb/r/a/a/i$d;->i:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    iput-object v0, p0, Lb/r/a/a/i$d;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lb/r/a/a/i$d;Lb/e/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/r/a/a/i$d;",
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/r/a/a/i$e;-><init>(Lb/r/a/a/i$a;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lb/r/a/a/i$d;->a:Landroid/graphics/Matrix;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lb/r/a/a/i$d;->c:F

    iput v1, p0, Lb/r/a/a/i$d;->d:F

    iput v1, p0, Lb/r/a/a/i$d;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lb/r/a/a/i$d;->f:F

    iput v2, p0, Lb/r/a/a/i$d;->g:F

    iput v1, p0, Lb/r/a/a/i$d;->h:F

    iput v1, p0, Lb/r/a/a/i$d;->i:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    iput-object v0, p0, Lb/r/a/a/i$d;->m:Ljava/lang/String;

    iget v0, p1, Lb/r/a/a/i$d;->c:F

    iput v0, p0, Lb/r/a/a/i$d;->c:F

    iget v0, p1, Lb/r/a/a/i$d;->d:F

    iput v0, p0, Lb/r/a/a/i$d;->d:F

    iget v0, p1, Lb/r/a/a/i$d;->e:F

    iput v0, p0, Lb/r/a/a/i$d;->e:F

    iget v0, p1, Lb/r/a/a/i$d;->f:F

    iput v0, p0, Lb/r/a/a/i$d;->f:F

    iget v0, p1, Lb/r/a/a/i$d;->g:F

    iput v0, p0, Lb/r/a/a/i$d;->g:F

    iget v0, p1, Lb/r/a/a/i$d;->h:F

    iput v0, p0, Lb/r/a/a/i$d;->h:F

    iget v0, p1, Lb/r/a/a/i$d;->i:F

    iput v0, p0, Lb/r/a/a/i$d;->i:F

    iget-object v0, p1, Lb/r/a/a/i$d;->l:[I

    iput-object v0, p0, Lb/r/a/a/i$d;->l:[I

    iget-object v0, p1, Lb/r/a/a/i$d;->m:Ljava/lang/String;

    iput-object v0, p0, Lb/r/a/a/i$d;->m:Ljava/lang/String;

    iget v0, p1, Lb/r/a/a/i$d;->k:I

    iput v0, p0, Lb/r/a/a/i$d;->k:I

    iget-object v0, p0, Lb/r/a/a/i$d;->m:Ljava/lang/String;

    if-eqz v0, :cond_5b

    invoke-virtual {p2, v0, p0}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    iget-object v0, p0, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    iget-object v1, p1, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p1, p1, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ae

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lb/r/a/a/i$d;

    if-eqz v2, :cond_80

    check-cast v1, Lb/r/a/a/i$d;

    iget-object v2, p0, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    new-instance v3, Lb/r/a/a/i$d;

    invoke-direct {v3, v1, p2}, Lb/r/a/a/i$d;-><init>(Lb/r/a/a/i$d;Lb/e/a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    :cond_80
    instance-of v2, v1, Lb/r/a/a/i$c;

    if-eqz v2, :cond_8c

    new-instance v2, Lb/r/a/a/i$c;

    check-cast v1, Lb/r/a/a/i$c;

    invoke-direct {v2, v1}, Lb/r/a/a/i$c;-><init>(Lb/r/a/a/i$c;)V

    goto :goto_97

    :cond_8c
    instance-of v2, v1, Lb/r/a/a/i$b;

    if-eqz v2, :cond_a6

    new-instance v2, Lb/r/a/a/i$b;

    check-cast v1, Lb/r/a/a/i$b;

    invoke-direct {v2, v1}, Lb/r/a/a/i$b;-><init>(Lb/r/a/a/i$b;)V

    :goto_97
    iget-object v1, p0, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lb/r/a/a/i$f;->b:Ljava/lang/String;

    if-eqz v1, :cond_a3

    invoke-virtual {p2, v1, v2}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a3
    :goto_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_a6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown object in the tree!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ae
    return-void
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    const/4 v0, 0x0

    iput-object v0, p0, Lb/r/a/a/i$d;->l:[I

    iget v0, p0, Lb/r/a/a/i$d;->c:F

    const-string v1, "rotation"

    const/4 v2, 0x5

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lb/r/a/a/i$d;->c:F

    iget v0, p0, Lb/r/a/a/i$d;->d:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lb/r/a/a/i$d;->d:F

    iget v0, p0, Lb/r/a/a/i$d;->e:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lb/r/a/a/i$d;->e:F

    iget v0, p0, Lb/r/a/a/i$d;->f:F

    const-string v1, "scaleX"

    const/4 v2, 0x3

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lb/r/a/a/i$d;->f:F

    iget v0, p0, Lb/r/a/a/i$d;->g:F

    const-string v1, "scaleY"

    const/4 v2, 0x4

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lb/r/a/a/i$d;->g:F

    iget v0, p0, Lb/r/a/a/i$d;->h:F

    const-string v1, "translateX"

    const/4 v2, 0x6

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Lb/r/a/a/i$d;->h:F

    iget v0, p0, Lb/r/a/a/i$d;->i:F

    const-string v1, "translateY"

    const/4 v2, 0x7

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p2

    iput p2, p0, Lb/r/a/a/i$d;->i:F

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_55

    iput-object p1, p0, Lb/r/a/a/i$d;->m:Ljava/lang/String;

    :cond_55
    invoke-direct {p0}, Lb/r/a/a/i$d;->b()V

    return-void
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lb/r/a/a/i$d;->d:F

    neg-float v1, v1

    iget v2, p0, Lb/r/a/a/i$d;->e:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lb/r/a/a/i$d;->f:F

    iget v2, p0, Lb/r/a/a/i$d;->g:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lb/r/a/a/i$d;->c:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    iget v1, p0, Lb/r/a/a/i$d;->h:F

    iget v2, p0, Lb/r/a/a/i$d;->d:F

    add-float/2addr v1, v2

    iget v2, p0, Lb/r/a/a/i$d;->i:F

    iget v3, p0, Lb/r/a/a/i$d;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    sget-object v0, Lb/r/a/a/a;->b:[I

    invoke-static {p1, p3, p2, v0}, Landroidx/core/content/c/g;->a(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lb/r/a/a/i$d;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public a()Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/r/a/a/i$e;

    invoke-virtual {v2}, Lb/r/a/a/i$e;->a()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public a([I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/r/a/a/i$e;

    invoke-virtual {v2, p1}, Lb/r/a/a/i$e;->a([I)Z

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    return v1
.end method

.method public getGroupName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getPivotX()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$d;->d:F

    return v0
.end method

.method public getPivotY()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$d;->e:F

    return v0
.end method

.method public getRotation()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$d;->c:F

    return v0
.end method

.method public getScaleX()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$d;->f:F

    return v0
.end method

.method public getScaleY()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$d;->g:F

    return v0
.end method

.method public getTranslateX()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$d;->h:F

    return v0
.end method

.method public getTranslateY()F
    .registers 2

    iget v0, p0, Lb/r/a/a/i$d;->i:F

    return v0
.end method

.method public setPivotX(F)V
    .registers 3

    iget v0, p0, Lb/r/a/a/i$d;->d:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/r/a/a/i$d;->d:F

    invoke-direct {p0}, Lb/r/a/a/i$d;->b()V

    :cond_b
    return-void
.end method

.method public setPivotY(F)V
    .registers 3

    iget v0, p0, Lb/r/a/a/i$d;->e:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/r/a/a/i$d;->e:F

    invoke-direct {p0}, Lb/r/a/a/i$d;->b()V

    :cond_b
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    iget v0, p0, Lb/r/a/a/i$d;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/r/a/a/i$d;->c:F

    invoke-direct {p0}, Lb/r/a/a/i$d;->b()V

    :cond_b
    return-void
.end method

.method public setScaleX(F)V
    .registers 3

    iget v0, p0, Lb/r/a/a/i$d;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/r/a/a/i$d;->f:F

    invoke-direct {p0}, Lb/r/a/a/i$d;->b()V

    :cond_b
    return-void
.end method

.method public setScaleY(F)V
    .registers 3

    iget v0, p0, Lb/r/a/a/i$d;->g:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/r/a/a/i$d;->g:F

    invoke-direct {p0}, Lb/r/a/a/i$d;->b()V

    :cond_b
    return-void
.end method

.method public setTranslateX(F)V
    .registers 3

    iget v0, p0, Lb/r/a/a/i$d;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/r/a/a/i$d;->h:F

    invoke-direct {p0}, Lb/r/a/a/i$d;->b()V

    :cond_b
    return-void
.end method

.method public setTranslateY(F)V
    .registers 3

    iget v0, p0, Lb/r/a/a/i$d;->i:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    iput p1, p0, Lb/r/a/a/i$d;->i:F

    invoke-direct {p0}, Lb/r/a/a/i$d;->b()V

    :cond_b
    return-void
.end method

###### Class b.r.a.a.i.e (b.r.a.a.i$e)
.class abstract Lb/r/a/a/i$e;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb/r/a/a/i$a;)V
    .registers 2

    invoke-direct {p0}, Lb/r/a/a/i$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a([I)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

###### Class b.r.a.a.i.f (b.r.a.a.i$f)
.class abstract Lb/r/a/a/i$f;
.super Lb/r/a/a/i$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field protected a:[Lb/h/h/b$b;

.field b:Ljava/lang/String;

.field c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/r/a/a/i$e;-><init>(Lb/r/a/a/i$a;)V

    iput-object v0, p0, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    return-void
.end method

.method public constructor <init>(Lb/r/a/a/i$f;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/r/a/a/i$e;-><init>(Lb/r/a/a/i$a;)V

    iput-object v0, p0, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    iget-object v0, p1, Lb/r/a/a/i$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/r/a/a/i$f;->b:Ljava/lang/String;

    iget v0, p1, Lb/r/a/a/i$f;->c:I

    iput v0, p0, Lb/r/a/a/i$f;->c:I

    iget-object p1, p1, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    invoke-static {p1}, Lb/h/h/b;->a([Lb/h/h/b$b;)[Lb/h/h/b$b;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    if-eqz v0, :cond_a

    invoke-static {v0, p1}, Lb/h/h/b$b;->a([Lb/h/h/b$b;Landroid/graphics/Path;)V

    :cond_a
    return-void
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Lb/h/h/b$b;
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Lb/h/h/b$b;)V
    .registers 3

    iget-object v0, p0, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    invoke-static {v0, p1}, Lb/h/h/b;->a([Lb/h/h/b$b;[Lb/h/h/b$b;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lb/h/h/b;->a([Lb/h/h/b$b;)[Lb/h/h/b$b;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    goto :goto_14

    :cond_f
    iget-object v0, p0, Lb/r/a/a/i$f;->a:[Lb/h/h/b$b;

    invoke-static {v0, p1}, Lb/h/h/b;->b([Lb/h/h/b$b;[Lb/h/h/b$b;)V

    :goto_14
    return-void
.end method

###### Class b.r.a.a.i.g (b.r.a.a.i$g)
.class Lb/r/a/a/i$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# static fields
.field private static final q:Landroid/graphics/Matrix;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Matrix;

.field d:Landroid/graphics/Paint;

.field e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/PathMeasure;

.field private g:I

.field final h:Lb/r/a/a/i$d;

.field i:F

.field j:F

.field k:F

.field l:F

.field m:I

.field n:Ljava/lang/String;

.field o:Ljava/lang/Boolean;

.field final p:Lb/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lb/r/a/a/i$g;->q:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i$g;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lb/r/a/a/i$g;->i:F

    iput v0, p0, Lb/r/a/a/i$g;->j:F

    iput v0, p0, Lb/r/a/a/i$g;->k:F

    iput v0, p0, Lb/r/a/a/i$g;->l:F

    const/16 v0, 0xff

    iput v0, p0, Lb/r/a/a/i$g;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/r/a/a/i$g;->n:Ljava/lang/String;

    iput-object v0, p0, Lb/r/a/a/i$g;->o:Ljava/lang/Boolean;

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i$g;->p:Lb/e/a;

    new-instance v0, Lb/r/a/a/i$d;

    invoke-direct {v0}, Lb/r/a/a/i$d;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i$g;->h:Lb/r/a/a/i$d;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i$g;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i$g;->b:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Lb/r/a/a/i$g;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i$g;->c:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput v0, p0, Lb/r/a/a/i$g;->i:F

    iput v0, p0, Lb/r/a/a/i$g;->j:F

    iput v0, p0, Lb/r/a/a/i$g;->k:F

    iput v0, p0, Lb/r/a/a/i$g;->l:F

    const/16 v0, 0xff

    iput v0, p0, Lb/r/a/a/i$g;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lb/r/a/a/i$g;->n:Ljava/lang/String;

    iput-object v0, p0, Lb/r/a/a/i$g;->o:Ljava/lang/Boolean;

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i$g;->p:Lb/e/a;

    new-instance v0, Lb/r/a/a/i$d;

    iget-object v1, p1, Lb/r/a/a/i$g;->h:Lb/r/a/a/i$d;

    iget-object v2, p0, Lb/r/a/a/i$g;->p:Lb/e/a;

    invoke-direct {v0, v1, v2}, Lb/r/a/a/i$d;-><init>(Lb/r/a/a/i$d;Lb/e/a;)V

    iput-object v0, p0, Lb/r/a/a/i$g;->h:Lb/r/a/a/i$d;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Lb/r/a/a/i$g;->a:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lb/r/a/a/i$g;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p1, Lb/r/a/a/i$g;->b:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lb/r/a/a/i$g;->b:Landroid/graphics/Path;

    iget v0, p1, Lb/r/a/a/i$g;->i:F

    iput v0, p0, Lb/r/a/a/i$g;->i:F

    iget v0, p1, Lb/r/a/a/i$g;->j:F

    iput v0, p0, Lb/r/a/a/i$g;->j:F

    iget v0, p1, Lb/r/a/a/i$g;->k:F

    iput v0, p0, Lb/r/a/a/i$g;->k:F

    iget v0, p1, Lb/r/a/a/i$g;->l:F

    iput v0, p0, Lb/r/a/a/i$g;->l:F

    iget v0, p1, Lb/r/a/a/i$g;->g:I

    iput v0, p0, Lb/r/a/a/i$g;->g:I

    iget v0, p1, Lb/r/a/a/i$g;->m:I

    iput v0, p0, Lb/r/a/a/i$g;->m:I

    iget-object v0, p1, Lb/r/a/a/i$g;->n:Ljava/lang/String;

    iput-object v0, p0, Lb/r/a/a/i$g;->n:Ljava/lang/String;

    iget-object v0, p1, Lb/r/a/a/i$g;->n:Ljava/lang/String;

    if-eqz v0, :cond_65

    iget-object v1, p0, Lb/r/a/a/i$g;->p:Lb/e/a;

    invoke-virtual {v1, v0, p0}, Lb/e/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    iget-object p1, p1, Lb/r/a/a/i$g;->o:Ljava/lang/Boolean;

    iput-object p1, p0, Lb/r/a/a/i$g;->o:Ljava/lang/Boolean;

    return-void
.end method

.method private static a(FFFF)F
    .registers 4

    mul-float p0, p0, p3

    mul-float p1, p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method private a(Landroid/graphics/Matrix;)F
    .registers 11

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_40

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapVectors([F)V

    const/4 p1, 0x0

    aget v1, v0, p1

    float-to-double v1, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    float-to-double v4, v4

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x2

    aget v4, v0, v2

    float-to-double v4, v4

    const/4 v6, 0x3

    aget v7, v0, v6

    float-to-double v7, v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    aget p1, v0, p1

    aget v3, v0, v3

    aget v2, v0, v2

    aget v0, v0, v6

    invoke-static {p1, v3, v2, v0}, Lb/r/a/a/i$g;->a(FFFF)F

    move-result p1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_3e

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float v1, p1, v0

    :cond_3e
    return v1

    nop

    :array_40
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private a(Lb/r/a/a/i$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 16

    iget-object v0, p1, Lb/r/a/a/i$d;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object p2, p1, Lb/r/a/a/i$d;->a:Landroid/graphics/Matrix;

    iget-object v0, p1, Lb/r/a/a/i$d;->j:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    const/4 p2, 0x0

    :goto_10
    iget-object v0, p1, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_45

    iget-object v0, p1, Lb/r/a/a/i$d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/r/a/a/i$e;

    instance-of v1, v0, Lb/r/a/a/i$d;

    if-eqz v1, :cond_32

    move-object v3, v0

    check-cast v3, Lb/r/a/a/i$d;

    iget-object v4, p1, Lb/r/a/a/i$d;->a:Landroid/graphics/Matrix;

    move-object v2, p0

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lb/r/a/a/i$g;->a(Lb/r/a/a/i$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    goto :goto_42

    :cond_32
    instance-of v1, v0, Lb/r/a/a/i$f;

    if-eqz v1, :cond_42

    move-object v4, v0

    check-cast v4, Lb/r/a/a/i$f;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lb/r/a/a/i$g;->a(Lb/r/a/a/i$d;Lb/r/a/a/i$f;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    :cond_42
    :goto_42
    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    :cond_45
    invoke-virtual {p3}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private a(Lb/r/a/a/i$d;Lb/r/a/a/i$f;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 14

    int-to-float p4, p4

    iget v0, p0, Lb/r/a/a/i$g;->k:F

    div-float/2addr p4, v0

    int-to-float p5, p5

    iget v0, p0, Lb/r/a/a/i$g;->l:F

    div-float/2addr p5, v0

    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object p1, p1, Lb/r/a/a/i$d;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lb/r/a/a/i$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lb/r/a/a/i$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, p4, p5}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-direct {p0, p1}, Lb/r/a/a/i$g;->a(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p5, p1, p4

    if-nez p5, :cond_22

    return-void

    :cond_22
    iget-object p5, p0, Lb/r/a/a/i$g;->a:Landroid/graphics/Path;

    invoke-virtual {p2, p5}, Lb/r/a/a/i$f;->a(Landroid/graphics/Path;)V

    iget-object p5, p0, Lb/r/a/a/i$g;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lb/r/a/a/i$g;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p2}, Lb/r/a/a/i$f;->b()Z

    move-result v1

    if-eqz v1, :cond_42

    iget-object p1, p0, Lb/r/a/a/i$g;->b:Landroid/graphics/Path;

    iget-object p2, p0, Lb/r/a/a/i$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, p5, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lb/r/a/a/i$g;->b:Landroid/graphics/Path;

    invoke-virtual {p3, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/16 :goto_169

    :cond_42
    check-cast p2, Lb/r/a/a/i$c;

    iget v1, p2, Lb/r/a/a/i$c;->k:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    cmpl-float v1, v1, p4

    if-nez v1, :cond_53

    iget v1, p2, Lb/r/a/a/i$c;->l:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_94

    :cond_53
    iget v1, p2, Lb/r/a/a/i$c;->k:F

    iget v4, p2, Lb/r/a/a/i$c;->m:F

    add-float/2addr v1, v4

    rem-float/2addr v1, v2

    iget v5, p2, Lb/r/a/a/i$c;->l:F

    add-float/2addr v5, v4

    rem-float/2addr v5, v2

    iget-object v2, p0, Lb/r/a/a/i$g;->f:Landroid/graphics/PathMeasure;

    if-nez v2, :cond_68

    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v2, p0, Lb/r/a/a/i$g;->f:Landroid/graphics/PathMeasure;

    :cond_68
    iget-object v2, p0, Lb/r/a/a/i$g;->f:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Lb/r/a/a/i$g;->a:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v2, p0, Lb/r/a/a/i$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v2

    mul-float v1, v1, v2

    mul-float v5, v5, v2

    invoke-virtual {p5}, Landroid/graphics/Path;->reset()V

    cmpl-float v4, v1, v5

    if-lez v4, :cond_8c

    iget-object v4, p0, Lb/r/a/a/i$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v4, v1, v2, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    iget-object v1, p0, Lb/r/a/a/i$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, p4, v5, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto :goto_91

    :cond_8c
    iget-object v2, p0, Lb/r/a/a/i$g;->f:Landroid/graphics/PathMeasure;

    invoke-virtual {v2, v1, v5, p5, v3}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    :goto_91
    invoke-virtual {p5, p4, p4}, Landroid/graphics/Path;->rLineTo(FF)V

    :cond_94
    iget-object p4, p0, Lb/r/a/a/i$g;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lb/r/a/a/i$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, p5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    iget-object p4, p2, Lb/r/a/a/i$c;->g:Landroidx/core/content/c/b;

    invoke-virtual {p4}, Landroidx/core/content/c/b;->e()Z

    move-result p4

    const/high16 p5, 0x437f0000    # 255.0f

    if-eqz p4, :cond_fc

    iget-object p4, p2, Lb/r/a/a/i$c;->g:Landroidx/core/content/c/b;

    iget-object v1, p0, Lb/r/a/a/i$g;->e:Landroid/graphics/Paint;

    if-nez v1, :cond_b9

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lb/r/a/a/i$g;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/r/a/a/i$g;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_b9
    iget-object v1, p0, Lb/r/a/a/i$g;->e:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroidx/core/content/c/b;->c()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-virtual {p4}, Landroidx/core/content/c/b;->b()Landroid/graphics/Shader;

    move-result-object p4

    iget-object v2, p0, Lb/r/a/a/i$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget p4, p2, Lb/r/a/a/i$c;->j:F

    mul-float p4, p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_e6

    :cond_d9
    invoke-virtual {p4}, Landroidx/core/content/c/b;->a()I

    move-result p4

    iget v2, p2, Lb/r/a/a/i$c;->j:F

    invoke-static {p4, v2}, Lb/r/a/a/i;->a(IF)I

    move-result p4

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_e6
    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p4, p0, Lb/r/a/a/i$g;->b:Landroid/graphics/Path;

    iget v2, p2, Lb/r/a/a/i$c;->i:I

    if-nez v2, :cond_f2

    sget-object v2, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_f4

    :cond_f2
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    :goto_f4
    invoke-virtual {p4, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object p4, p0, Lb/r/a/a/i$g;->b:Landroid/graphics/Path;

    invoke-virtual {p3, p4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_fc
    iget-object p4, p2, Lb/r/a/a/i$c;->e:Landroidx/core/content/c/b;

    invoke-virtual {p4}, Landroidx/core/content/c/b;->e()Z

    move-result p4

    if-eqz p4, :cond_169

    iget-object p4, p2, Lb/r/a/a/i$c;->e:Landroidx/core/content/c/b;

    iget-object v1, p0, Lb/r/a/a/i$g;->d:Landroid/graphics/Paint;

    if-nez v1, :cond_118

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lb/r/a/a/i$g;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/r/a/a/i$g;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_118
    iget-object v1, p0, Lb/r/a/a/i$g;->d:Landroid/graphics/Paint;

    iget-object v2, p2, Lb/r/a/a/i$c;->o:Landroid/graphics/Paint$Join;

    if-eqz v2, :cond_121

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    :cond_121
    iget-object v2, p2, Lb/r/a/a/i$c;->n:Landroid/graphics/Paint$Cap;

    if-eqz v2, :cond_128

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_128
    iget v2, p2, Lb/r/a/a/i$c;->p:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p4}, Landroidx/core/content/c/b;->c()Z

    move-result v2

    if-eqz v2, :cond_14b

    invoke-virtual {p4}, Landroidx/core/content/c/b;->b()Landroid/graphics/Shader;

    move-result-object p4

    iget-object v2, p0, Lb/r/a/a/i$g;->c:Landroid/graphics/Matrix;

    invoke-virtual {p4, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget p4, p2, Lb/r/a/a/i$c;->h:F

    mul-float p4, p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_158

    :cond_14b
    invoke-virtual {p4}, Landroidx/core/content/c/b;->a()I

    move-result p4

    iget p5, p2, Lb/r/a/a/i$c;->h:F

    invoke-static {p4, p5}, Lb/r/a/a/i;->a(IF)I

    move-result p4

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_158
    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    mul-float v0, v0, p1

    iget p1, p2, Lb/r/a/a/i$c;->f:F

    mul-float p1, p1, v0

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lb/r/a/a/i$g;->b:Landroid/graphics/Path;

    invoke-virtual {p3, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_169
    :goto_169
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V
    .registers 12

    iget-object v1, p0, Lb/r/a/a/i$g;->h:Lb/r/a/a/i$d;

    sget-object v2, Lb/r/a/a/i$g;->q:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lb/r/a/a/i$g;->a(Lb/r/a/a/i$d;Landroid/graphics/Matrix;Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$g;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_10

    iget-object v0, p0, Lb/r/a/a/i$g;->h:Lb/r/a/a/i$d;

    invoke-virtual {v0}, Lb/r/a/a/i$d;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lb/r/a/a/i$g;->o:Ljava/lang/Boolean;

    :cond_10
    iget-object v0, p0, Lb/r/a/a/i$g;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a([I)Z
    .registers 3

    iget-object v0, p0, Lb/r/a/a/i$g;->h:Lb/r/a/a/i$d;

    invoke-virtual {v0, p1}, Lb/r/a/a/i$d;->a([I)Z

    move-result p1

    return p1
.end method

.method public getAlpha()F
    .registers 3

    invoke-virtual {p0}, Lb/r/a/a/i$g;->getRootAlpha()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getRootAlpha()I
    .registers 2

    iget v0, p0, Lb/r/a/a/i$g;->m:I

    return v0
.end method

.method public setAlpha(F)V
    .registers 3

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lb/r/a/a/i$g;->setRootAlpha(I)V

    return-void
.end method

.method public setRootAlpha(I)V
    .registers 2

    iput p1, p0, Lb/r/a/a/i$g;->m:I

    return-void
.end method

###### Class b.r.a.a.i.h (b.r.a.a.i$h)
.class Lb/r/a/a/i$h;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field a:I

.field b:Lb/r/a/a/i$g;

.field c:Landroid/content/res/ColorStateList;

.field d:Landroid/graphics/PorterDuff$Mode;

.field e:Z

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/content/res/ColorStateList;

.field h:Landroid/graphics/PorterDuff$Mode;

.field i:I

.field j:Z

.field k:Z

.field l:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Lb/r/a/a/i;->k:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Lb/r/a/a/i$g;

    invoke-direct {v0}, Lb/r/a/a/i$g;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    return-void
.end method

.method public constructor <init>(Lb/r/a/a/i$h;)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    sget-object v0, Lb/r/a/a/i;->k:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_43

    iget v0, p1, Lb/r/a/a/i$h;->a:I

    iput v0, p0, Lb/r/a/a/i$h;->a:I

    new-instance v0, Lb/r/a/a/i$g;

    iget-object v1, p1, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    invoke-direct {v0, v1}, Lb/r/a/a/i$g;-><init>(Lb/r/a/a/i$g;)V

    iput-object v0, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    iget-object v0, p1, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    iget-object v0, v0, Lb/r/a/a/i$g;->e:Landroid/graphics/Paint;

    if-eqz v0, :cond_28

    iget-object v1, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Lb/r/a/a/i$g;->e:Landroid/graphics/Paint;

    :cond_28
    iget-object v0, p1, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    iget-object v0, v0, Lb/r/a/a/i$g;->d:Landroid/graphics/Paint;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v2, v1, Lb/r/a/a/i$g;->d:Landroid/graphics/Paint;

    :cond_37
    iget-object v0, p1, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p1, p1, Lb/r/a/a/i$h;->e:Z

    iput-boolean p1, p0, Lb/r/a/a/i$h;->e:Z

    :cond_43
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .registers 4

    invoke-virtual {p0}, Lb/r/a/a/i$h;->b()Z

    move-result v0

    if-nez v0, :cond_a

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    iget-object v0, p0, Lb/r/a/a/i$h;->l:Landroid/graphics/Paint;

    if-nez v0, :cond_1b

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lb/r/a/a/i$h;->l:Landroid/graphics/Paint;

    iget-object v0, p0, Lb/r/a/a/i$h;->l:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_1b
    iget-object v0, p0, Lb/r/a/a/i$h;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    invoke-virtual {v1}, Lb/r/a/a/i$g;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lb/r/a/a/i$h;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p1, p0, Lb/r/a/a/i$h;->l:Landroid/graphics/Paint;

    return-object p1
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .registers 6

    invoke-virtual {p0, p2}, Lb/r/a/a/i$h;->a(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object p2

    iget-object v0, p0, Lb/r/a/a/i$h;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public a()Z
    .registers 3

    iget-boolean v0, p0, Lb/r/a/a/i$h;->k:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lb/r/a/a/i$h;->g:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lb/r/a/a/i$h;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_22

    iget-boolean v0, p0, Lb/r/a/a/i$h;->j:Z

    iget-boolean v1, p0, Lb/r/a/a/i$h;->e:Z

    if-ne v0, v1, :cond_22

    iget v0, p0, Lb/r/a/a/i$h;->i:I

    iget-object v1, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    invoke-virtual {v1}, Lb/r/a/a/i$g;->getRootAlpha()I

    move-result v1

    if-ne v0, v1, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)Z
    .registers 4

    iget-object v0, p0, Lb/r/a/a/i$h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_12

    iget-object p1, p0, Lb/r/a/a/i$h;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p2, p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public a([I)Z
    .registers 3

    iget-object v0, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    invoke-virtual {v0, p1}, Lb/r/a/a/i$g;->a([I)Z

    move-result p1

    iget-boolean v0, p0, Lb/r/a/a/i$h;->k:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lb/r/a/a/i$h;->k:Z

    return p1
.end method

.method public b(II)V
    .registers 4

    iget-object v0, p0, Lb/r/a/a/i$h;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lb/r/a/a/i$h;->a(II)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lb/r/a/a/i$h;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/r/a/a/i$h;->k:Z

    :cond_15
    return-void
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    invoke-virtual {v0}, Lb/r/a/a/i$g;->getRootAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public c(II)V
    .registers 6

    iget-object v0, p0, Lb/r/a/a/i$h;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lb/r/a/a/i$h;->f:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, p2, v2}, Lb/r/a/a/i$g;->a(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    invoke-virtual {v0}, Lb/r/a/a/i$g;->a()Z

    move-result v0

    return v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$h;->c:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lb/r/a/a/i$h;->g:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lb/r/a/a/i$h;->d:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lb/r/a/a/i$h;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lb/r/a/a/i$h;->b:Lb/r/a/a/i$g;

    invoke-virtual {v0}, Lb/r/a/a/i$g;->getRootAlpha()I

    move-result v0

    iput v0, p0, Lb/r/a/a/i$h;->i:I

    iget-boolean v0, p0, Lb/r/a/a/i$h;->e:Z

    iput-boolean v0, p0, Lb/r/a/a/i$h;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/r/a/a/i$h;->k:Z

    return-void
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget v0, p0, Lb/r/a/a/i$h;->a:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    new-instance v0, Lb/r/a/a/i;

    invoke-direct {v0, p0}, Lb/r/a/a/i;-><init>(Lb/r/a/a/i$h;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    new-instance p1, Lb/r/a/a/i;

    invoke-direct {p1, p0}, Lb/r/a/a/i;-><init>(Lb/r/a/a/i$h;)V

    return-object p1
.end method

###### Class b.r.a.a.i.C0126i (b.r.a.a.i$i)
.class Lb/r/a/a/i$i;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/r/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lb/r/a/a/i$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget-object v0, p0, Lb/r/a/a/i$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Lb/r/a/a/i;

    invoke-direct {v0}, Lb/r/a/a/i;-><init>()V

    iget-object v1, p0, Lb/r/a/a/i$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable;

    iput-object v1, v0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    new-instance v0, Lb/r/a/a/i;

    invoke-direct {v0}, Lb/r/a/a/i;-><init>()V

    iget-object v1, p0, Lb/r/a/a/i$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    iput-object p1, v0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    new-instance v0, Lb/r/a/a/i;

    invoke-direct {v0}, Lb/r/a/a/i;-><init>()V

    iget-object v1, p0, Lb/r/a/a/i$i;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/VectorDrawable;

    iput-object p1, v0, Lb/r/a/a/h;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
