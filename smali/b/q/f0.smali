###### Class b.q.f0 (b.q.f0)
.class Lb/q/f0;
.super Lb/q/i0;
.source ""


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Method;

.field private static d:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/q/i0;-><init>()V

    return-void
.end method

.method private a()V
    .registers 5

    sget-boolean v0, Lb/q/f0;->d:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "getTransitionAlpha"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lb/q/f0;->c:Ljava/lang/reflect/Method;

    sget-object v1, Lb/q/f0;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v1

    const-string v2, "ViewUtilsApi19"

    const-string v3, "Failed to retrieve getTransitionAlpha method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    sput-boolean v0, Lb/q/f0;->d:Z

    :cond_22
    return-void
.end method

.method private b()V
    .registers 7

    sget-boolean v0, Lb/q/f0;->b:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "setTransitionAlpha"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lb/q/f0;->a:Ljava/lang/reflect/Method;

    sget-object v1, Lb/q/f0;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v1

    const-string v2, "ViewUtilsApi19"

    const-string v3, "Failed to retrieve setTransitionAlpha method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    sput-boolean v0, Lb/q/f0;->b:Z

    :cond_26
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/view/View;F)V
    .registers 6

    invoke-direct {p0}, Lb/q/f0;->b()V

    sget-object v0, Lb/q/f0;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_14} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_23

    :catch_15
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_20
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :catch_23
    :goto_23
    return-void
.end method

.method public b(Landroid/view/View;)F
    .registers 4

    invoke-direct {p0}, Lb/q/f0;->a()V

    sget-object v0, Lb/q/f0;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_14} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_14} :catch_15

    return p1

    :catch_15
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_20
    :cond_20
    invoke-super {p0, p1}, Lb/q/i0;->b(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public c(Landroid/view/View;)V
    .registers 2

    return-void
.end method
