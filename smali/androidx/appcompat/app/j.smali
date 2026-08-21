###### Class androidx.appcompat.app.j (androidx.appcompat.app.j)
.class Landroidx/appcompat/app/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/Class;

.field private static d:Z

.field private static e:Ljava/lang/reflect/Field;

.field private static f:Z

.field private static g:Ljava/lang/reflect/Field;

.field private static h:Z


# direct methods
.method static a(Landroid/content/res/Resources;)V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_7

    return-void

    :cond_7
    const/16 v1, 0x18

    if-lt v0, v1, :cond_f

    invoke-static {p0}, Landroidx/appcompat/app/j;->d(Landroid/content/res/Resources;)V

    goto :goto_1e

    :cond_f
    const/16 v1, 0x17

    if-lt v0, v1, :cond_17

    invoke-static {p0}, Landroidx/appcompat/app/j;->c(Landroid/content/res/Resources;)V

    goto :goto_1e

    :cond_17
    const/16 v1, 0x15

    if-lt v0, v1, :cond_1e

    invoke-static {p0}, Landroidx/appcompat/app/j;->b(Landroid/content/res/Resources;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method private static a(Ljava/lang/Object;)V
    .registers 5

    sget-boolean v0, Landroidx/appcompat/app/j;->d:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_18

    const-string v0, "android.content.res.ThemedResourceCache"

    :try_start_9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/j;->c:Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception v0

    const-string v3, "Could not find ThemedResourceCache class"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    sput-boolean v1, Landroidx/appcompat/app/j;->d:Z

    :cond_18
    sget-object v0, Landroidx/appcompat/app/j;->c:Ljava/lang/Class;

    if-nez v0, :cond_1d

    return-void

    :cond_1d
    sget-boolean v3, Landroidx/appcompat/app/j;->f:Z

    if-nez v3, :cond_37

    :try_start_21
    const-string v3, "mUnthemedEntries"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/j;->e:Ljava/lang/reflect/Field;

    sget-object v0, Landroidx/appcompat/app/j;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception v0

    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_35
    sput-boolean v1, Landroidx/appcompat/app/j;->f:Z

    :cond_37
    sget-object v0, Landroidx/appcompat/app/j;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_3c

    return-void

    :cond_3c
    const/4 v1, 0x0

    :try_start_3d
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_43} :catch_44

    goto :goto_4b

    :catch_44
    move-exception p0

    const-string v0, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v1

    :goto_4b
    if-eqz p0, :cond_50

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    :cond_50
    return-void
.end method

.method private static b(Landroid/content/res/Resources;)V
    .registers 5

    sget-boolean v0, Landroidx/appcompat/app/j;->b:Z

    const-string v1, "ResourcesFlusher"

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/app/j;->a:Ljava/lang/reflect/Field;

    sget-object v2, Landroidx/appcompat/app/j;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v2

    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    sput-boolean v0, Landroidx/appcompat/app/j;->b:Z

    :cond_1f
    sget-object v0, Landroidx/appcompat/app/j;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_37

    const/4 v2, 0x0

    :try_start_24
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_2a} :catch_2b

    goto :goto_32

    :catch_2b
    move-exception p0

    const-string v0, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v2

    :goto_32
    if-eqz p0, :cond_37

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_37
    return-void
.end method

.method private static c(Landroid/content/res/Resources;)V
    .registers 5

    sget-boolean v0, Landroidx/appcompat/app/j;->b:Z

    const-string v1, "ResourcesFlusher"

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :try_start_7
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "mDrawableCache"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroidx/appcompat/app/j;->a:Ljava/lang/reflect/Field;

    sget-object v2, Landroidx/appcompat/app/j;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v2

    const-string v3, "Could not retrieve Resources#mDrawableCache field"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    sput-boolean v0, Landroidx/appcompat/app/j;->b:Z

    :cond_1f
    const/4 v0, 0x0

    sget-object v2, Landroidx/appcompat/app/j;->a:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2f

    :try_start_24
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception p0

    const-string v2, "Could not retrieve value from Resources#mDrawableCache"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    :goto_2f
    if-nez v0, :cond_32

    return-void

    :cond_32
    invoke-static {v0}, Landroidx/appcompat/app/j;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private static d(Landroid/content/res/Resources;)V
    .registers 6

    sget-boolean v0, Landroidx/appcompat/app/j;->h:Z

    const/4 v1, 0x1

    const-string v2, "ResourcesFlusher"

    if-nez v0, :cond_1f

    :try_start_7
    const-class v0, Landroid/content/res/Resources;

    const-string v3, "mResourcesImpl"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/j;->g:Ljava/lang/reflect/Field;

    sget-object v0, Landroidx/appcompat/app/j;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v0

    const-string v3, "Could not retrieve Resources#mResourcesImpl field"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    sput-boolean v1, Landroidx/appcompat/app/j;->h:Z

    :cond_1f
    sget-object v0, Landroidx/appcompat/app/j;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_24

    return-void

    :cond_24
    const/4 v3, 0x0

    :try_start_25
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_29} :catch_2a

    goto :goto_31

    :catch_2a
    move-exception p0

    const-string v0, "Could not retrieve value from Resources#mResourcesImpl"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v3

    :goto_31
    if-nez p0, :cond_34

    return-void

    :cond_34
    sget-boolean v0, Landroidx/appcompat/app/j;->b:Z

    if-nez v0, :cond_52

    :try_start_38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "mDrawableCache"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/j;->a:Ljava/lang/reflect/Field;

    sget-object v0, Landroidx/appcompat/app/j;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_49
    .catch Ljava/lang/NoSuchFieldException; {:try_start_38 .. :try_end_49} :catch_4a

    goto :goto_50

    :catch_4a
    move-exception v0

    const-string v4, "Could not retrieve ResourcesImpl#mDrawableCache field"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_50
    sput-boolean v1, Landroidx/appcompat/app/j;->b:Z

    :cond_52
    sget-object v0, Landroidx/appcompat/app/j;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_61

    :try_start_56
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_56 .. :try_end_5a} :catch_5b

    goto :goto_61

    :catch_5b
    move-exception p0

    const-string v0, "Could not retrieve value from ResourcesImpl#mDrawableCache"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_61
    :goto_61
    if-eqz v3, :cond_66

    invoke-static {v3}, Landroidx/appcompat/app/j;->a(Ljava/lang/Object;)V

    :cond_66
    return-void
.end method
