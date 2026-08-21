###### Class b.q.g0 (b.q.g0)
.class Lb/q/g0;
.super Lb/q/f0;
.source ""


# static fields
.field private static e:Ljava/lang/reflect/Method;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Method;

.field private static h:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/q/f0;-><init>()V

    return-void
.end method

.method private a()V
    .registers 7

    sget-boolean v0, Lb/q/g0;->f:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "transformMatrixToGlobal"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lb/q/g0;->e:Ljava/lang/reflect/Method;

    sget-object v1, Lb/q/g0;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v1

    const-string v2, "ViewUtilsApi21"

    const-string v3, "Failed to retrieve transformMatrixToGlobal method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    sput-boolean v0, Lb/q/g0;->f:Z

    :cond_26
    return-void
.end method

.method private b()V
    .registers 7

    sget-boolean v0, Lb/q/g0;->h:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/view/View;

    const-string v2, "transformMatrixToLocal"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Matrix;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lb/q/g0;->g:Ljava/lang/reflect/Method;

    sget-object v1, Lb/q/g0;->g:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v1

    const-string v2, "ViewUtilsApi21"

    const-string v3, "Failed to retrieve transformMatrixToLocal method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    sput-boolean v0, Lb/q/g0;->h:Z

    :cond_26
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 6

    invoke-direct {p0}, Lb/q/g0;->a()V

    sget-object v0, Lb/q/g0;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_10} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_1c

    :catch_11
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1c
    :cond_1c
    :goto_1c
    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Matrix;)V
    .registers 6

    invoke-direct {p0}, Lb/q/g0;->b()V

    sget-object v0, Lb/q/g0;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    :try_start_8
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_10} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_1c

    :catch_11
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1c
    :cond_1c
    :goto_1c
    return-void
.end method
