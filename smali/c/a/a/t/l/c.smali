###### Class c.a.a.t.l.c (c.a.a.t.l.c)
.class public abstract Lc/a/a/t/l/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/t/l/c$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/a/a/t/l/c$a;)V
    .registers 2

    invoke-direct {p0}, Lc/a/a/t/l/c;-><init>()V

    return-void
.end method

.method public static b()Lc/a/a/t/l/c;
    .registers 1

    new-instance v0, Lc/a/a/t/l/c$b;

    invoke-direct {v0}, Lc/a/a/t/l/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method abstract a(Z)V
.end method

###### Class c.a.a.t.l.c.a (c.a.a.t.l.c$a)
.class synthetic Lc/a/a/t/l/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/t/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class c.a.a.t.l.c.b (c.a.a.t.l.c$b)
.class Lc/a/a/t/l/c$b;
.super Lc/a/a/t/l/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/t/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private volatile a:Z


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc/a/a/t/l/c;-><init>(Lc/a/a/t/l/c$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-boolean v0, p0, Lc/a/a/t/l/c$b;->a:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lc/a/a/t/l/c$b;->a:Z

    return-void
.end method
