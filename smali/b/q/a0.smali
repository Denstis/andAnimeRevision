###### Class b.q.a0 (b.q.a0)
.class Lb/q/a0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Z


# direct methods
.method private static a()V
    .registers 6

    sget-boolean v0, Lb/q/a0;->b:Z

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "suppressLayout"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lb/q/a0;->a:Ljava/lang/reflect/Method;

    sget-object v1, Lb/q/a0;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_24

    :catch_1c
    move-exception v1

    const-string v2, "ViewUtilsApi18"

    const-string v3, "Failed to retrieve suppressLayout method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    sput-boolean v0, Lb/q/a0;->b:Z

    :cond_26
    return-void
.end method

.method static a(Landroid/view/ViewGroup;Z)V
    .registers 6

    const-string v0, "ViewUtilsApi18"

    invoke-static {}, Lb/q/a0;->a()V

    sget-object v1, Lb/q/a0;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_21

    const/4 v2, 0x1

    :try_start_a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_17

    goto :goto_21

    :catch_17
    move-exception p0

    const-string p1, "Error invoking suppressLayout method"

    goto :goto_1e

    :catch_1b
    move-exception p0

    const-string p1, "Failed to invoke suppressLayout method"

    :goto_1e
    invoke-static {v0, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    :goto_21
    return-void
.end method
