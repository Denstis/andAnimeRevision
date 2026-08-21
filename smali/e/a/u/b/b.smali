###### Class e.a.u.b.b (e.a.u.b.b)
.class final Le/a/u/b/b;
.super Le/a/n;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/u/b/b$b;,
        Le/a/u/b/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Le/a/n;-><init>()V

    iput-object p1, p0, Le/a/u/b/b;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Le/a/n$b;
    .registers 3

    new-instance v0, Le/a/u/b/b$a;

    iget-object v1, p0, Le/a/u/b/b;->a:Landroid/os/Handler;

    invoke-direct {v0, v1}, Le/a/u/b/b$a;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 7

    if-eqz p1, :cond_21

    if-eqz p4, :cond_19

    invoke-static {p1}, Le/a/a0/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Le/a/u/b/b$b;

    iget-object v1, p0, Le/a/u/b/b;->a:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Le/a/u/b/b$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p1, p0, Le/a/u/b/b;->a:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0

    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "run == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class e.a.u.b.b.a (e.a.u.b.b$a)
.class final Le/a/u/b/b$a;
.super Le/a/n$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/u/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;

.field private volatile c:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0}, Le/a/n$b;-><init>()V

    iput-object p1, p0, Le/a/u/b/b$a;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Le/a/v/b;
    .registers 7

    if-eqz p1, :cond_40

    if-eqz p4, :cond_38

    iget-boolean v0, p0, Le/a/u/b/b$a;->c:Z

    if-eqz v0, :cond_d

    invoke-static {}, Le/a/v/c;->a()Le/a/v/b;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-static {p1}, Le/a/a0/a;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    new-instance v0, Le/a/u/b/b$b;

    iget-object v1, p0, Le/a/u/b/b$a;->b:Landroid/os/Handler;

    invoke-direct {v0, v1, p1}, Le/a/u/b/b$b;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object p1, p0, Le/a/u/b/b$a;->b:Landroid/os/Handler;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Le/a/u/b/b$a;->b:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean p1, p0, Le/a/u/b/b$a;->c:Z

    if-eqz p1, :cond_37

    iget-object p1, p0, Le/a/u/b/b$a;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Le/a/v/c;->a()Le/a/v/b;

    move-result-object p1

    return-object p1

    :cond_37
    return-object v0

    :cond_38
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "unit == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_40
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "run == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Le/a/u/b/b$a;->c:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/u/b/b$a;->c:Z

    iget-object v0, p0, Le/a/u/b/b$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

###### Class e.a.u.b.b.RunnableC0177b (e.a.u.b.b$b)
.class final Le/a/u/b/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Le/a/v/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/u/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/Runnable;

.field private volatile d:Z


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/u/b/b$b;->b:Landroid/os/Handler;

    iput-object p2, p0, Le/a/u/b/b$b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Le/a/u/b/b$b;->d:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Le/a/u/b/b$b;->d:Z

    iget-object v0, p0, Le/a/u/b/b$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Le/a/u/b/b$b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-static {v0}, Le/a/a0/a;->b(Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method
