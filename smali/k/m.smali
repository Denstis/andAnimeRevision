###### Class k.m (k.m)
.class public final Lk/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lh/c0;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lh/d0;


# direct methods
.method private constructor <init>(Lh/c0;Ljava/lang/Object;Lh/d0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c0;",
            "TT;",
            "Lh/d0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/m;->a:Lh/c0;

    iput-object p2, p0, Lk/m;->b:Ljava/lang/Object;

    iput-object p3, p0, Lk/m;->c:Lh/d0;

    return-void
.end method

.method public static a(Lh/d0;Lh/c0;)Lk/m;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/d0;",
            "Lh/c0;",
            ")",
            "Lk/m<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "body == null"

    invoke-static {p0, v0}, Lk/p;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Lk/p;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lh/c0;->o()Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Lk/m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lk/m;-><init>(Lh/c0;Ljava/lang/Object;Lh/d0;)V

    return-object v0

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Lh/c0;)Lk/m;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lh/c0;",
            ")",
            "Lk/m<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "rawResponse == null"

    invoke-static {p1, v0}, Lk/p;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lh/c0;->o()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lk/m;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lk/m;-><init>(Lh/c0;Ljava/lang/Object;Lh/d0;)V

    return-object v0

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lk/m;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lk/m;->a:Lh/c0;

    invoke-virtual {v0}, Lh/c0;->l()I

    move-result v0

    return v0
.end method

.method public c()Lh/d0;
    .registers 2

    iget-object v0, p0, Lk/m;->c:Lh/d0;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lk/m;->a:Lh/c0;

    invoke-virtual {v0}, Lh/c0;->o()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lk/m;->a:Lh/c0;

    invoke-virtual {v0}, Lh/c0;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lk/m;->a:Lh/c0;

    invoke-virtual {v0}, Lh/c0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
