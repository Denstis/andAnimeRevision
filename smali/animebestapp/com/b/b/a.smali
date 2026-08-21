###### Class animebestapp.com.b.b.a (animebestapp.com.b.b.a)
.class public final Lanimebestapp/com/b/b/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lanimebestapp/com/b/a/b;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 3

    const-string v0, "app"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lanimebestapp/com/b/a/b;

    invoke-direct {v0, p1}, Lanimebestapp/com/b/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0}, Lanimebestapp/com/b/a/b;->e()I

    move-result v0

    return v0
.end method

.method public final a(Lanimebestapp/com/models/g;)Lanimebestapp/com/models/g;
    .registers 3

    const-string v0, "userInfo"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0, p1}, Lanimebestapp/com/b/a/b;->a(Lanimebestapp/com/models/g;)V

    return-object p1
.end method

.method public final a(J)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0, p1, p2}, Lanimebestapp/com/b/a/b;->a(J)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0, p1}, Lanimebestapp/com/b/a/b;->b(I)V

    return-void
.end method

.method public final a(JI)V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lanimebestapp/com/b/a/b;->b(JI)V

    return-void
.end method

.method public final a(JIJ)V
    .registers 12

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lanimebestapp/com/b/a/b;->a(JIJ)V

    return-void
.end method

.method public final a(Lanimebestapp/com/models/Anime;)Z
    .registers 3

    const-string v0, "anime"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0, p1}, Lanimebestapp/com/b/a/b;->a(Lanimebestapp/com/models/Anime;)Z

    move-result p1

    return p1
.end method

.method public final b()J
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0}, Lanimebestapp/com/b/a/b;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(JI)J
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lanimebestapp/com/b/a/b;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0, p1}, Lanimebestapp/com/b/a/b;->a(I)V

    iget-object p1, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {p1}, Lanimebestapp/com/b/a/b;->i()V

    return-void
.end method

.method public final c()Lanimebestapp/com/models/g;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0}, Lanimebestapp/com/b/a/b;->h()Lanimebestapp/com/models/g;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0}, Lanimebestapp/com/b/a/b;->f()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0}, Lanimebestapp/com/b/a/b;->a()V

    return-void
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanimebestapp/com/b/a/b;->b(Z)V

    iget-object v0, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v0}, Lanimebestapp/com/b/a/b;->i()V

    return-void
.end method

.method public final g()V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lanimebestapp/com/b/b/a;->a:Lanimebestapp/com/b/a/b;

    invoke-virtual {v2, v0, v1}, Lanimebestapp/com/b/a/b;->b(J)V

    return-void
.end method
