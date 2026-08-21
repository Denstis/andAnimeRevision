###### Class com.bumptech.glide.load.n.j (com.bumptech.glide.load.n.j)
.class public abstract Lcom/bumptech/glide/load/n/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lcom/bumptech/glide/load/n/j;

.field public static final b:Lcom/bumptech/glide/load/n/j;

.field public static final c:Lcom/bumptech/glide/load/n/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/n/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/j$a;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/n/j$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/j$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/n/j;->a:Lcom/bumptech/glide/load/n/j;

    new-instance v0, Lcom/bumptech/glide/load/n/j$c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/j$c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/n/j;->b:Lcom/bumptech/glide/load/n/j;

    new-instance v0, Lcom/bumptech/glide/load/n/j$d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/j$d;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/n/j$e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/n/j$e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/n/j;->c:Lcom/bumptech/glide/load/n/j;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract a(Lcom/bumptech/glide/load/a;)Z
.end method

.method public abstract a(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
.end method

.method public abstract b()Z
.end method

###### Class com.bumptech.glide.load.n.j.a (com.bumptech.glide.load.n.j$a)
.class Lcom/bumptech/glide/load/n/j$a;
.super Lcom/bumptech/glide/load/n/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Z
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/a;->c:Lcom/bumptech/glide/load/a;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public a(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
    .registers 4

    sget-object p1, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    if-eq p2, p1, :cond_a

    sget-object p1, Lcom/bumptech/glide/load/a;->f:Lcom/bumptech/glide/load/a;

    if-eq p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.bumptech.glide.load.n.j.b (com.bumptech.glide.load.n.j$b)
.class Lcom/bumptech/glide/load/n/j$b;
.super Lcom/bumptech/glide/load/n/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.bumptech.glide.load.n.j.c (com.bumptech.glide.load.n.j$c)
.class Lcom/bumptech/glide/load/n/j$c;
.super Lcom/bumptech/glide/load/n/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Z
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    if-eq p1, v0, :cond_a

    sget-object v0, Lcom/bumptech/glide/load/a;->f:Lcom/bumptech/glide/load/a;

    if-eq p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public a(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.bumptech.glide.load.n.j.d (com.bumptech.glide.load.n.j$d)
.class Lcom/bumptech/glide/load/n/j$d;
.super Lcom/bumptech/glide/load/n/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public a(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
    .registers 4

    sget-object p1, Lcom/bumptech/glide/load/a;->e:Lcom/bumptech/glide/load/a;

    if-eq p2, p1, :cond_a

    sget-object p1, Lcom/bumptech/glide/load/a;->f:Lcom/bumptech/glide/load/a;

    if-eq p2, p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.bumptech.glide.load.n.j.e (com.bumptech.glide.load.n.j$e)
.class Lcom/bumptech/glide/load/n/j$e;
.super Lcom/bumptech/glide/load/n/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/n/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Z
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/a;->c:Lcom/bumptech/glide/load/a;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public a(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
    .registers 4

    if-eqz p1, :cond_6

    sget-object p1, Lcom/bumptech/glide/load/a;->d:Lcom/bumptech/glide/load/a;

    if-eq p2, p1, :cond_a

    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/a;->b:Lcom/bumptech/glide/load/a;

    if-ne p2, p1, :cond_10

    :cond_a
    sget-object p1, Lcom/bumptech/glide/load/c;->c:Lcom/bumptech/glide/load/c;

    if-ne p3, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
