###### Class androidx.core.app.j (androidx.core.app.j)
.class Landroidx/core/app/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Ljava/lang/reflect/Field;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/j;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;Landroidx/core/app/h$a;)Landroid/os/Bundle;
    .registers 5

    invoke-virtual {p1}, Landroidx/core/app/h$a;->e()I

    move-result v0

    invoke-virtual {p1}, Landroidx/core/app/h$a;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/app/h$a;->a()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance p0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/l;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/l;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/j;->a([Landroidx/core/app/l;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.remoteInputs"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_2b
    invoke-virtual {p1}, Landroidx/core/app/h$a;->c()[Landroidx/core/app/l;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroidx/core/app/h$a;->c()[Landroidx/core/app/l;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/j;->a([Landroidx/core/app/l;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.dataRemoteInputs"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_3e
    invoke-virtual {p1}, Landroidx/core/app/h$a;->b()Z

    move-result p1

    const-string v0, "android.support.allowGeneratedReplies"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .registers 7

    sget-object v0, Landroidx/core/app/j;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Landroidx/core/app/j;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5c

    return-object v2

    :cond_a
    const/4 v1, 0x1

    :try_start_b
    sget-object v3, Landroidx/core/app/j;->b:Ljava/lang/reflect/Field;

    if-nez v3, :cond_33

    const-class v3, Landroid/app/Notification;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_11} :catch_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_b .. :try_end_11} :catch_49
    .catchall {:try_start_b .. :try_end_11} :catchall_5c

    const-string v4, "extras"

    :try_start_13
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v4, Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string p0, "NotificationCompat"

    const-string v3, "Notification.extras field is not of type Bundle"

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v1, Landroidx/core/app/j;->c:Z
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_2c} :catch_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_2c} :catch_49
    .catchall {:try_start_13 .. :try_end_2c} :catchall_5c

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_5c

    return-object v2

    :cond_2e
    :try_start_2e
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sput-object v3, Landroidx/core/app/j;->b:Ljava/lang/reflect/Field;

    :cond_33
    sget-object v3, Landroidx/core/app/j;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-nez v3, :cond_47

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    sget-object v4, Landroidx/core/app/j;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_47} :catch_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2e .. :try_end_47} :catch_49
    .catchall {:try_start_2e .. :try_end_47} :catchall_5c

    :cond_47
    :try_start_47
    monitor-exit v0

    return-object v3

    :catch_49
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    :goto_4e
    invoke-static {v3, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    :catch_52
    move-exception p0

    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification extras"

    goto :goto_4e

    :goto_58
    sput-boolean v1, Landroidx/core/app/j;->c:Z

    monitor-exit v0

    return-object v2

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_47 .. :try_end_5e} :catchall_5c

    goto :goto_60

    :goto_5f
    throw p0

    :goto_60
    goto :goto_5f
.end method

.method static a(Landroidx/core/app/h$a;)Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/core/app/h$a;->e()I

    move-result v1

    const-string v2, "icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroidx/core/app/h$a;->i()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/core/app/h$a;->a()Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "actionIntent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_30

    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/core/app/h$a;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_35

    :cond_30
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_35
    invoke-virtual {p0}, Landroidx/core/app/h$a;->b()Z

    move-result v2

    const-string v3, "android.support.allowGeneratedReplies"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "extras"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/core/app/h$a;->f()[Landroidx/core/app/l;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/app/j;->a([Landroidx/core/app/l;)[Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "remoteInputs"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroidx/core/app/h$a;->h()Z

    move-result v1

    const-string v2, "showsUserInterface"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroidx/core/app/h$a;->g()I

    move-result p0

    const-string v1, "semanticAction"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static a(Landroidx/core/app/l;)Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroidx/core/app/l;->a()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(Ljava/util/List;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1d

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_1a

    if-nez v1, :cond_17

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    :cond_17
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1d
    return-object v1
.end method

.method private static a([Landroidx/core/app/l;)[Landroid/os/Bundle;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    array-length v1, p0

    new-array v1, v1, [Landroid/os/Bundle;

    const/4 v2, 0x0

    array-length v3, p0

    if-gtz v3, :cond_c

    return-object v1

    :cond_c
    aget-object p0, p0, v2

    invoke-static {p0}, Landroidx/core/app/j;->a(Landroidx/core/app/l;)Landroid/os/Bundle;

    throw v0
.end method
