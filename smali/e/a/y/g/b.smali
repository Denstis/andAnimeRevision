###### Class e.a.y.g.b (e.a.y.g.b)
.class public final Le/a/y/g/b;
.super Le/a/n;
.source ""

# interfaces
.implements Le/a/y/g/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/g/b$c;,
        Le/a/y/g/b$a;,
        Le/a/y/g/b$b;
    }
.end annotation


# static fields
.field static final c:Le/a/y/g/b$b;

.field static final d:Le/a/y/g/g;

.field static final e:I

.field static final f:Le/a/y/g/b$c;


# instance fields
.field final a:Ljava/util/concurrent/ThreadFactory;

.field final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Le/a/y/g/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "rx2.computation-threads"

    invoke-static {v2, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v2}, Le/a/y/g/b;->a(II)I

    move-result v0

    sput v0, Le/a/y/g/b;->e:I

    new-instance v0, Le/a/y/g/b$c;

    new-instance v2, Le/a/y/g/g;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v2, v3}, Le/a/y/g/g;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Le/a/y/g/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Le/a/y/g/b;->f:Le/a/y/g/b$c;

    sget-object v0, Le/a/y/g/b;->f:Le/a/y/g/b$c;

    invoke-virtual {v0}, Le/a/y/g/e;->b()V

    const-string v0, "rx2.computation-priority"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xa

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Le/a/y/g/g;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v2}, Le/a/y/g/g;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Le/a/y/g/b;->d:Le/a/y/g/g;

    new-instance v0, Le/a/y/g/b$b;

    sget-object v2, Le/a/y/g/b;->d:Le/a/y/g/g;

    invoke-direct {v0, v1, v2}, Le/a/y/g/b$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Le/a/y/g/b;->c:Le/a/y/g/b$b;

    sget-object v0, Le/a/y/g/b;->c:Le/a/y/g/b$b;

    invoke-virtual {v0}, Le/a/y/g/b$b;->b()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Le/a/y/g/b;->d:Le/a/y/g/g;

    invoke-direct {p0, v0}, Le/a/y/g/b;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 3

    invoke-direct {p0}, Le/a/n;-><init>()V

    iput-object p1, p0, Le/a/y/g/b;->a:Ljava/util/concurrent/ThreadFactory;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Le/a/y/g/b;->c:Le/a/y/g/b$b;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/a/y/g/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Le/a/y/g/b;->b()V

    return-void
.end method

.method static a(II)I
    .registers 2

    if-lez p1, :cond_6

    if-le p1, p0, :cond_5

    goto :goto_6

    :cond_5
    move p0, p1

    :cond_6
    :goto_6
    return p0
.end method


