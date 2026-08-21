###### Class b.h.m.b (b.h.m.b)
.class public final Lb/h/m/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/reflect/Method;

.field private static b:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "addLikelySubtags"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15

    if-lt v0, v4, :cond_24

    const-string v0, "libcore.icu.ICU"

    :try_start_c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/util/Locale;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lb/h/m/b;->b:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_1d

    goto :goto_52

    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_24
    const-string v0, "libcore.icu.ICU"

    :try_start_26
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_52

    const-string v4, "getScript"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lb/h/m/b;->a:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lb/h/m/b;->b:Ljava/lang/reflect/Method;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_46} :catch_47

    goto :goto_52

    :catch_47
    move-exception v0

    const/4 v1, 0x0

    sput-object v1, Lb/h/m/b;->a:Ljava/lang/reflect/Method;

    sput-object v1, Lb/h/m/b;->b:Ljava/lang/reflect/Method;

    const-string v1, "ICUCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_52
    :goto_52
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "ICUCompat"

    const/4 v1, 0x0

    :try_start_3
    sget-object v2, Lb/h/m/b;->a:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    sget-object p0, Lb/h/m/b;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_15} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    goto :goto_19

    :catch_18
    move-exception p0

    :goto_19
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1c
    return-object v1
.end method

.method private static a(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    const-string v0, "ICUCompat"

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_6
    sget-object v1, Lb/h/m/b;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lb/h/m/b;->b:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_19} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_19} :catch_1a

    return-object v1

    :catch_1a
    move-exception v1

    goto :goto_1d

    :catch_1c
    move-exception v1

    :goto_1d
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    return-object p0
.end method

.method public static b(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    const-string v0, "ICUCompat"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v1, v3, :cond_27

    const/4 v1, 0x1

    :try_start_a
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    sget-object v3, Lb/h/m/b;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_1b} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception v1

    goto :goto_1f

    :catch_1e
    move-exception v1

    :goto_1f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    invoke-static {p0}, Lb/h/m/b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_32

    invoke-static {p0}, Lb/h/m/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_32
    return-object v2
.end method
