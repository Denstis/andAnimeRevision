###### Class k.q.a.g (k.q.a.g)
.class final Lk/q/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk/c<",
        "TR;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:Le/a/n;

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Le/a/n;ZZZZZZZ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/q/a/g;->a:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lk/q/a/g;->b:Le/a/n;

    iput-boolean p3, p0, Lk/q/a/g;->c:Z

    iput-boolean p4, p0, Lk/q/a/g;->d:Z

    iput-boolean p5, p0, Lk/q/a/g;->e:Z

    iput-boolean p6, p0, Lk/q/a/g;->f:Z

    iput-boolean p7, p0, Lk/q/a/g;->g:Z

    iput-boolean p8, p0, Lk/q/a/g;->h:Z

    iput-boolean p9, p0, Lk/q/a/g;->i:Z

    return-void
.end method


# virtual methods
.method public a(Lk/b;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-boolean v0, p0, Lk/q/a/g;->c:Z

    if-eqz v0, :cond_a

    new-instance v0, Lk/q/a/b;

    invoke-direct {v0, p1}, Lk/q/a/b;-><init>(Lk/b;)V

    goto :goto_f

    :cond_a
    new-instance v0, Lk/q/a/c;

    invoke-direct {v0, p1}, Lk/q/a/c;-><init>(Lk/b;)V

    :goto_f
    iget-boolean p1, p0, Lk/q/a/g;->d:Z

    if-eqz p1, :cond_19

    new-instance p1, Lk/q/a/f;

    invoke-direct {p1, v0}, Lk/q/a/f;-><init>(Le/a/h;)V

    goto :goto_24

    :cond_19
    iget-boolean p1, p0, Lk/q/a/g;->e:Z

    if-eqz p1, :cond_23

    new-instance p1, Lk/q/a/a;

    invoke-direct {p1, v0}, Lk/q/a/a;-><init>(Le/a/h;)V

    goto :goto_24

    :cond_23
    move-object p1, v0

    :goto_24
    iget-object v0, p0, Lk/q/a/g;->b:Le/a/n;

    if-eqz v0, :cond_2c

    invoke-virtual {p1, v0}, Le/a/h;->b(Le/a/n;)Le/a/h;

    move-result-object p1

    :cond_2c
    iget-boolean v0, p0, Lk/q/a/g;->f:Z

    if-eqz v0, :cond_37

    sget-object v0, Le/a/a;->f:Le/a/a;

    invoke-virtual {p1, v0}, Le/a/h;->a(Le/a/a;)Le/a/e;

    move-result-object p1

    return-object p1

    :cond_37
    iget-boolean v0, p0, Lk/q/a/g;->g:Z

    if-eqz v0, :cond_40

    invoke-virtual {p1}, Le/a/h;->d()Le/a/o;

    move-result-object p1

    return-object p1

    :cond_40
    iget-boolean v0, p0, Lk/q/a/g;->h:Z

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Le/a/h;->c()Le/a/f;

    move-result-object p1

    return-object p1

    :cond_49
    iget-boolean v0, p0, Lk/q/a/g;->i:Z

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Le/a/h;->b()Le/a/b;

    move-result-object p1

    :cond_51
    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lk/q/a/g;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method
