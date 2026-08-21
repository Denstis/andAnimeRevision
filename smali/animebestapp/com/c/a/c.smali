###### Class animebestapp.com.c.a.c (animebestapp.com.c.a.c)
.class public final Lanimebestapp/com/c/a/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lanimebestapp/com/b/b/a;Lanimebestapp/com/e/b;)Lanimebestapp/com/d/a;
    .registers 4

    const-string v0, "localRepository"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkRepository"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/d/a;

    invoke-direct {v0, p1, p2}, Lanimebestapp/com/d/a;-><init>(Lanimebestapp/com/b/b/a;Lanimebestapp/com/e/b;)V

    return-object v0
.end method
