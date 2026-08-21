###### Class e.a.y.g.m (e.a.y.g.m)
.class public final Le/a/y/g/m;
.super Le/a/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/g/m$a;,
        Le/a/y/g/m$b;,
        Le/a/y/g/m$c;
    }
.end annotation


# static fields
.field private static final a:Le/a/y/g/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Le/a/y/g/m;

    invoke-direct {v0}, Le/a/y/g/m;-><init>()V

    sput-object v0, Le/a/y/g/m;->a:Le/a/y/g/m;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Le/a/n;-><init>()V

    return-void
.end method

.method public static b()Le/a/y/g/m;
    .registers 1

    sget-object v0, Le/a/y/g/m;->a:Le/a/y/g/m;

    return-object v0
.end method


# virtual methods
.method public a()Le/a/n$b;
    .registers 2

    new-instance v0, Le/a/y/g/m$c;

    invoke-direct {v0}, Le/a/y/g/m$c;-><init>()V

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;)Le/a/v/b;
    .registers 2

    invoke-static {p1}, Le/a/a0/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 5

    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    invoke-static {p1}, Le/a/a0/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_16

    :catch_b
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    invoke-static {p1}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_16
    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1
.end method

###### Class e.a.y.g.m.a (e.a.y.g.m$a)
.class final Le/a/y/g/m$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/lang/Runnable;

.field private final c:Le/a/y/g/m$c;

.field private final d:J


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Le/a/y/g/m$c;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/g/m$a;->b:Ljava/lang/Runnable;

    iput-object p2, p0, Le/a/y/g/m$a;->c:Le/a/y/g/m$c;

    iput-wide p3, p0, Le/a/y/g/m$a;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Le/a/y/g/m$a;->c:Le/a/y/g/m$c;

    iget-boolean v0, v0, Le/a/y/g/m$c;->e:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Le/a/y/g/m$a;->c:Le/a/y/g/m$c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Le/a/n$b;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Le/a/y/g/m$a;->d:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_25

    sub-long/2addr v2, v0

    :try_start_15
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_25

    :catch_19
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {v0}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_25
    :goto_25
    iget-object v0, p0, Le/a/y/g/m$a;->c:Le/a/y/g/m$c;

    iget-boolean v0, v0, Le/a/y/g/m$c;->e:Z

    if-nez v0, :cond_30

    iget-object v0, p0, Le/a/y/g/m$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_30
    return-void
.end method

###### Class e.a.y.g.m.b (e.a.y.g.m$b)
.class final Le/a/y/g/m$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Le/a/y/g/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Runnable;

.field final c:J

.field final d:I

.field volatile e:Z


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/g/m$b;->b:Ljava/lang/Runnable;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Le/a/y/g/m$b;->c:J

    iput p3, p0, Le/a/y/g/m$b;->d:I

    return-void
.end method


# virtual methods
.method public a(Le/a/y/g/m$b;)I
    .registers 6

    iget-wide v0, p0, Le/a/y/g/m$b;->c:J

    iget-wide v2, p1, Le/a/y/g/m$b;->c:J

    invoke-static {v0, v1, v2, v3}, Le/a/y/b/b;->a(JJ)I

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Le/a/y/g/m$b;->d:I

    iget p1, p1, Le/a/y/g/m$b;->d:I

    invoke-static {v0, p1}, Le/a/y/b/b;->a(II)I

    move-result p1

    return p1

    :cond_13
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Le/a/y/g/m$b;

    invoke-virtual {p0, p1}, Le/a/y/g/m$b;->a(Le/a/y/g/m$b;)I

    move-result p1

    return p1
.end method

###### Class e.a.y.g.m.c (e.a.y.g.m$c)
.class final Le/a/y/g/m$c;
.super Le/a/n$b;
.source ""

# interfaces
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/g/m$c$a;
    }
.end annotation


# instance fields
.field final b:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Le/a/y/g/m$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field volatile e:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Le/a/n$b;-><init>()V

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Le/a/y/g/m$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Le/a/y/g/m$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Le/a/y/g/m$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Le/a/v/b;
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Le/a/n$b;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Le/a/y/g/m$c;->a(Ljava/lang/Runnable;J)Le/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/Runnable;J)Le/a/v/b;
    .registers 5

    iget-boolean v0, p0, Le/a/y/g/m$c;->e:Z

    if-eqz v0, :cond_7

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1

    :cond_7
    new-instance v0, Le/a/y/g/m$b;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Le/a/y/g/m$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Le/a/y/g/m$b;-><init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V

    iget-object p1, p0, Le/a/y/g/m$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Le/a/y/g/m$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_50

    const/4 p1, 0x1

    :cond_24
    :goto_24
    iget-boolean p2, p0, Le/a/y/g/m$c;->e:Z

    if-eqz p2, :cond_30

    iget-object p1, p0, Le/a/y/g/m$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1

    :cond_30
    iget-object p2, p0, Le/a/y/g/m$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/y/g/m$b;

    if-nez p2, :cond_46

    iget-object p2, p0, Le/a/y/g/m$c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int p1, p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    if-nez p1, :cond_24

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1

    :cond_46
    iget-boolean p3, p2, Le/a/y/g/m$b;->e:Z

    if-nez p3, :cond_24

    iget-object p2, p2, Le/a/y/g/m$b;->b:Ljava/lang/Runnable;

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_24

    :cond_50
    new-instance p1, Le/a/y/g/m$c$a;

    invoke-direct {p1, p0, v0}, Le/a/y/g/m$c$a;-><init>(Le/a/y/g/m$c;Le/a/y/g/m$b;)V

    invoke-static {p1}, Le/a/v/c;->a(Ljava/lang/Runnable;)Le/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Le/a/n$b;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    add-long/2addr v0, p2

    new-instance p2, Le/a/y/g/m$a;

    invoke-direct {p2, p1, p0, v0, v1}, Le/a/y/g/m$a;-><init>(Ljava/lang/Runnable;Le/a/y/g/m$c;J)V

    invoke-virtual {p0, p2, v0, v1}, Le/a/y/g/m$c;->a(Ljava/lang/Runnable;J)Le/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Le/a/y/g/m$c;->e:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/g/m$c;->e:Z

    return-void
.end method

###### Class e.a.y.g.m.c.a (e.a.y.g.m$c$a)
.class final Le/a/y/g/m$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/m$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final b:Le/a/y/g/m$b;

.field final synthetic c:Le/a/y/g/m$c;


# direct methods
.method constructor <init>(Le/a/y/g/m$c;Le/a/y/g/m$b;)V
    .registers 3

    iput-object p1, p0, Le/a/y/g/m$c$a;->c:Le/a/y/g/m$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/y/g/m$c$a;->b:Le/a/y/g/m$b;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Le/a/y/g/m$c$a;->b:Le/a/y/g/m$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le/a/y/g/m$b;->e:Z

    iget-object v1, p0, Le/a/y/g/m$c$a;->c:Le/a/y/g/m$c;

    iget-object v1, v1, Le/a/y/g/m$c;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
