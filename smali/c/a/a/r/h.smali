###### Class c.a.a.r.h (c.a.a.r.h)
.class public final Lc/a/a/r/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/r/c;
.implements Lc/a/a/r/j/g;
.implements Lc/a/a/r/g;
.implements Lc/a/a/t/l/a$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/r/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/r/c;",
        "Lc/a/a/r/j/g;",
        "Lc/a/a/r/g;",
        "Lc/a/a/t/l/a$f;"
    }
.end annotation


# static fields
.field private static final D:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "Lc/a/a/r/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final E:Z


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/lang/RuntimeException;

.field private b:Z

.field private final c:Ljava/lang/String;

.field private final d:Lc/a/a/t/l/c;

.field private e:Lc/a/a/r/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/e<",
            "TR;>;"
        }
    .end annotation
.end field

.field private f:Lc/a/a/r/d;

.field private g:Landroid/content/Context;

.field private h:Lc/a/a/e;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private k:Lc/a/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/a<",
            "*>;"
        }
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:Lc/a/a/h;

.field private o:Lc/a/a/r/j/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/j/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/a/a/r/e<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private q:Lcom/bumptech/glide/load/n/k;

.field private r:Lc/a/a/r/k/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/k/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private s:Ljava/util/concurrent/Executor;

.field private t:Lcom/bumptech/glide/load/n/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/n/v<",
            "TR;>;"
        }
    .end annotation
.end field

.field private u:Lcom/bumptech/glide/load/n/k$d;

.field private v:J

.field private w:Lc/a/a/r/h$b;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lc/a/a/r/h$a;

    invoke-direct {v0}, Lc/a/a/r/h$a;-><init>()V

    const/16 v1, 0x96

    invoke-static {v1, v0}, Lc/a/a/t/l/a;->a(ILc/a/a/t/l/a$d;)Lb/h/n/d;

    move-result-object v0

    sput-object v0, Lc/a/a/r/h;->D:Lb/h/n/d;

    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lc/a/a/r/h;->E:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lc/a/a/r/h;->E:Z

    if-eqz v0, :cond_10

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iput-object v0, p0, Lc/a/a/r/h;->c:Ljava/lang/String;

    invoke-static {}, Lc/a/a/t/l/c;->b()Lc/a/a/t/l/c;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/h;->d:Lc/a/a/t/l/c;

    return-void
.end method