# virtual methods
.method public a()Le/a/n$b;
    .registers 3

    new-instance v0, Le/a/y/g/b$a;

    iget-object v1, p0, Le/a/y/g/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/g/b$b;

    invoke-virtual {v1}, Le/a/y/g/b$b;->a()Le/a/y/g/b$c;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/y/g/b$a;-><init>(Le/a/y/g/b$c;)V

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 6

    iget-object v0, p0, Le/a/y/g/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/g/b$b;

    invoke-virtual {v0}, Le/a/y/g/b$b;->a()Le/a/y/g/b$c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Le/a/y/g/e;->b(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .registers 4

    new-instance v0, Le/a/y/g/b$b;

    sget v1, Le/a/y/g/b;->e:I

    iget-object v2, p0, Le/a/y/g/b;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Le/a/y/g/b$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iget-object v1, p0, Le/a/y/g/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Le/a/y/g/b;->c:Le/a/y/g/b$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Le/a/y/g/b$b;->b()V

    :cond_16
    return-void
.end method

###### Class e.a.y.g.b.a (e.a.y.g.b$a)
.class final Le/a/y/g/b$a;
.super Le/a/n$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final b:Le/a/y/a/d;

.field private final c:Le/a/v/a;

.field private final d:Le/a/y/a/d;

.field private final e:Le/a/y/g/b$c;

.field volatile f:Z


# direct methods
.method constructor <init>(Le/a/y/g/b$c;)V
    .registers 3

    invoke-direct {p0}, Le/a/n$b;-><init>()V

    iput-object p1, p0, Le/a/y/g/b$a;->e:Le/a/y/g/b$c;

    new-instance p1, Le/a/y/a/d;

    invoke-direct {p1}, Le/a/y/a/d;-><init>()V

    iput-object p1, p0, Le/a/y/g/b$a;->b:Le/a/y/a/d;

    new-instance p1, Le/a/v/a;

    invoke-direct {p1}, Le/a/v/a;-><init>()V

    iput-object p1, p0, Le/a/y/g/b$a;->c:Le/a/v/a;

    new-instance p1, Le/a/y/a/d;

    invoke-direct {p1}, Le/a/y/a/d;-><init>()V

    iput-object p1, p0, Le/a/y/g/b$a;->d:Le/a/y/a/d;

    iget-object p1, p0, Le/a/y/g/b$a;->d:Le/a/y/a/d;

    iget-object v0, p0, Le/a/y/g/b$a;->b:Le/a/y/a/d;

    invoke-virtual {p1, v0}, Le/a/y/a/d;->b(Le/a/v/b;)Z

    iget-object p1, p0, Le/a/y/g/b$a;->d:Le/a/y/a/d;

    iget-object v0, p0, Le/a/y/g/b$a;->c:Le/a/v/a;

    invoke-virtual {p1, v0}, Le/a/y/a/d;->b(Le/a/v/b;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Le/a/v/b;
    .registers 8

    iget-boolean v0, p0, Le/a/y/g/b$a;->f:Z

    if-eqz v0, :cond_7

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1

    :cond_7
    iget-object v0, p0, Le/a/y/g/b$a;->e:Le/a/y/g/b$c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Le/a/y/g/b$a;->b:Le/a/y/a/d;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Le/a/y/g/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Le/a/y/a/a;)Le/a/y/g/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 11

    iget-boolean v0, p0, Le/a/y/g/b$a;->f:Z

    if-eqz v0, :cond_7

    sget-object p1, Le/a/y/a/c;->b:Le/a/y/a/c;

    return-object p1

    :cond_7
    iget-object v0, p0, Le/a/y/g/b$a;->e:Le/a/y/g/b$c;

    iget-object v5, p0, Le/a/y/g/b$a;->c:Le/a/v/a;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Le/a/y/g/e;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Le/a/y/a/a;)Le/a/y/g/i;

    move-result-object p1

    return-object p1
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Le/a/y/g/b$a;->f:Z

    return v0
.end method

.method public b()V
    .registers 2

    iget-boolean v0, p0, Le/a/y/g/b$a;->f:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/y/g/b$a;->f:Z

    iget-object v0, p0, Le/a/y/g/b$a;->d:Le/a/y/a/d;

    invoke-virtual {v0}, Le/a/y/a/d;->b()V

    :cond_c
    return-void
.end method

###### Class e.a.y.g.b.C0182b (e.a.y.g.b$b)
.class final Le/a/y/g/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Le/a/y/g/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:[Le/a/y/g/b$c;

.field c:J


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/y/g/b$b;->a:I

    new-array v0, p1, [Le/a/y/g/b$c;

    iput-object v0, p0, Le/a/y/g/b$b;->b:[Le/a/y/g/b$c;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_18

    iget-object v1, p0, Le/a/y/g/b$b;->b:[Le/a/y/g/b$c;

    new-instance v2, Le/a/y/g/b$c;

    invoke-direct {v2, p2}, Le/a/y/g/b$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method


# virtual methods
.method public a()Le/a/y/g/b$c;
    .registers 7

    iget v0, p0, Le/a/y/g/b$b;->a:I

    if-nez v0, :cond_7

    sget-object v0, Le/a/y/g/b;->f:Le/a/y/g/b$c;

    return-object v0

    :cond_7
    iget-object v1, p0, Le/a/y/g/b$b;->b:[Le/a/y/g/b$c;

    iget-wide v2, p0, Le/a/y/g/b$b;->c:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Le/a/y/g/b$b;->c:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v0, v2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public b()V
    .registers 5

    iget-object v0, p0, Le/a/y/g/b$b;->b:[Le/a/y/g/b$c;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-virtual {v3}, Le/a/y/g/e;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

###### Class e.a.y.g.b.c (e.a.y.g.b$c)
.class final Le/a/y/g/b$c;
.super Le/a/y/g/e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .registers 2

    invoke-direct {p0, p1}, Le/a/y/g/e;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method
