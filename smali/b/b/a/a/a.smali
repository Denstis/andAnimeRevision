###### Class b.b.a.a.a (b.b.a.a.a)
.class public Lb/b/a/a/a;
.super Lb/b/a/a/c;
.source ""


# static fields
.field private static volatile c:Lb/b/a/a/a;


# instance fields
.field private a:Lb/b/a/a/c;

.field private b:Lb/b/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/a/a/a$a;

    invoke-direct {v0}, Lb/b/a/a/a$a;-><init>()V

    new-instance v0, Lb/b/a/a/a$b;

    invoke-direct {v0}, Lb/b/a/a/a$b;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lb/b/a/a/c;-><init>()V

    new-instance v0, Lb/b/a/a/b;

    invoke-direct {v0}, Lb/b/a/a/b;-><init>()V

    iput-object v0, p0, Lb/b/a/a/a;->b:Lb/b/a/a/c;

    iget-object v0, p0, Lb/b/a/a/a;->b:Lb/b/a/a/c;

    iput-object v0, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    return-void
.end method

.method public static b()Lb/b/a/a/a;
    .registers 2

    sget-object v0, Lb/b/a/a/a;->c:Lb/b/a/a/a;

    if-eqz v0, :cond_7

    sget-object v0, Lb/b/a/a/a;->c:Lb/b/a/a/a;

    return-object v0

    :cond_7
    const-class v0, Lb/b/a/a/a;

    monitor-enter v0

    :try_start_a
    sget-object v1, Lb/b/a/a/a;->c:Lb/b/a/a/a;

    if-nez v1, :cond_15

    new-instance v1, Lb/b/a/a/a;

    invoke-direct {v1}, Lb/b/a/a/a;-><init>()V

    sput-object v1, Lb/b/a/a/a;->c:Lb/b/a/a/a;

    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_19

    sget-object v0, Lb/b/a/a/a;->c:Lb/b/a/a/a;

    return-object v0

    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    invoke-virtual {v0, p1}, Lb/b/a/a/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    invoke-virtual {v0}, Lb/b/a/a/c;->a()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lb/b/a/a/a;->a:Lb/b/a/a/c;

    invoke-virtual {v0, p1}, Lb/b/a/a/c;->b(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class b.b.a.a.a.ExecutorC0095a (b.b.a.a.a$a)
.class final Lb/b/a/a/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Lb/b/a/a/a;->b()Lb/b/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/a/a;->b(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class b.b.a.a.a.b (b.b.a.a.a$b)
.class final Lb/b/a/a/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    invoke-static {}, Lb/b/a/a/a;->b()Lb/b/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/b/a/a/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