.method private static a(IF)I
    .registers 3

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_5

    goto :goto_c

    :cond_5
    int-to-float p0, p0

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_c
    return p0
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->u()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->u()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lc/a/a/r/h;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_15
    iget-object v1, p0, Lc/a/a/r/h;->h:Lc/a/a/e;

    invoke-static {v1, p1, v0}, Lcom/bumptech/glide/load/p/e/a;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized a(Landroid/content/Context;Lc/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Lc/a/a/r/a;IILc/a/a/h;Lc/a/a/r/j/h;Lc/a/a/r/e;Ljava/util/List;Lc/a/a/r/d;Lcom/bumptech/glide/load/n/k;Lc/a/a/r/k/c;Ljava/util/concurrent/Executor;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/a/a/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc/a/a/r/a<",
            "*>;II",
            "Lc/a/a/h;",
            "Lc/a/a/r/j/h<",
            "TR;>;",
            "Lc/a/a/r/e<",
            "TR;>;",
            "Ljava/util/List<",
            "Lc/a/a/r/e<",
            "TR;>;>;",
            "Lc/a/a/r/d;",
            "Lcom/bumptech/glide/load/n/k;",
            "Lc/a/a/r/k/c<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lc/a/a/r/h;->g:Landroid/content/Context;

    iput-object p2, p0, Lc/a/a/r/h;->h:Lc/a/a/e;

    iput-object p3, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    iput-object p4, p0, Lc/a/a/r/h;->j:Ljava/lang/Class;

    iput-object p5, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    iput p6, p0, Lc/a/a/r/h;->l:I

    iput p7, p0, Lc/a/a/r/h;->m:I

    iput-object p8, p0, Lc/a/a/r/h;->n:Lc/a/a/h;

    iput-object p9, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    iput-object p10, p0, Lc/a/a/r/h;->e:Lc/a/a/r/e;

    iput-object p11, p0, Lc/a/a/r/h;->p:Ljava/util/List;

    iput-object p12, p0, Lc/a/a/r/h;->f:Lc/a/a/r/d;

    iput-object p13, p0, Lc/a/a/r/h;->q:Lcom/bumptech/glide/load/n/k;

    iput-object p14, p0, Lc/a/a/r/h;->r:Lc/a/a/r/k/c;

    iput-object p15, p0, Lc/a/a/r/h;->s:Ljava/util/concurrent/Executor;

    sget-object p1, Lc/a/a/r/h$b;->b:Lc/a/a/r/h$b;

    iput-object p1, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    iget-object p1, p0, Lc/a/a/r/h;->C:Ljava/lang/RuntimeException;

    if-nez p1, :cond_36

    invoke-virtual {p2}, Lc/a/a/e;->g()Z

    move-result p1

    if-eqz p1, :cond_36

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Glide request origin trace"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lc/a/a/r/h;->C:Ljava/lang/RuntimeException;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/bumptech/glide/load/n/q;I)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/r/h;->d:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    iget-object v0, p0, Lc/a/a/r/h;->C:Ljava/lang/RuntimeException;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/n/q;->a(Ljava/lang/Exception;)V

    iget-object v0, p0, Lc/a/a/r/h;->h:Lc/a/a/e;

    invoke-virtual {v0}, Lc/a/a/e;->e()I

    move-result v0

    if-gt v0, p2, :cond_4c

    const-string p2, "Glide"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lc/a/a/r/h;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lc/a/a/r/h;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v0, p2, :cond_4c

    const-string p2, "Glide"

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/n/q;->a(Ljava/lang/String;)V

    :cond_4c
    const/4 p2, 0x0

    iput-object p2, p0, Lc/a/a/r/h;->u:Lcom/bumptech/glide/load/n/k$d;

    sget-object p2, Lc/a/a/r/h$b;->f:Lc/a/a/r/h$b;

    iput-object p2, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lc/a/a/r/h;->b:Z
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_a5

    const/4 v0, 0x0

    :try_start_57
    iget-object v1, p0, Lc/a/a/r/h;->p:Ljava/util/List;

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lc/a/a/r/h;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/a/a/r/e;

    iget-object v4, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    iget-object v5, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    invoke-direct {p0}, Lc/a/a/r/h;->o()Z

    move-result v6

    invoke-interface {v3, p1, v4, v5, v6}, Lc/a/a/r/e;->a(Lcom/bumptech/glide/load/n/q;Ljava/lang/Object;Lc/a/a/r/j/h;Z)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_62

    :cond_7c
    const/4 v2, 0x0

    :cond_7d
    iget-object v1, p0, Lc/a/a/r/h;->e:Lc/a/a/r/e;

    if-eqz v1, :cond_92

    iget-object v1, p0, Lc/a/a/r/h;->e:Lc/a/a/r/e;

    iget-object v3, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    iget-object v4, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    invoke-direct {p0}, Lc/a/a/r/h;->o()Z

    move-result v5

    invoke-interface {v1, p1, v3, v4, v5}, Lc/a/a/r/e;->a(Lcom/bumptech/glide/load/n/q;Ljava/lang/Object;Lc/a/a/r/j/h;Z)Z

    move-result p1

    if-eqz p1, :cond_92

    goto :goto_93

    :cond_92
    const/4 p2, 0x0

    :goto_93
    or-int p1, v2, p2

    if-nez p1, :cond_9a

    invoke-direct {p0}, Lc/a/a/r/h;->r()V
    :try_end_9a
    .catchall {:try_start_57 .. :try_end_9a} :catchall_a1

    :cond_9a
    :try_start_9a
    iput-boolean v0, p0, Lc/a/a/r/h;->b:Z

    invoke-direct {p0}, Lc/a/a/r/h;->p()V
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_a5

    monitor-exit p0

    return-void

    :catchall_a1
    move-exception p1

    :try_start_a2
    iput-boolean v0, p0, Lc/a/a/r/h;->b:Z

    throw p1
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a5

    :catchall_a5
    move-exception p1

    monitor-exit p0

    goto :goto_a9

    :goto_a8
    throw p1

    :goto_a9
    goto :goto_a8
.end method

.method private a(Lcom/bumptech/glide/load/n/v;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/r/h;->q:Lcom/bumptech/glide/load/n/k;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/n/k;->b(Lcom/bumptech/glide/load/n/v;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc/a/a/r/h;->t:Lcom/bumptech/glide/load/n/v;

    return-void
.end method

.method private declared-synchronized a(Lcom/bumptech/glide/load/n/v;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "TR;>;TR;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lc/a/a/r/h;->o()Z

    move-result v6

    sget-object v0, Lc/a/a/r/h$b;->e:Lc/a/a/r/h$b;

    iput-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    iput-object p1, p0, Lc/a/a/r/h;->t:Lcom/bumptech/glide/load/n/v;

    iget-object p1, p0, Lc/a/a/r/h;->h:Lc/a/a/e;

    invoke-virtual {p1}, Lc/a/a/e;->e()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_6b

    const-string p1, "Glide"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished loading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with size ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/a/a/r/h;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/a/a/r/h;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/a/a/r/h;->v:J

    invoke-static {v1, v2}, Lc/a/a/t/f;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/a/a/r/h;->b:Z
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_c2

    const/4 v7, 0x0

    :try_start_6f
    iget-object v0, p0, Lc/a/a/r/h;->p:Ljava/util/List;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lc/a/a/r/h;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_7a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/r/e;

    iget-object v2, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    iget-object v3, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lc/a/a/r/e;->a(Ljava/lang/Object;Ljava/lang/Object;Lc/a/a/r/j/h;Lcom/bumptech/glide/load/a;Z)Z

    move-result v0

    or-int/2addr v9, v0

    goto :goto_7a

    :cond_93
    const/4 v9, 0x0

    :cond_94
    iget-object v0, p0, Lc/a/a/r/h;->e:Lc/a/a/r/e;

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lc/a/a/r/h;->e:Lc/a/a/r/e;

    iget-object v2, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    iget-object v3, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lc/a/a/r/e;->a(Ljava/lang/Object;Ljava/lang/Object;Lc/a/a/r/j/h;Lcom/bumptech/glide/load/a;Z)Z

    move-result v0

    if-eqz v0, :cond_a8

    goto :goto_a9

    :cond_a8
    const/4 p1, 0x0

    :goto_a9
    or-int/2addr p1, v9

    if-nez p1, :cond_b7

    iget-object p1, p0, Lc/a/a/r/h;->r:Lc/a/a/r/k/c;

    invoke-interface {p1, p3, v6}, Lc/a/a/r/k/c;->a(Lcom/bumptech/glide/load/a;Z)Lc/a/a/r/k/b;

    move-result-object p1

    iget-object p3, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    invoke-interface {p3, p2, p1}, Lc/a/a/r/j/h;->a(Ljava/lang/Object;Lc/a/a/r/k/b;)V
    :try_end_b7
    .catchall {:try_start_6f .. :try_end_b7} :catchall_be

    :cond_b7
    :try_start_b7
    iput-boolean v7, p0, Lc/a/a/r/h;->b:Z

    invoke-direct {p0}, Lc/a/a/r/h;->q()V
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_c2

    monitor-exit p0

    return-void

    :catchall_be
    move-exception p1

    :try_start_bf
    iput-boolean v7, p0, Lc/a/a/r/h;->b:Z

    throw p1
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_c2

    :catchall_c2
    move-exception p1

    monitor-exit p0

    goto :goto_c6

    :goto_c5
    throw p1

    :goto_c6
    goto :goto_c5
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lc/a/a/r/h;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Request"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized a(Lc/a/a/r/h;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/a/r/h<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_24

    :try_start_2
    iget-object v0, p0, Lc/a/a/r/h;->p:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lc/a/a/r/h;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_f
    iget-object v2, p1, Lc/a/a/r/h;->p:Ljava/util/List;

    if-nez v2, :cond_15

    const/4 v2, 0x0

    goto :goto_1b

    :cond_15
    iget-object v2, p1, Lc/a/a/r/h;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1b
    if-ne v0, v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return v1

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static b(Landroid/content/Context;Lc/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Lc/a/a/r/a;IILc/a/a/h;Lc/a/a/r/j/h;Lc/a/a/r/e;Ljava/util/List;Lc/a/a/r/d;Lcom/bumptech/glide/load/n/k;Lc/a/a/r/k/c;Ljava/util/concurrent/Executor;)Lc/a/a/r/h;
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lc/a/a/e;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lc/a/a/r/a<",
            "*>;II",
            "Lc/a/a/h;",
            "Lc/a/a/r/j/h<",
            "TR;>;",
            "Lc/a/a/r/e<",
            "TR;>;",
            "Ljava/util/List<",
            "Lc/a/a/r/e<",
            "TR;>;>;",
            "Lc/a/a/r/d;",
            "Lcom/bumptech/glide/load/n/k;",
            "Lc/a/a/r/k/c<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lc/a/a/r/h<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lc/a/a/r/h;->D:Lb/h/n/d;

    invoke-interface {v0}, Lb/h/n/d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/r/h;

    if-nez v0, :cond_f

    new-instance v0, Lc/a/a/r/h;

    invoke-direct {v0}, Lc/a/a/r/h;-><init>()V

    :cond_f
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lc/a/a/r/h;->a(Landroid/content/Context;Lc/a/a/e;Ljava/lang/Object;Ljava/lang/Class;Lc/a/a/r/a;IILc/a/a/h;Lc/a/a/r/j/h;Lc/a/a/r/e;Ljava/util/List;Lc/a/a/r/d;Lcom/bumptech/glide/load/n/k;Lc/a/a/r/k/c;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private g()V
    .registers 3

    iget-boolean v0, p0, Lc/a/a/r/h;->b:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()Z
    .registers 2

    iget-object v0, p0, Lc/a/a/r/h;->f:Lc/a/a/r/d;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lc/a/a/r/d;->f(Lc/a/a/r/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private i()Z
    .registers 2

    iget-object v0, p0, Lc/a/a/r/h;->f:Lc/a/a/r/d;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lc/a/a/r/d;->c(Lc/a/a/r/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private j()Z
    .registers 2

    iget-object v0, p0, Lc/a/a/r/h;->f:Lc/a/a/r/d;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lc/a/a/r/d;->d(Lc/a/a/r/c;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private k()V
    .registers 2

    invoke-direct {p0}, Lc/a/a/r/h;->g()V

    iget-object v0, p0, Lc/a/a/r/h;->d:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    iget-object v0, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    invoke-interface {v0, p0}, Lc/a/a/r/j/h;->a(Lc/a/a/r/j/g;)V

    iget-object v0, p0, Lc/a/a/r/h;->u:Lcom/bumptech/glide/load/n/k$d;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/bumptech/glide/load/n/k$d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/r/h;->u:Lcom/bumptech/glide/load/n/k$d;

    :cond_17
    return-void
.end method

.method private l()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/h;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_24

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/h;->x:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lc/a/a/r/h;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_24

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->e()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lc/a/a/r/h;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/h;->x:Landroid/graphics/drawable/Drawable;

    :cond_24
    iget-object v0, p0, Lc/a/a/r/h;->x:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/h;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_24

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/h;->z:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lc/a/a/r/h;->z:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_24

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->h()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->h()I

    move-result v0

    invoke-direct {p0, v0}, Lc/a/a/r/h;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/h;->z:Landroid/graphics/drawable/Drawable;

    :cond_24
    iget-object v0, p0, Lc/a/a/r/h;->z:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private n()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/h;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_24

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->o()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/h;->y:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lc/a/a/r/h;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_24

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->p()I

    move-result v0

    if-lez v0, :cond_24

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->p()I

    move-result v0

    invoke-direct {p0, v0}, Lc/a/a/r/h;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/r/h;->y:Landroid/graphics/drawable/Drawable;

    :cond_24
    iget-object v0, p0, Lc/a/a/r/h;->y:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private o()Z
    .registers 2

    iget-object v0, p0, Lc/a/a/r/h;->f:Lc/a/a/r/d;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lc/a/a/r/d;->d()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private p()V
    .registers 2

    iget-object v0, p0, Lc/a/a/r/h;->f:Lc/a/a/r/d;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lc/a/a/r/d;->b(Lc/a/a/r/c;)V

    :cond_7
    return-void
.end method

.method private q()V
    .registers 2

    iget-object v0, p0, Lc/a/a/r/h;->f:Lc/a/a/r/d;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lc/a/a/r/d;->e(Lc/a/a/r/c;)V

    :cond_7
    return-void
.end method

.method private declared-synchronized r()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lc/a/a/r/h;->i()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    if-nez v1, :cond_12

    invoke-direct {p0}, Lc/a/a/r/h;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_12
    if-nez v0, :cond_18

    invoke-direct {p0}, Lc/a/a/r/h;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_18
    if-nez v0, :cond_1e

    invoke-direct {p0}, Lc/a/a/r/h;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1e
    iget-object v1, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    invoke-interface {v1, v0}, Lc/a/a/r/j/h;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_25

    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lc/a/a/r/h;->g()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/r/h;->g:Landroid/content/Context;

    iput-object v0, p0, Lc/a/a/r/h;->h:Lc/a/a/e;

    iput-object v0, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    iput-object v0, p0, Lc/a/a/r/h;->j:Ljava/lang/Class;

    iput-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    const/4 v1, -0x1

    iput v1, p0, Lc/a/a/r/h;->l:I

    iput v1, p0, Lc/a/a/r/h;->m:I

    iput-object v0, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    iput-object v0, p0, Lc/a/a/r/h;->p:Ljava/util/List;

    iput-object v0, p0, Lc/a/a/r/h;->e:Lc/a/a/r/e;

    iput-object v0, p0, Lc/a/a/r/h;->f:Lc/a/a/r/d;

    iput-object v0, p0, Lc/a/a/r/h;->r:Lc/a/a/r/k/c;

    iput-object v0, p0, Lc/a/a/r/h;->u:Lcom/bumptech/glide/load/n/k$d;

    iput-object v0, p0, Lc/a/a/r/h;->x:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc/a/a/r/h;->y:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lc/a/a/r/h;->z:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lc/a/a/r/h;->A:I

    iput v1, p0, Lc/a/a/r/h;->B:I

    iput-object v0, p0, Lc/a/a/r/h;->C:Ljava/lang/RuntimeException;

    sget-object v0, Lc/a/a/r/h;->D:Lb/h/n/d;

    invoke-interface {v0, p0}, Lb/h/n/d;->a(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(II)V
    .registers 24

    move-object/from16 v15, p0

    monitor-enter p0

    :try_start_3
    iget-object v0, v15, Lc/a/a/r/h;->d:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    sget-boolean v0, Lc/a/a/r/h;->E:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lc/a/a/r/h;->v:J

    invoke-static {v1, v2}, Lc/a/a/t/f;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lc/a/a/r/h;->a(Ljava/lang/String;)V

    :cond_26
    iget-object v0, v15, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->d:Lc/a/a/r/h$b;
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_f7

    if-eq v0, v1, :cond_2e

    monitor-exit p0

    return-void

    :cond_2e
    :try_start_2e
    sget-object v0, Lc/a/a/r/h$b;->c:Lc/a/a/r/h$b;

    iput-object v0, v15, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->t()F

    move-result v0

    move/from16 v1, p1

    invoke-static {v1, v0}, Lc/a/a/r/h;->a(IF)I

    move-result v1

    iput v1, v15, Lc/a/a/r/h;->A:I

    move/from16 v1, p2

    invoke-static {v1, v0}, Lc/a/a/r/h;->a(IF)I

    move-result v0

    iput v0, v15, Lc/a/a/r/h;->B:I

    sget-boolean v0, Lc/a/a/r/h;->E:Z

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v15, Lc/a/a/r/h;->v:J

    invoke-static {v1, v2}, Lc/a/a/t/f;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lc/a/a/r/h;->a(Ljava/lang/String;)V

    :cond_66
    iget-object v1, v15, Lc/a/a/r/h;->q:Lcom/bumptech/glide/load/n/k;

    iget-object v2, v15, Lc/a/a/r/h;->h:Lc/a/a/e;

    iget-object v3, v15, Lc/a/a/r/h;->i:Ljava/lang/Object;

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->s()Lcom/bumptech/glide/load/g;

    move-result-object v4

    iget v5, v15, Lc/a/a/r/h;->A:I

    iget v6, v15, Lc/a/a/r/h;->B:I

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->r()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v15, Lc/a/a/r/h;->j:Ljava/lang/Class;

    iget-object v9, v15, Lc/a/a/r/h;->n:Lc/a/a/h;

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->d()Lcom/bumptech/glide/load/n/j;

    move-result-object v10

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->v()Ljava/util/Map;

    move-result-object v11

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->C()Z

    move-result v12

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->A()Z

    move-result v13

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->l()Lcom/bumptech/glide/load/i;

    move-result-object v14

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->y()Z

    move-result v0

    move/from16 p1, v0

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->x()Z

    move-result v16

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->w()Z

    move-result v17

    iget-object v0, v15, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0}, Lc/a/a/r/a;->i()Z

    move-result v18

    iget-object v0, v15, Lc/a/a/r/h;->s:Ljava/util/concurrent/Executor;
    :try_end_ba
    .catchall {:try_start_2e .. :try_end_ba} :catchall_f7

    move/from16 v15, p1

    move-object/from16 v19, p0

    move-object/from16 v20, v0

    :try_start_c0
    invoke-virtual/range {v1 .. v20}, Lcom/bumptech/glide/load/n/k;->a(Lc/a/a/e;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lc/a/a/h;Lcom/bumptech/glide/load/n/j;Ljava/util/Map;ZZLcom/bumptech/glide/load/i;ZZZZLc/a/a/r/g;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/n/k$d;

    move-result-object v0
    :try_end_c4
    .catchall {:try_start_c0 .. :try_end_c4} :catchall_f3

    move-object/from16 v1, p0

    :try_start_c6
    iput-object v0, v1, Lc/a/a/r/h;->u:Lcom/bumptech/glide/load/n/k$d;

    iget-object v0, v1, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v2, Lc/a/a/r/h$b;->c:Lc/a/a/r/h$b;

    if-eq v0, v2, :cond_d1

    const/4 v0, 0x0

    iput-object v0, v1, Lc/a/a/r/h;->u:Lcom/bumptech/glide/load/n/k$d;

    :cond_d1
    sget-boolean v0, Lc/a/a/r/h;->E:Z

    if-eqz v0, :cond_ef

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished onSizeReady in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lc/a/a/r/h;->v:J

    invoke-static {v2, v3}, Lc/a/a/t/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lc/a/a/r/h;->a(Ljava/lang/String;)V
    :try_end_ef
    .catchall {:try_start_c6 .. :try_end_ef} :catchall_f1

    :cond_ef
    monitor-exit p0

    return-void

    :catchall_f1
    move-exception v0

    goto :goto_f9

    :catchall_f3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_f9

    :catchall_f7
    move-exception v0

    move-object v1, v15

    :goto_f9
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/load/n/q;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x5

    :try_start_2
    invoke-direct {p0, p1, v0}, Lc/a/a/r/h;->a(Lcom/bumptech/glide/load/n/q;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/n/v<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/r/h;->d:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/r/h;->u:Lcom/bumptech/glide/load/n/k$d;

    if-nez p1, :cond_2d

    new-instance p1, Lcom/bumptech/glide/load/n/q;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lc/a/a/r/h;->j:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " inside, but instead got null."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/n/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lc/a/a/r/h;->a(Lcom/bumptech/glide/load/n/q;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_a4

    monitor-exit p0

    return-void

    :cond_2d
    :try_start_2d
    invoke-interface {p1}, Lcom/bumptech/glide/load/n/v;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v1, p0, Lc/a/a/r/h;->j:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_54

    :cond_40
    invoke-direct {p0}, Lc/a/a/r/h;->j()Z

    move-result v1

    if-nez v1, :cond_4f

    invoke-direct {p0, p1}, Lc/a/a/r/h;->a(Lcom/bumptech/glide/load/n/v;)V

    sget-object p1, Lc/a/a/r/h$b;->e:Lc/a/a/r/h$b;

    iput-object p1, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;
    :try_end_4d
    .catchall {:try_start_2d .. :try_end_4d} :catchall_a4

    monitor-exit p0

    return-void

    :cond_4f
    :try_start_4f
    invoke-direct {p0, p1, v0, p2}, Lc/a/a/r/h;->a(Lcom/bumptech/glide/load/n/v;Ljava/lang/Object;Lcom/bumptech/glide/load/a;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_a4

    monitor-exit p0

    return-void

    :cond_54
    :goto_54
    :try_start_54
    invoke-direct {p0, p1}, Lc/a/a/r/h;->a(Lcom/bumptech/glide/load/n/v;)V

    new-instance p2, Lcom/bumptech/glide/load/n/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/a/a/r/h;->j:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but instead got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_76

    :cond_74
    const-string v2, ""

    :goto_76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "} inside Resource{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_93

    const-string p1, ""

    goto :goto_95

    :cond_93
    const-string p1, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_95
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/n/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lc/a/a/r/h;->a(Lcom/bumptech/glide/load/n/q;)V
    :try_end_a2
    .catchall {:try_start_54 .. :try_end_a2} :catchall_a4

    monitor-exit p0

    return-void

    :catchall_a4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lc/a/a/r/c;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    instance-of v0, p1, Lc/a/a/r/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    check-cast p1, Lc/a/a/r/h;

    monitor-enter p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_48

    :try_start_9
    iget v0, p0, Lc/a/a/r/h;->l:I

    iget v2, p1, Lc/a/a/r/h;->l:I

    if-ne v0, v2, :cond_40

    iget v0, p0, Lc/a/a/r/h;->m:I

    iget v2, p1, Lc/a/a/r/h;->m:I

    if-ne v0, v2, :cond_40

    iget-object v0, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    iget-object v2, p1, Lc/a/a/r/h;->i:Ljava/lang/Object;

    invoke-static {v0, v2}, Lc/a/a/t/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lc/a/a/r/h;->j:Ljava/lang/Class;

    iget-object v2, p1, Lc/a/a/r/h;->j:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    iget-object v2, p1, Lc/a/a/r/h;->k:Lc/a/a/r/a;

    invoke-virtual {v0, v2}, Lc/a/a/r/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lc/a/a/r/h;->n:Lc/a/a/h;

    iget-object v2, p1, Lc/a/a/r/h;->n:Lc/a/a/h;

    if-ne v0, v2, :cond_40

    invoke-direct {p0, p1}, Lc/a/a/r/h;->a(Lc/a/a/r/h;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v1, 0x1

    :cond_40
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_9 .. :try_end_41} :catchall_43

    monitor-exit p0

    return v1

    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit p1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_48

    :cond_46
    monitor-exit p0

    return v1

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lc/a/a/r/h;->f()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized begin()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lc/a/a/r/h;->g()V

    iget-object v0, p0, Lc/a/a/r/h;->d:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    invoke-static {}, Lc/a/a/t/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lc/a/a/r/h;->v:J

    iget-object v0, p0, Lc/a/a/r/h;->i:Ljava/lang/Object;

    if-nez v0, :cond_3a

    iget v0, p0, Lc/a/a/r/h;->l:I

    iget v1, p0, Lc/a/a/r/h;->m:I

    invoke-static {v0, v1}, Lc/a/a/t/k;->b(II)Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, p0, Lc/a/a/r/h;->l:I

    iput v0, p0, Lc/a/a/r/h;->A:I

    iget v0, p0, Lc/a/a/r/h;->m:I

    iput v0, p0, Lc/a/a/r/h;->B:I

    :cond_25
    invoke-direct {p0}, Lc/a/a/r/h;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2d

    const/4 v0, 0x5

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x3

    :goto_2e
    new-instance v1, Lcom/bumptech/glide/load/n/q;

    const-string v2, "Received null model"

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/n/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lc/a/a/r/h;->a(Lcom/bumptech/glide/load/n/q;I)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_ad

    monitor-exit p0

    return-void

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->c:Lc/a/a/r/h$b;

    if-eq v0, v1, :cond_a5

    iget-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->e:Lc/a/a/r/h$b;

    if-ne v0, v1, :cond_4f

    iget-object v0, p0, Lc/a/a/r/h;->t:Lcom/bumptech/glide/load/n/v;

    sget-object v1, Lcom/bumptech/glide/load/a;->f:Lcom/bumptech/glide/load/a;

    invoke-virtual {p0, v0, v1}, Lc/a/a/r/h;->a(Lcom/bumptech/glide/load/n/v;Lcom/bumptech/glide/load/a;)V
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_ad

    monitor-exit p0

    return-void

    :cond_4f
    :try_start_4f
    sget-object v0, Lc/a/a/r/h$b;->d:Lc/a/a/r/h$b;

    iput-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    iget v0, p0, Lc/a/a/r/h;->l:I

    iget v1, p0, Lc/a/a/r/h;->m:I

    invoke-static {v0, v1}, Lc/a/a/t/k;->b(II)Z

    move-result v0

    if-eqz v0, :cond_65

    iget v0, p0, Lc/a/a/r/h;->l:I

    iget v1, p0, Lc/a/a/r/h;->m:I

    invoke-virtual {p0, v0, v1}, Lc/a/a/r/h;->a(II)V

    goto :goto_6a

    :cond_65
    iget-object v0, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    invoke-interface {v0, p0}, Lc/a/a/r/j/h;->b(Lc/a/a/r/j/g;)V

    :goto_6a
    iget-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->c:Lc/a/a/r/h$b;

    if-eq v0, v1, :cond_76

    iget-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->d:Lc/a/a/r/h$b;

    if-ne v0, v1, :cond_85

    :cond_76
    invoke-direct {p0}, Lc/a/a/r/h;->i()Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    invoke-direct {p0}, Lc/a/a/r/h;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/a/a/r/j/h;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_85
    sget-boolean v0, Lc/a/a/r/h;->E:Z

    if-eqz v0, :cond_a3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/a/a/r/h;->v:J

    invoke-static {v1, v2}, Lc/a/a/t/f;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc/a/a/r/h;->a(Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_4f .. :try_end_a3} :catchall_ad

    :cond_a3
    monitor-exit p0

    return-void

    :cond_a5
    :try_start_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ad
    .catchall {:try_start_a5 .. :try_end_ad} :catchall_ad

    :catchall_ad
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->f:Lc/a/a/r/h$b;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lc/a/a/r/h;->g()V

    iget-object v0, p0, Lc/a/a/r/h;->d:Lc/a/a/t/l/c;

    invoke-virtual {v0}, Lc/a/a/t/l/c;->a()V

    iget-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->g:Lc/a/a/r/h$b;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_32

    if-ne v0, v1, :cond_11

    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    invoke-direct {p0}, Lc/a/a/r/h;->k()V

    iget-object v0, p0, Lc/a/a/r/h;->t:Lcom/bumptech/glide/load/n/v;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lc/a/a/r/h;->t:Lcom/bumptech/glide/load/n/v;

    invoke-direct {p0, v0}, Lc/a/a/r/h;->a(Lcom/bumptech/glide/load/n/v;)V

    :cond_1d
    invoke-direct {p0}, Lc/a/a/r/h;->h()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lc/a/a/r/h;->o:Lc/a/a/r/j/h;

    invoke-direct {p0}, Lc/a/a/r/h;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/a/a/r/j/h;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_2c
    sget-object v0, Lc/a/a/r/h$b;->g:Lc/a/a/r/h$b;

    iput-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lc/a/a/t/l/c;
    .registers 2

    iget-object v0, p0, Lc/a/a/r/h;->d:Lc/a/a/t/l/c;

    return-object v0
.end method

.method public declared-synchronized e()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->g:Lc/a/a/r/h$b;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->e:Lc/a/a/r/h$b;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRunning()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->c:Lc/a/a/r/h$b;

    if-eq v0, v1, :cond_10

    iget-object v0, p0, Lc/a/a/r/h;->w:Lc/a/a/r/h$b;

    sget-object v1, Lc/a/a/r/h$b;->d:Lc/a/a/r/h$b;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-ne v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class c.a.a.r.h.a (c.a.a.r.h$a)
.class Lc/a/a/r/h$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/t/l/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/r/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/t/l/a$d<",
        "Lc/a/a/r/h<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/a/a/r/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/a/a/r/h<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lc/a/a/r/h;

    invoke-direct {v0}, Lc/a/a/r/h;-><init>()V

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lc/a/a/r/h$a;->a()Lc/a/a/r/h;

    move-result-object v0

    return-object v0
.end method

###### Class c.a.a.r.h.b (c.a.a.r.h$b)
.class final enum Lc/a/a/r/h$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/r/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/a/a/r/h$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc/a/a/r/h$b;

.field public static final enum c:Lc/a/a/r/h$b;

.field public static final enum d:Lc/a/a/r/h$b;

.field public static final enum e:Lc/a/a/r/h$b;

.field public static final enum f:Lc/a/a/r/h$b;

.field public static final enum g:Lc/a/a/r/h$b;

.field private static final synthetic h:[Lc/a/a/r/h$b;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lc/a/a/r/h$b;

    const/4 v1, 0x0

    const-string v2, "PENDING"

    invoke-direct {v0, v2, v1}, Lc/a/a/r/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/h$b;->b:Lc/a/a/r/h$b;

    new-instance v0, Lc/a/a/r/h$b;

    const/4 v2, 0x1

    const-string v3, "RUNNING"

    invoke-direct {v0, v3, v2}, Lc/a/a/r/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/h$b;->c:Lc/a/a/r/h$b;

    new-instance v0, Lc/a/a/r/h$b;

    const/4 v3, 0x2

    const-string v4, "WAITING_FOR_SIZE"

    invoke-direct {v0, v4, v3}, Lc/a/a/r/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/h$b;->d:Lc/a/a/r/h$b;

    new-instance v0, Lc/a/a/r/h$b;

    const/4 v4, 0x3

    const-string v5, "COMPLETE"

    invoke-direct {v0, v5, v4}, Lc/a/a/r/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/h$b;->e:Lc/a/a/r/h$b;

    new-instance v0, Lc/a/a/r/h$b;

    const/4 v5, 0x4

    const-string v6, "FAILED"

    invoke-direct {v0, v6, v5}, Lc/a/a/r/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/h$b;->f:Lc/a/a/r/h$b;

    new-instance v0, Lc/a/a/r/h$b;

    const/4 v6, 0x5

    const-string v7, "CLEARED"

    invoke-direct {v0, v7, v6}, Lc/a/a/r/h$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/a/a/r/h$b;->g:Lc/a/a/r/h$b;

    const/4 v0, 0x6

    new-array v0, v0, [Lc/a/a/r/h$b;

    sget-object v7, Lc/a/a/r/h$b;->b:Lc/a/a/r/h$b;

    aput-object v7, v0, v1

    sget-object v1, Lc/a/a/r/h$b;->c:Lc/a/a/r/h$b;

    aput-object v1, v0, v2

    sget-object v1, Lc/a/a/r/h$b;->d:Lc/a/a/r/h$b;

    aput-object v1, v0, v3

    sget-object v1, Lc/a/a/r/h$b;->e:Lc/a/a/r/h$b;

    aput-object v1, v0, v4

    sget-object v1, Lc/a/a/r/h$b;->f:Lc/a/a/r/h$b;

    aput-object v1, v0, v5

    sget-object v1, Lc/a/a/r/h$b;->g:Lc/a/a/r/h$b;

    aput-object v1, v0, v6

    sput-object v0, Lc/a/a/r/h$b;->h:[Lc/a/a/r/h$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/a/a/r/h$b;
    .registers 2

    const-class v0, Lc/a/a/r/h$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/a/a/r/h$b;

    return-object p0
.end method

.method public static values()[Lc/a/a/r/h$b;
    .registers 1

    sget-object v0, Lc/a/a/r/h$b;->h:[Lc/a/a/r/h$b;

    invoke-virtual {v0}, [Lc/a/a/r/h$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/a/a/r/h$b;

    return-object v0
.end method
