###### Class com.bumptech.glide.load.m.k (com.bumptech.glide.load.m.k)
.class public final Lcom/bumptech/glide/load/m/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/m/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/m/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/m/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/p/c/s;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/n/a0/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/p/c/s;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/p/c/s;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/n/a0/b;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/m/k;->a:Lcom/bumptech/glide/load/p/c/s;

    iget-object p1, p0, Lcom/bumptech/glide/load/m/k;->a:Lcom/bumptech/glide/load/p/c/s;

    const/high16 p2, 0x500000

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/p/c/s;->mark(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/m/k;->a:Lcom/bumptech/glide/load/p/c/s;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/c/s;->reset()V

    iget-object v0, p0, Lcom/bumptech/glide/load/m/k;->a:Lcom/bumptech/glide/load/p/c/s;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/m/k;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/m/k;->a:Lcom/bumptech/glide/load/p/c/s;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/p/c/s;->k()V

    return-void
.end method

###### Class com.bumptech.glide.load.m.k.a (com.bumptech.glide.load.m.k$a)
.class public final Lcom/bumptech/glide/load/m/k$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/m/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/m/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/m/e$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/n/a0/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/n/a0/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/m/k$a;->a:Lcom/bumptech/glide/load/n/a0/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/m/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Lcom/bumptech/glide/load/m/e<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/m/k;

    iget-object v1, p0, Lcom/bumptech/glide/load/m/k$a;->a:Lcom/bumptech/glide/load/n/a0/b;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/m/k;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/n/a0/b;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/bumptech/glide/load/m/e;
    .registers 2

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/m/k$a;->a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/m/e;

    move-result-object p1

    return-object p1
.end method

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
