###### Class e.a.y.e.b.c (e.a.y.e.b.c)
.class public final Le/a/y/e/b/c;
.super Le/a/y/e/b/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/e/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/y/e/b/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final c:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field final d:Le/a/x/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/c<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/k;Le/a/x/e;Le/a/x/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k<",
            "TT;>;",
            "Le/a/x/e<",
            "-TT;TK;>;",
            "Le/a/x/c<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le/a/y/e/b/a;-><init>(Le/a/k;)V

    iput-object p2, p0, Le/a/y/e/b/c;->c:Le/a/x/e;

    iput-object p3, p0, Le/a/y/e/b/c;->d:Le/a/x/c;

    return-void
.end method


# virtual methods
.method protected b(Le/a/m;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Le/a/y/e/b/a;->b:Le/a/k;

    new-instance v1, Le/a/y/e/b/c$a;

    iget-object v2, p0, Le/a/y/e/b/c;->c:Le/a/x/e;

    iget-object v3, p0, Le/a/y/e/b/c;->d:Le/a/x/c;

    invoke-direct {v1, p1, v2, v3}, Le/a/y/e/b/c$a;-><init>(Le/a/m;Le/a/x/e;Le/a/x/c;)V

    invoke-interface {v0, v1}, Le/a/k;->a(Le/a/m;)V

    return-void
.end method

###### Class e.a.y.e.b.c.a (e.a.y.e.b.c$a)
.class final Le/a/y/e/b/c$a;
.super Le/a/y/d/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/e/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/y/d/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final g:Le/a/x/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/e<",
            "-TT;TK;>;"
        }
    .end annotation
.end field

.field final h:Le/a/x/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/x/c<",
            "-TK;-TK;>;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field j:Z


# direct methods
.method constructor <init>(Le/a/m;Le/a/x/e;Le/a/x/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m<",
            "-TT;>;",
            "Le/a/x/e<",
            "-TT;TK;>;",
            "Le/a/x/c<",
            "-TK;-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le/a/y/d/a;-><init>(Le/a/m;)V

    iput-object p2, p0, Le/a/y/e/b/c$a;->g:Le/a/x/e;

    iput-object p3, p0, Le/a/y/e/b/c$a;->h:Le/a/x/c;

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 2

    invoke-virtual {p0, p1}, Le/a/y/d/a;->b(I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Le/a/y/d/a;->e:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Le/a/y/d/a;->f:I

    if-eqz v0, :cond_f

    :cond_9
    :goto_9
    iget-object v0, p0, Le/a/y/d/a;->b:Le/a/m;

    invoke-interface {v0, p1}, Le/a/m;->a(Ljava/lang/Object;)V

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Le/a/y/e/b/c$a;->g:Le/a/x/e;

    invoke-interface {v0, p1}, Le/a/x/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v1, p0, Le/a/y/e/b/c$a;->j:Z

    if-eqz v1, :cond_26

    iget-object v1, p0, Le/a/y/e/b/c$a;->h:Le/a/x/c;

    iget-object v2, p0, Le/a/y/e/b/c$a;->i:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Le/a/x/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Le/a/y/e/b/c$a;->i:Ljava/lang/Object;

    if-eqz v1, :cond_9

    return-void

    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, p0, Le/a/y/e/b/c$a;->j:Z

    iput-object v0, p0, Le/a/y/e/b/c$a;->i:Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_2c

    goto :goto_9

    :catchall_2c
    move-exception p1

    invoke-virtual {p0, p1}, Le/a/y/d/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Le/a/y/d/a;->d:Le/a/y/c/d;

    invoke-interface {v0}, Le/a/y/c/h;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v1, p0, Le/a/y/e/b/c$a;->g:Le/a/x/e;

    invoke-interface {v1, v0}, Le/a/x/e;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v2, p0, Le/a/y/e/b/c$a;->j:Z

    if-nez v2, :cond_1a

    const/4 v2, 0x1

    iput-boolean v2, p0, Le/a/y/e/b/c$a;->j:Z

    iput-object v1, p0, Le/a/y/e/b/c$a;->i:Ljava/lang/Object;

    return-object v0

    :cond_1a
    iget-object v2, p0, Le/a/y/e/b/c$a;->h:Le/a/x/c;

    iget-object v3, p0, Le/a/y/e/b/c$a;->i:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Le/a/x/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-object v1, p0, Le/a/y/e/b/c$a;->i:Ljava/lang/Object;

    if-nez v2, :cond_0

    return-object v0
.end method
