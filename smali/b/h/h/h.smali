###### Class b.h.h.h (b.h.h.h)
.class Lb/h/h/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/h/h$c;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroidx/core/content/c/c$b;I)Landroidx/core/content/c/c$c;
    .registers 4

    invoke-virtual {p1}, Landroidx/core/content/c/c$b;->a()[Landroidx/core/content/c/c$c;

    move-result-object p1

    new-instance v0, Lb/h/h/h$b;

    invoke-direct {v0, p0}, Lb/h/h/h$b;-><init>(Lb/h/h/h;)V

    invoke-static {p1, p2, v0}, Lb/h/h/h;->a([Ljava/lang/Object;ILb/h/h/h$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/core/content/c/c$c;

    return-object p1
.end method

.method private static a([Ljava/lang/Object;ILb/h/h/h$c;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Lb/h/h/h$c<",
            "TT;>;)TT;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_7

    const/16 v0, 0x190

    goto :goto_9

    :cond_7
    const/16 v0, 0x2bc

    :goto_9
    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    const/4 v3, 0x0

    const v4, 0x7fffffff

    array-length v5, p0

    move-object v4, v3

    const/4 v3, 0x0

    const v6, 0x7fffffff

    :goto_1c
    if-ge v3, v5, :cond_3e

    aget-object v7, p0, v3

    invoke-interface {p2, v7}, Lb/h/h/h$c;->a(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-interface {p2, v7}, Lb/h/h/h$c;->b(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, p1, :cond_33

    const/4 v9, 0x0

    goto :goto_34

    :cond_33
    const/4 v9, 0x1

    :goto_34
    add-int/2addr v8, v9

    if-eqz v4, :cond_39

    if-le v6, v8, :cond_3b

    :cond_39
    move-object v4, v7

    move v6, v8

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_3e
    return-object v4
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .registers 6

    invoke-static {p1}, Lb/h/h/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 p4, 0x0

    if-nez p1, :cond_8

    return-object p4

    :cond_8
    :try_start_8
    invoke-static {p1, p2, p3}, Lb/h/h/i;->a(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    if-nez p2, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4

    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_1e
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p4
.end method

.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Lb/h/l/b$f;I)Landroid/graphics/Typeface;
    .registers 7

    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {p0, p3, p4}, Lb/h/h/h;->a([Lb/h/l/b$f;I)Lb/h/l/b$f;

    move-result-object p2

    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2}, Lb/h/l/b$f;->c()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_26
    .catchall {:try_start_a .. :try_end_16} :catchall_21

    :try_start_16
    invoke-virtual {p0, p1, p2}, Lb/h/h/h;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_27
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1e

    invoke-static {p2}, Lb/h/h/i;->a(Ljava/io/Closeable;)V

    return-object p1

    :catchall_1e
    move-exception p1

    move-object v0, p2

    goto :goto_22

    :catchall_21
    move-exception p1

    :goto_22
    invoke-static {v0}, Lb/h/h/i;->a(Ljava/io/Closeable;)V

    throw p1

    :catch_26
    move-object p2, v0

    :catch_27
    invoke-static {p2}, Lb/h/h/i;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroidx/core/content/c/c$b;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 6

    invoke-direct {p0, p2, p4}, Lb/h/h/h;->a(Landroidx/core/content/c/c$b;I)Landroidx/core/content/c/c$c;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    invoke-virtual {p2}, Landroidx/core/content/c/c$c;->b()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/content/c/c$c;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, v0, p2, p4}, Lb/h/h/c;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .registers 4

    invoke-static {p1}, Lb/h/h/i;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    :try_start_8
    invoke-static {p1, p2}, Lb/h/h/i;->a(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p2
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_c} :catch_23
    .catchall {:try_start_8 .. :try_end_c} :catchall_1e

    if-nez p2, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0

    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_1a} :catch_23
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_1e
    move-exception p2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw p2

    :catch_23
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-object v0
.end method

.method protected a([Lb/h/l/b$f;I)Lb/h/l/b$f;
    .registers 4

    new-instance v0, Lb/h/h/h$a;

    invoke-direct {v0, p0}, Lb/h/h/h$a;-><init>(Lb/h/h/h;)V

    invoke-static {p1, p2, v0}, Lb/h/h/h;->a([Ljava/lang/Object;ILb/h/h/h$c;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/h/l/b$f;

    return-object p1
.end method

###### Class b.h.h.h.a (b.h.h.h$a)
.class Lb/h/h/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/h/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/h/h;->a([Lb/h/l/b$f;I)Lb/h/l/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/h/h/h$c<",
        "Lb/h/l/b$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lb/h/h/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/h/l/b$f;)I
    .registers 2

    invoke-virtual {p1}, Lb/h/l/b$f;->d()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lb/h/l/b$f;

    invoke-virtual {p0, p1}, Lb/h/h/h$a;->a(Lb/h/l/b$f;)I

    move-result p1

    return p1
.end method

.method public b(Lb/h/l/b$f;)Z
    .registers 2

    invoke-virtual {p1}, Lb/h/l/b$f;->e()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lb/h/l/b$f;

    invoke-virtual {p0, p1}, Lb/h/h/h$a;->b(Lb/h/l/b$f;)Z

    move-result p1

    return p1
.end method

###### Class b.h.h.h.b (b.h.h.h$b)
.class Lb/h/h/h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/h/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h/h/h;->a(Landroidx/core/content/c/c$b;I)Landroidx/core/content/c/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/h/h/h$c<",
        "Landroidx/core/content/c/c$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lb/h/h/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/content/c/c$c;)I
    .registers 2

    invoke-virtual {p1}, Landroidx/core/content/c/c$c;->e()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroidx/core/content/c/c$c;

    invoke-virtual {p0, p1}, Lb/h/h/h$b;->a(Landroidx/core/content/c/c$c;)I

    move-result p1

    return p1
.end method

.method public b(Landroidx/core/content/c/c$c;)Z
    .registers 2

    invoke-virtual {p1}, Landroidx/core/content/c/c$c;->f()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Landroidx/core/content/c/c$c;

    invoke-virtual {p0, p1}, Lb/h/h/h$b;->b(Landroidx/core/content/c/c$c;)Z

    move-result p1

    return p1
.end method

###### Class b.h.h.h.c (b.h.h.h$c)
.class interface abstract Lb/h/h/h$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/h/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
