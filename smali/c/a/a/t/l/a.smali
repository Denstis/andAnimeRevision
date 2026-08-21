###### Class c.a.a.t.l.a (c.a.a.t.l.a)
.class public final Lc/a/a/t/l/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/t/l/a$e;,
        Lc/a/a/t/l/a$f;,
        Lc/a/a/t/l/a$g;,
        Lc/a/a/t/l/a$d;
    }
.end annotation


# static fields
.field private static final a:Lc/a/a/t/l/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/t/l/a$g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc/a/a/t/l/a$a;

    invoke-direct {v0}, Lc/a/a/t/l/a$a;-><init>()V

    sput-object v0, Lc/a/a/t/l/a;->a:Lc/a/a/t/l/a$g;

    return-void
.end method

.method public static a(I)Lb/h/n/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lb/h/n/d<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lb/h/n/f;

    invoke-direct {v0, p0}, Lb/h/n/f;-><init>(I)V

    new-instance p0, Lc/a/a/t/l/a$b;

    invoke-direct {p0}, Lc/a/a/t/l/a$b;-><init>()V

    new-instance v1, Lc/a/a/t/l/a$c;

    invoke-direct {v1}, Lc/a/a/t/l/a$c;-><init>()V

    invoke-static {v0, p0, v1}, Lc/a/a/t/l/a;->a(Lb/h/n/d;Lc/a/a/t/l/a$d;Lc/a/a/t/l/a$g;)Lb/h/n/d;

    move-result-object p0

    return-object p0
.end method

.method public static a(ILc/a/a/t/l/a$d;)Lb/h/n/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/a/a/t/l/a$f;",
            ">(I",
            "Lc/a/a/t/l/a$d<",
            "TT;>;)",
            "Lb/h/n/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lb/h/n/f;

    invoke-direct {v0, p0}, Lb/h/n/f;-><init>(I)V

    invoke-static {v0, p1}, Lc/a/a/t/l/a;->a(Lb/h/n/d;Lc/a/a/t/l/a$d;)Lb/h/n/d;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lb/h/n/d;Lc/a/a/t/l/a$d;)Lb/h/n/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lc/a/a/t/l/a$f;",
            ">(",
            "Lb/h/n/d<",
            "TT;>;",
            "Lc/a/a/t/l/a$d<",
            "TT;>;)",
            "Lb/h/n/d<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lc/a/a/t/l/a;->a()Lc/a/a/t/l/a$g;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lc/a/a/t/l/a;->a(Lb/h/n/d;Lc/a/a/t/l/a$d;Lc/a/a/t/l/a$g;)Lb/h/n/d;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lb/h/n/d;Lc/a/a/t/l/a$d;Lc/a/a/t/l/a$g;)Lb/h/n/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/h/n/d<",
            "TT;>;",
            "Lc/a/a/t/l/a$d<",
            "TT;>;",
            "Lc/a/a/t/l/a$g<",
            "TT;>;)",
            "Lb/h/n/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lc/a/a/t/l/a$e;

    invoke-direct {v0, p0, p1, p2}, Lc/a/a/t/l/a$e;-><init>(Lb/h/n/d;Lc/a/a/t/l/a$d;Lc/a/a/t/l/a$g;)V

    return-object v0
.end method

.method private static a()Lc/a/a/t/l/a$g;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/a/a/t/l/a$g<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lc/a/a/t/l/a;->a:Lc/a/a/t/l/a$g;

    return-object v0
.end method

.method public static b()Lb/h/n/d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/h/n/d<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/16 v0, 0x14

    invoke-static {v0}, Lc/a/a/t/l/a;->a(I)Lb/h/n/d;

    move-result-object v0

    return-object v0
.end method

###### Class c.a.a.t.l.a.C0133a (c.a.a.t.l.a$a)
.class Lc/a/a/t/l/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/t/l/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/t/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/t/l/a$g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

###### Class c.a.a.t.l.a.b (c.a.a.t.l.a$b)
.class Lc/a/a/t/l/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/t/l/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/t/l/a;->a(I)Lb/h/n/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/t/l/a$d<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lc/a/a/t/l/a$b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

###### Class c.a.a.t.l.a.c (c.a.a.t.l.a$c)
.class Lc/a/a/t/l/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/t/l/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/a/a/t/l/a;->a(I)Lb/h/n/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/a/a/t/l/a$g<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/a/a/t/l/a$c;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

###### Class c.a.a.t.l.a.d (c.a.a.t.l.a$d)
.class public interface abstract Lc/a/a/t/l/a$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/t/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

###### Class c.a.a.t.l.a.e (c.a.a.t.l.a$e)
.class final Lc/a/a/t/l/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/h/n/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/t/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/h/n/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/a/a/t/l/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/t/l/a$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lc/a/a/t/l/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/t/l/a$g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Lb/h/n/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/h/n/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lb/h/n/d;Lc/a/a/t/l/a$d;Lc/a/a/t/l/a$g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/h/n/d<",
            "TT;>;",
            "Lc/a/a/t/l/a$d<",
            "TT;>;",
            "Lc/a/a/t/l/a$g<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/t/l/a$e;->c:Lb/h/n/d;

    iput-object p2, p0, Lc/a/a/t/l/a$e;->a:Lc/a/a/t/l/a$d;

    iput-object p3, p0, Lc/a/a/t/l/a$e;->b:Lc/a/a/t/l/a$g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/a/a/t/l/a$e;->c:Lb/h/n/d;

    invoke-interface {v0}, Lb/h/n/d;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lc/a/a/t/l/a$e;->a:Lc/a/a/t/l/a$d;

    invoke-interface {v0}, Lc/a/a/t/l/a$d;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FactoryPools"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created new "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    instance-of v1, v0, Lc/a/a/t/l/a$f;

    if-eqz v1, :cond_3e

    move-object v1, v0

    check-cast v1, Lc/a/a/t/l/a$f;

    invoke-interface {v1}, Lc/a/a/t/l/a$f;->d()Lc/a/a/t/l/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/a/a/t/l/c;->a(Z)V

    :cond_3e
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    instance-of v0, p1, Lc/a/a/t/l/a$f;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lc/a/a/t/l/a$f;

    invoke-interface {v0}, Lc/a/a/t/l/a$f;->d()Lc/a/a/t/l/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/a/a/t/l/c;->a(Z)V

    :cond_f
    iget-object v0, p0, Lc/a/a/t/l/a$e;->b:Lc/a/a/t/l/a$g;

    invoke-interface {v0, p1}, Lc/a/a/t/l/a$g;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lc/a/a/t/l/a$e;->c:Lb/h/n/d;

    invoke-interface {v0, p1}, Lb/h/n/d;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

###### Class c.a.a.t.l.a.f (c.a.a.t.l.a$f)
.class public interface abstract Lc/a/a/t/l/a$f;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/t/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation


# virtual methods
.method public abstract d()Lc/a/a/t/l/c;
.end method

###### Class c.a.a.t.l.a.g (c.a.a.t.l.a$g)
.class public interface abstract Lc/a/a/t/l/a$g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/t/l/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
