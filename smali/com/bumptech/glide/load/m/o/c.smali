###### Class com.bumptech.glide.load.m.o.c (com.bumptech.glide.load.m.o.c)
.class public Lcom/bumptech/glide/load/m/o/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/m/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/m/o/c$a;,
        Lcom/bumptech/glide/load/m/o/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/m/d<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/net/Uri;

.field private final c:Lcom/bumptech/glide/load/m/o/e;

.field private d:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/bumptech/glide/load/m/o/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/m/o/c;->b:Landroid/net/Uri;

    iput-object p2, p0, Lcom/bumptech/glide/load/m/o/c;->c:Lcom/bumptech/glide/load/m/o/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/m/o/c;
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/m/o/c$a;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/m/o/c$a;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/m/o/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/m/o/d;)Lcom/bumptech/glide/load/m/o/c;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/m/o/d;)Lcom/bumptech/glide/load/m/o/c;
    .registers 6

    invoke-static {p0}, Lc/a/a/c;->b(Landroid/content/Context;)Lc/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/c;->b()Lcom/bumptech/glide/load/n/a0/b;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/m/o/e;

    invoke-static {p0}, Lc/a/a/c;->b(Landroid/content/Context;)Lc/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lc/a/a/c;->g()Lc/a/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lc/a/a/i;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-direct {v1, v2, p2, v0, p0}, Lcom/bumptech/glide/load/m/o/e;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/m/o/d;Lcom/bumptech/glide/load/n/a0/b;Landroid/content/ContentResolver;)V

    new-instance p0, Lcom/bumptech/glide/load/m/o/c;

    invoke-direct {p0, p1, v1}, Lcom/bumptech/glide/load/m/o/c;-><init>(Landroid/net/Uri;Lcom/bumptech/glide/load/m/o/e;)V

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)Lcom/bumptech/glide/load/m/o/c;
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/m/o/c$b;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/m/o/c$b;-><init>(Landroid/content/ContentResolver;)V

    invoke-static {p0, p1, v0}, Lcom/bumptech/glide/load/m/o/c;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/bumptech/glide/load/m/o/d;)Lcom/bumptech/glide/load/m/o/c;

    move-result-object p0

    return-object p0
.end method

.method private d()Ljava/io/InputStream;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/m/o/c;->c:Lcom/bumptech/glide/load/m/o/e;

    iget-object v1, p0, Lcom/bumptech/glide/load/m/o/c;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/m/o/e;->b(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/bumptech/glide/load/m/o/c;->c:Lcom/bumptech/glide/load/m/o/e;

    iget-object v3, p0, Lcom/bumptech/glide/load/m/o/c;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/load/m/o/e;->a(Landroid/net/Uri;)I

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, -0x1

    :goto_15
    if-eq v2, v1, :cond_1d

    new-instance v1, Lcom/bumptech/glide/load/m/g;

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/load/m/g;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v1

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Lc/a/a/h;Lcom/bumptech/glide/load/m/d$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/h;",
            "Lcom/bumptech/glide/load/m/d$a<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/m/o/c;->d()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/m/o/c;->d:Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_6} :catch_c

    iget-object p1, p0, Lcom/bumptech/glide/load/m/o/c;->d:Ljava/io/InputStream;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/m/d$a;->a(Ljava/lang/Object;)V

    return-void

    :catch_c
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "MediaStoreThumbFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "Failed to find thumbnail file"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/m/d$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/m/o/c;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    :cond_7
    return-void
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .registers 2

    sget-object v0, Lcom/bumptech/glide/load/a;->b:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public cancel()V
    .registers 1

    return-void
.end method

###### Class com.bumptech.glide.load.m.o.c.a (com.bumptech.glide.load.m.o.c$a)
.class Lcom/bumptech/glide/load/m/o/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/m/o/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/m/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bumptech/glide/load/m/o/c$a;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/m/o/c$a;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 8

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/m/o/c$a;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/bumptech/glide/load/m/o/c$a;->b:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "kind = 1 AND image_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

###### Class com.bumptech.glide.load.m.o.c.b (com.bumptech.glide.load.m.o.c$b)
.class Lcom/bumptech/glide/load/m/o/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/m/o/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/m/o/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bumptech/glide/load/m/o/c$b;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/m/o/c$b;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Landroid/database/Cursor;
    .registers 8

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/m/o/c$b;->a:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/bumptech/glide/load/m/o/c$b;->b:[Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const-string v3, "kind = 1 AND video_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
