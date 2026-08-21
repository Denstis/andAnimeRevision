###### Class b.q.e0 (b.q.e0)
.class Lb/q/e0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Lb/q/i0;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z

.field static final d:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_e

    new-instance v0, Lb/q/h0;

    invoke-direct {v0}, Lb/q/h0;-><init>()V

    :goto_b
    sput-object v0, Lb/q/e0;->a:Lb/q/i0;

    goto :goto_28

    :cond_e
    const/16 v1, 0x15

    if-lt v0, v1, :cond_18

    new-instance v0, Lb/q/g0;

    invoke-direct {v0}, Lb/q/g0;-><init>()V

    goto :goto_b

    :cond_18
    const/16 v1, 0x13

    if-lt v0, v1, :cond_22

    new-instance v0, Lb/q/f0;

    invoke-direct {v0}, Lb/q/f0;-><init>()V

    goto :goto_b

    :cond_22
    new-instance v0, Lb/q/i0;

    invoke-direct {v0}, Lb/q/i0;-><init>()V

    goto :goto_b

    :goto_28
    new-instance v0, Lb/q/e0$a;

    const-class v1, Ljava/lang/Float;

    const-string v2, "translationAlpha"

    invoke-direct {v0, v1, v2}, Lb/q/e0$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lb/q/e0;->d:Landroid/util/Property;

    new-instance v0, Lb/q/e0$b;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    invoke-direct {v0, v1, v2}, Lb/q/e0$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private static a()V
    .registers 3

    sget-boolean v0, Lb/q/e0;->c:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "mViewFlags"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lb/q/e0;->b:Ljava/lang/reflect/Field;

    sget-object v1, Lb/q/e0;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    const-string v1, "ViewUtils"

    const-string v2, "fetchViewFlagsField: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    sput-boolean v0, Lb/q/e0;->c:Z

    :cond_1e
    return-void
.end method

.method static a(Landroid/view/View;)V
    .registers 2

    sget-object v0, Lb/q/e0;->a:Lb/q/i0;

    invoke-virtual {v0, p0}, Lb/q/i0;->a(Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/View;F)V
    .registers 3

    sget-object v0, Lb/q/e0;->a:Lb/q/i0;

    invoke-virtual {v0, p0, p1}, Lb/q/i0;->a(Landroid/view/View;F)V

    return-void
.end method

.method static a(Landroid/view/View;I)V
    .registers 4

    invoke-static {}, Lb/q/e0;->a()V

    sget-object v0, Lb/q/e0;->b:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_13

    :try_start_7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lb/q/e0;->b:Ljava/lang/reflect/Field;

    and-int/lit8 v0, v0, -0xd

    or-int/2addr p1, v0

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    return-void
.end method

.method static a(Landroid/view/View;IIII)V
    .registers 11

    sget-object v0, Lb/q/e0;->a:Lb/q/i0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lb/q/i0;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3

    sget-object v0, Lb/q/e0;->a:Lb/q/i0;

    invoke-virtual {v0, p0, p1}, Lb/q/i0;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static b(Landroid/view/View;)Lb/q/d0;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    new-instance v0, Lb/q/c0;

    invoke-direct {v0, p0}, Lb/q/c0;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_c
    invoke-static {p0}, Lb/q/b0;->c(Landroid/view/View;)Lb/q/b0;

    move-result-object p0

    return-object p0
.end method

.method static b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 3

    sget-object v0, Lb/q/e0;->a:Lb/q/i0;

    invoke-virtual {v0, p0, p1}, Lb/q/i0;->b(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method static c(Landroid/view/View;)F
    .registers 2

    sget-object v0, Lb/q/e0;->a:Lb/q/i0;

    invoke-virtual {v0, p0}, Lb/q/i0;->b(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static d(Landroid/view/View;)Lb/q/m0;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_c

    new-instance v0, Lb/q/l0;

    invoke-direct {v0, p0}, Lb/q/l0;-><init>(Landroid/view/View;)V

    return-object v0

    :cond_c
    new-instance v0, Lb/q/k0;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/q/k0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method static e(Landroid/view/View;)V
    .registers 2

    sget-object v0, Lb/q/e0;->a:Lb/q/i0;

    invoke-virtual {v0, p0}, Lb/q/i0;->c(Landroid/view/View;)V

    return-void
.end method

###### Class b.q.e0.a (b.q.e0$a)
.class final Lb/q/e0$a;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    invoke-static {p1}, Lb/q/e0;->c(Landroid/view/View;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Ljava/lang/Float;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lb/q/e0;->a(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lb/q/e0$a;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lb/q/e0$a;->a(Landroid/view/View;Ljava/lang/Float;)V

    return-void
.end method

###### Class b.q.e0.b (b.q.e0$b)
.class final Lb/q/e0$b;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/q/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    invoke-static {p1}, Lb/h/o/s;->e(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    invoke-static {p1, p2}, Lb/h/o/s;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lb/q/e0$b;->a(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lb/q/e0$b;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
