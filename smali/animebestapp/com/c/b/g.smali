###### Class animebestapp.com.c.b.g (animebestapp.com.c.b.g)
.class public final Lanimebestapp/com/c/b/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/c/b/g$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/c/b/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/c/b/g$a;-><init>(Lg/p/b/d;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk/n;)Lanimebestapp/com/e/a;
    .registers 3

    const-string v0, "retrofit"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lanimebestapp/com/e/a;

    invoke-virtual {p1, v0}, Lk/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "retrofit.create(MainApi::class.java)"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lanimebestapp/com/e/a;

    return-object p1
.end method

.method public final a()Lh/x;
    .registers 9

    new-instance v0, Lh/x$b;

    invoke-direct {v0}, Lh/x$b;-><init>()V

    new-instance v1, Lh/k$a;

    sget-object v2, Lh/k;->g:Lh/k;

    invoke-direct {v1, v2}, Lh/k$a;-><init>(Lh/k;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lh/k$a;->a(Z)Lh/k$a;

    const/4 v3, 0x3

    new-array v4, v3, [Lh/f0;

    sget-object v5, Lh/f0;->d:Lh/f0;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lh/f0;->e:Lh/f0;

    aput-object v5, v4, v2

    sget-object v5, Lh/f0;->f:Lh/f0;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-virtual {v1, v4}, Lh/k$a;->a([Lh/f0;)Lh/k$a;

    const/16 v4, 0xc

    new-array v4, v4, [Lh/h;

    sget-object v5, Lh/h;->s:Lh/h;

    aput-object v5, v4, v6

    sget-object v5, Lh/h;->u:Lh/h;

    aput-object v5, v4, v2

    sget-object v5, Lh/h;->l:Lh/h;

    aput-object v5, v4, v7

    sget-object v5, Lh/h;->o:Lh/h;

    aput-object v5, v4, v3

    sget-object v3, Lh/h;->n:Lh/h;

    const/4 v5, 0x4

    aput-object v3, v4, v5

    sget-object v3, Lh/h;->q:Lh/h;

    const/4 v5, 0x5

    aput-object v3, v4, v5

    sget-object v3, Lh/h;->r:Lh/h;

    const/4 v5, 0x6

    aput-object v3, v4, v5

    sget-object v3, Lh/h;->m:Lh/h;

    const/4 v5, 0x7

    aput-object v3, v4, v5

    sget-object v3, Lh/h;->p:Lh/h;

    const/16 v5, 0x8

    aput-object v3, v4, v5

    sget-object v3, Lh/h;->g:Lh/h;

    const/16 v5, 0x9

    aput-object v3, v4, v5

    sget-object v3, Lh/h;->f:Lh/h;

    const/16 v5, 0xa

    aput-object v3, v4, v5

    sget-object v3, Lh/h;->i:Lh/h;

    const/16 v5, 0xb

    aput-object v3, v4, v5

    invoke-virtual {v1, v4}, Lh/k$a;->a([Lh/h;)Lh/k$a;

    invoke-virtual {v1}, Lh/k$a;->a()Lh/k;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/x$b;->a(Ljava/util/List;)Lh/x$b;

    new-instance v1, Lh/i0/a;

    invoke-direct {v1}, Lh/i0/a;-><init>()V

    sget-object v3, Lh/i0/a$a;->b:Lh/i0/a$a;

    invoke-virtual {v1, v3}, Lh/i0/a;->a(Lh/i0/a$a;)Lh/i0/a;

    invoke-virtual {v0, v1}, Lh/x$b;->a(Lh/u;)Lh/x$b;

    invoke-virtual {v0, v2}, Lh/x$b;->a(Z)Lh/x$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lh/x$b;->b(JLjava/util/concurrent/TimeUnit;)Lh/x$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lh/x$b;->a(JLjava/util/concurrent/TimeUnit;)Lh/x$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lh/x$b;->c(JLjava/util/concurrent/TimeUnit;)Lh/x$b;

    invoke-virtual {v0}, Lh/x$b;->a()Lh/x;

    move-result-object v0

    const-string v1, "builder.build()"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lh/x;Lcom/google/gson/Gson;)Lk/n;
    .registers 5

    const-string v0, "okHttpClient"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk/n$b;

    invoke-direct {v0}, Lk/n$b;-><init>()V

    const-string v1, "https://anirise.org/"

    invoke-virtual {v0, v1}, Lk/n$b;->a(Ljava/lang/String;)Lk/n$b;

    invoke-virtual {v0, p1}, Lk/n$b;->a(Lh/x;)Lk/n$b;

    invoke-static {}, Lk/q/a/h;->a()Lk/q/a/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/n$b;->a(Lk/c$a;)Lk/n$b;

    invoke-static {p2}, Lk/r/a/a;->a(Lcom/google/gson/Gson;)Lk/r/a/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk/n$b;->a(Lk/e$a;)Lk/n$b;

    invoke-virtual {v0}, Lk/n$b;->a()Lk/n;

    move-result-object p1

    const-string p2, "Retrofit.Builder()\n     \u2026                 .build()"

    invoke-static {p1, p2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

###### Class animebestapp.com.c.b.g.a (animebestapp.com.c.b.g$a)
.class public final Lanimebestapp/com/c/b/g$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/p/b/d;)V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/c/b/g$a;-><init>()V

    return-void
.end method
