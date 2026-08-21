###### Class i.t (i.t)
.class public Li/t;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final d:Li/t;


# instance fields
.field private a:Z

.field private b:J

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Li/t$a;

    invoke-direct {v0}, Li/t$a;-><init>()V

    sput-object v0, Li/t;->d:Li/t;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li/t;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/t;->a:Z

    return-object p0
.end method

.method public a(J)Li/t;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/t;->a:Z

    iput-wide p1, p0, Li/t;->b:J

    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Li/t;
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_17

    if-eqz p3, :cond_f

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Li/t;->c:J

    return-object p0

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public b()Li/t;
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/t;->c:J

    return-object p0
.end method

.method public c()J
    .registers 3

    iget-boolean v0, p0, Li/t;->a:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Li/t;->b:J

    return-wide v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No deadline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Li/t;->a:Z

    return v0
.end method

.method public e()V
    .registers 6

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Li/t;->a:Z

    if-eqz v0, :cond_20

    iget-wide v0, p0, Li/t;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_18

    goto :goto_20

    :cond_18
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "deadline reached"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    :goto_20
    return-void

    :cond_21
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "thread interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()J
    .registers 3

    iget-wide v0, p0, Li/t;->c:J

    return-wide v0
.end method

###### Class i.t.a (i.t$a)
.class final Li/t$a;
.super Li/t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Li/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)Li/t;
    .registers 3

    return-object p0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Li/t;
    .registers 4

    return-object p0
.end method

.method public e()V
    .registers 1

    return-void
.end method
