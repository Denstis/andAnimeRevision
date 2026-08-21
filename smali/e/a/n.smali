###### Class e.a.n (e.a.n)
.class public abstract Le/a/n;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/n$a;,
        Le/a/n$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Le/a/n$b;
.end method

.method public a(Ljava/lang/Runnable;)Le/a/v/b;
    .registers 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Le/a/n;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 7

    invoke-virtual {p0}, Le/a/n;->a()Le/a/n$b;

    move-result-object v0

    invoke-static {p1}, Le/a/a0/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v1, Le/a/n$a;

    invoke-direct {v1, p1, v0}, Le/a/n$a;-><init>(Ljava/lang/Runnable;Le/a/n$b;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Le/a/n$b;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;

    return-object v1
.end method

###### Class e.a.n.a (e.a.n$a)
.class final Le/a/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/v/b;
.implements Ljava/lang/Runnable;
.implements Le/a/b0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final b:Ljava/lang/Runnable;

.field final c:Le/a/n$b;

.field d:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Le/a/n$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n$a;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Le/a/n$a;->c:Le/a/n$b;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Le/a/n$a;->c:Le/a/n$b;

    invoke-interface {v0}, Le/a/v/b;->a()Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Le/a/n$a;->d:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Le/a/n$a;->c:Le/a/n$b;

    instance-of v1, v0, Le/a/y/g/e;

    if-eqz v1, :cond_14

    check-cast v0, Le/a/y/g/e;

    invoke-virtual {v0}, Le/a/y/g/e;->c()V

    goto :goto_19

    :cond_14
    iget-object v0, p0, Le/a/n$a;->c:Le/a/n$b;

    invoke-interface {v0}, Le/a/v/b;->b()V

    :goto_19
    return-void
.end method

.method public run()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Le/a/n$a;->d:Ljava/lang/Thread;

    const/4 v0, 0x0

    :try_start_7
    iget-object v1, p0, Le/a/n$a;->b:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_12

    invoke-virtual {p0}, Le/a/n$a;->b()V

    iput-object v0, p0, Le/a/n$a;->d:Ljava/lang/Thread;

    return-void

    :catchall_12
    move-exception v1

    invoke-virtual {p0}, Le/a/n$a;->b()V

    iput-object v0, p0, Le/a/n$a;->d:Ljava/lang/Thread;

    throw v1
.end method

###### Class e.a.n.b (e.a.n$b)
.class public abstract Le/a/n$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/Runnable;)Le/a/v/b;
    .registers 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Le/a/n$b;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
.end method
