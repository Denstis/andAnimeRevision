###### Class androidx.recyclerview.widget.c (androidx.recyclerview.widget.c)
.class public final Landroidx/recyclerview/widget/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/recyclerview/widget/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/h$d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/h$d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/recyclerview/widget/h$d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroidx/recyclerview/widget/c;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/recyclerview/widget/c;->c:Landroidx/recyclerview/widget/h$d;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/c;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public b()Landroidx/recyclerview/widget/h$d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/h$d<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/c;->c:Landroidx/recyclerview/widget/h$d;

    return-object v0
.end method

.method public c()Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Landroidx/recyclerview/widget/c;->a:Ljava/util/concurrent/Executor;

    return-object v0
.end method

###### Class androidx.recyclerview.widget.c.a (androidx.recyclerview.widget.c$a)
.class public final Landroidx/recyclerview/widget/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Ljava/util/concurrent/Executor;

.field private b:Ljava/util/concurrent/Executor;

.field private final c:Landroidx/recyclerview/widget/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/h$d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/c$a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/h$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h$d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c$a;->c:Landroidx/recyclerview/widget/h$d;

    return-void
.end method


# virtual methods
.method public a()Landroidx/recyclerview/widget/c;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/recyclerview/widget/c$a;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1b

    sget-object v0, Landroidx/recyclerview/widget/c$a;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroidx/recyclerview/widget/c$a;->e:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_12

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Landroidx/recyclerview/widget/c$a;->e:Ljava/util/concurrent/Executor;

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    sget-object v0, Landroidx/recyclerview/widget/c$a;->e:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/recyclerview/widget/c$a;->b:Ljava/util/concurrent/Executor;

    goto :goto_1b

    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :goto_1b
    new-instance v0, Landroidx/recyclerview/widget/c;

    iget-object v1, p0, Landroidx/recyclerview/widget/c$a;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroidx/recyclerview/widget/c$a;->b:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroidx/recyclerview/widget/c$a;->c:Landroidx/recyclerview/widget/h$d;

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/c;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/h$d;)V

    return-object v0
.end method
