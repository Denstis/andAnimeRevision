###### Class com.bumptech.glide.load.n.b0.j (com.bumptech.glide.load.n.b0.j)
.class public Lcom/bumptech/glide/load/n/b0/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/n/b0/j$b;
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/t/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/t/g<",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Lcom/bumptech/glide/load/n/b0/j$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/a/a/t/g;

    const-wide/16 v1, 0x3e8

    invoke-direct {v0, v1, v2}, Lc/a/a/t/g;-><init>(J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/n/b0/j;->a:Lc/a/a/t/g;

    new-instance v0, Lcom/bumptech/glide/load/n/b0/j$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/n/b0/j$a;-><init>(Lcom/bumptech/glide/load/n/b0/j;)V

    const/16 v1, 0xa

    invoke-static {v1, v0}, Lc/a/a/t/l/a;->a(ILc/a/a/t/l/a$d;)Lb/h/n/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/b0/j;->b:Lb/h/n/d;

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/g;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/load/n/b0/j;->b:Lb/h/n/d;

    invoke-interface {v0}, Lb/h/n/d;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/t/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/load/n/b0/j$b;

    :try_start_b
    iget-object v1, v0, Lcom/bumptech/glide/load/n/b0/j$b;->b:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/g;->a(Ljava/security/MessageDigest;)V

    iget-object p1, v0, Lcom/bumptech/glide/load/n/b0/j$b;->b:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-static {p1}, Lc/a/a/t/k;->a([B)Ljava/lang/String;

    move-result-object p1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_20

    iget-object v1, p0, Lcom/bumptech/glide/load/n/b0/j;->b:Lb/h/n/d;

    invoke-interface {v1, v0}, Lb/h/n/d;->a(Ljava/lang/Object;)Z

    return-object p1

    :catchall_20
    move-exception p1

    iget-object v1, p0, Lcom/bumptech/glide/load/n/b0/j;->b:Lb/h/n/d;

    invoke-interface {v1, v0}, Lb/h/n/d;->a(Ljava/lang/Object;)Z

    throw p1
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/g;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/n/b0/j;->a:Lc/a/a/t/g;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/bumptech/glide/load/n/b0/j;->a:Lc/a/a/t/g;

    invoke-virtual {v1, p1}, Lc/a/a/t/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1f

    if-nez v1, :cond_12

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/n/b0/j;->b(Lcom/bumptech/glide/load/g;)Ljava/lang/String;

    move-result-object v1

    :cond_12
    iget-object v2, p0, Lcom/bumptech/glide/load/n/b0/j;->a:Lc/a/a/t/g;

    monitor-enter v2

    :try_start_15
    iget-object v0, p0, Lcom/bumptech/glide/load/n/b0/j;->a:Lc/a/a/t/g;

    invoke-virtual {v0, p1, v1}, Lc/a/a/t/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_1c
    move-exception p1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p1

    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

###### Class com.bumptech.glide.load.n.b0.j.a (com.bumptech.glide.load.n.b0.j$a)
.class Lcom/bumptech/glide/load/n/b0/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/t/l/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/b0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/t/l/a$d<",
        "Lcom/bumptech/glide/load/n/b0/j$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/n/b0/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/n/b0/j$b;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/n/b0/j$b;

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/n/b0/j$b;-><init>(Ljava/security/MessageDigest;)V
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/bumptech/glide/load/n/b0/j$a;->a()Lcom/bumptech/glide/load/n/b0/j$b;

    move-result-object v0

    return-object v0
.end method

###### Class com.bumptech.glide.load.n.b0.j.b (com.bumptech.glide.load.n.b0.j$b)
.class final Lcom/bumptech/glide/load/n/b0/j$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/t/l/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/n/b0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final b:Ljava/security/MessageDigest;

.field private final c:Lc/a/a/t/l/c;


# direct methods
.method constructor <init>(Ljava/security/MessageDigest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lc/a/a/t/l/c;->b()Lc/a/a/t/l/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/n/b0/j$b;->c:Lc/a/a/t/l/c;

    iput-object p1, p0, Lcom/bumptech/glide/load/n/b0/j$b;->b:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public d()Lc/a/a/t/l/c;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/n/b0/j$b;->c:Lc/a/a/t/l/c;

    return-object v0
.end method
