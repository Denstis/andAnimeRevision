###### Class com.bumptech.glide.load.o.m (com.bumptech.glide.load.o.m)
.class public Lcom/bumptech/glide/load/o/m;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/o/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/t/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/t/g<",
            "Lcom/bumptech/glide/load/o/m$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/o/m$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/o/m$a;-><init>(Lcom/bumptech/glide/load/o/m;J)V

    iput-object v0, p0, Lcom/bumptech/glide/load/o/m;->a:Lc/a/a/t/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/o/m$b;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/o/m$b;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/o/m;->a:Lc/a/a/t/g;

    invoke-virtual {p2, p1}, Lc/a/a/t/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bumptech/glide/load/o/m$b;->a()V

    return-object p2
.end method

.method public a(Ljava/lang/Object;IILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/o/m$b;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/o/m$b;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/o/m;->a:Lc/a/a/t/g;

    invoke-virtual {p2, p1, p4}, Lc/a/a/t/g;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

###### Class com.bumptech.glide.load.o.m.a (com.bumptech.glide.load.o.m$a)
.class Lcom/bumptech/glide/load/o/m$a;
.super Lc/a/a/t/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/o/m;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/a/t/g<",
        "Lcom/bumptech/glide/load/o/m$b<",
        "TA;>;TB;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/o/m;J)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lc/a/a/t/g;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/o/m$b;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/o/m$b<",
            "TA;>;TB;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bumptech/glide/load/o/m$b;->a()V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/bumptech/glide/load/o/m$b;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/o/m$a;->a(Lcom/bumptech/glide/load/o/m$b;Ljava/lang/Object;)V

    return-void
.end method

###### Class com.bumptech.glide.load.o.m.b (com.bumptech.glide.load.o.m$b)
.class final Lcom/bumptech/glide/load/o/m$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/o/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/load/o/m$b<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lc/a/a/t/k;->a(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/o/m$b;->d:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/o/m$b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;II)",
            "Lcom/bumptech/glide/load/o/m$b<",
            "TA;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/o/m$b;->d:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/o/m$b;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/o/m$b;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    if-nez v1, :cond_13

    new-instance v1, Lcom/bumptech/glide/load/o/m$b;

    invoke-direct {v1}, Lcom/bumptech/glide/load/o/m$b;-><init>()V

    :cond_13
    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/load/o/m$b;->b(Ljava/lang/Object;II)V

    return-object v1

    :catchall_17
    move-exception p0

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0
.end method

.method private b(Ljava/lang/Object;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/o/m$b;->c:Ljava/lang/Object;

    iput p2, p0, Lcom/bumptech/glide/load/o/m$b;->b:I

    iput p3, p0, Lcom/bumptech/glide/load/o/m$b;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/o/m$b;->d:Ljava/util/Queue;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/bumptech/glide/load/o/m$b;->d:Ljava/util/Queue;

    invoke-interface {v1, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/load/o/m$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    check-cast p1, Lcom/bumptech/glide/load/o/m$b;

    iget v0, p0, Lcom/bumptech/glide/load/o/m$b;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/o/m$b;->b:I

    if-ne v0, v2, :cond_1e

    iget v0, p0, Lcom/bumptech/glide/load/o/m$b;->a:I

    iget v2, p1, Lcom/bumptech/glide/load/o/m$b;->a:I

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Lcom/bumptech/glide/load/o/m$b;->c:Ljava/lang/Object;

    iget-object p1, p1, Lcom/bumptech/glide/load/o/m$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/o/m$b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/o/m$b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/o/m$b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
