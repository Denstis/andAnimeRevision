###### Class b.n.a.b (b.n.a.b)
.class Lb/n/a/b;
.super Lb/n/a/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/n/a/b$c;,
        Lb/n/a/b$b;,
        Lb/n/a/b$a;
    }
.end annotation


# static fields
.field static c:Z = false


# instance fields
.field private final a:Landroidx/lifecycle/g;

.field private final b:Lb/n/a/b$c;


# direct methods
.method constructor <init>(Landroidx/lifecycle/g;Landroidx/lifecycle/r;)V
    .registers 3

    invoke-direct {p0}, Lb/n/a/a;-><init>()V

    iput-object p1, p0, Lb/n/a/b;->a:Landroidx/lifecycle/g;

    invoke-static {p2}, Lb/n/a/b$c;->a(Landroidx/lifecycle/r;)Lb/n/a/b$c;

    move-result-object p1

    iput-object p1, p0, Lb/n/a/b;->b:Lb/n/a/b$c;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lb/n/a/b;->b:Lb/n/a/b$c;

    invoke-virtual {v0}, Lb/n/a/b$c;->b()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/n/a/b;->b:Lb/n/a/b$c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/n/a/b$c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/n/a/b;->a:Landroidx/lifecycle/g;

    invoke-static {v1, v0}, Lb/h/n/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class b.n.a.b.a (b.n.a.b$a)
.class public Lb/n/a/b$a;
.super Landroidx/lifecycle/l;
.source ""

# interfaces
.implements Lb/n/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/n/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/l<",
        "TD;>;",
        "Lb/n/b/a$a<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final j:I

.field private final k:Landroid/os/Bundle;

.field private final l:Lb/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/n/b/a<",
            "TD;>;"
        }
    .end annotation
.end field

.field private m:Landroidx/lifecycle/g;

.field private n:Lb/n/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/n/a/b$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field private o:Lb/n/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/n/b/a<",
            "TD;>;"
        }
    .end annotation
.end field


# virtual methods
.method a(Z)Lb/n/b/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lb/n/b/a<",
            "TD;>;"
        }
    .end annotation

    sget-boolean p1, Lb/n/a/b;->c:Z

    if-eqz p1, :cond_1a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Destroying: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoaderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object p1, p0, Lb/n/a/b$a;->l:Lb/n/b/a;

    invoke-virtual {p1}, Lb/n/b/a;->a()Z

    const/4 p1, 0x0

    throw p1
.end method

.method protected a()V
    .registers 3

    sget-boolean v0, Lb/n/a/b;->c:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Starting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lb/n/a/b$a;->l:Lb/n/b/a;

    invoke-virtual {v0}, Lb/n/b/a;->c()V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Landroidx/lifecycle/m;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/m<",
            "-TD;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/m;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/n/a/b$a;->m:Landroidx/lifecycle/g;

    iput-object p1, p0, Lb/n/a/b$a;->n:Lb/n/a/b$b;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/lifecycle/l;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lb/n/a/b$a;->o:Lb/n/b/a;

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Lb/n/b/a;->b()V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lb/n/a/b$a;->j:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/n/a/b$a;->k:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lb/n/a/b$a;->l:Lb/n/b/a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lb/n/a/b$a;->l:Lb/n/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/n/b/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected b()V
    .registers 3

    sget-boolean v0, Lb/n/a/b;->c:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Stopping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, p0, Lb/n/a/b$a;->l:Lb/n/b/a;

    invoke-virtual {v0}, Lb/n/b/a;->d()V

    const/4 v0, 0x0

    throw v0
.end method

.method c()V
    .registers 3

    iget-object v0, p0, Lb/n/a/b$a;->m:Landroidx/lifecycle/g;

    iget-object v1, p0, Lb/n/a/b$a;->n:Lb/n/a/b$b;

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    invoke-super {p0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/m;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->a(Landroidx/lifecycle/g;Landroidx/lifecycle/m;)V

    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/n/a/b$a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/n/a/b$a;->l:Lb/n/b/a;

    invoke-static {v1, v0}, Lb/h/n/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class b.n.a.b.C0117b (b.n.a.b$b)
.class Lb/n/a/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/n/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/m<",
        "TD;>;"
    }
.end annotation

###### Class b.n.a.b.c (b.n.a.b$c)
.class Lb/n/a/b$c;
.super Landroidx/lifecycle/p;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/n/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final b:Landroidx/lifecycle/q$a;


# instance fields
.field private a:Lb/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/e/h<",
            "Lb/n/a/b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/n/a/b$c$a;

    invoke-direct {v0}, Lb/n/a/b$c$a;-><init>()V

    sput-object v0, Lb/n/a/b$c;->b:Landroidx/lifecycle/q$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroidx/lifecycle/p;-><init>()V

    new-instance v0, Lb/e/h;

    invoke-direct {v0}, Lb/e/h;-><init>()V

    iput-object v0, p0, Lb/n/a/b$c;->a:Lb/e/h;

    return-void
.end method

.method static a(Landroidx/lifecycle/r;)Lb/n/a/b$c;
    .registers 3

    new-instance v0, Landroidx/lifecycle/q;

    sget-object v1, Lb/n/a/b$c;->b:Landroidx/lifecycle/q$a;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/q;-><init>(Landroidx/lifecycle/r;Landroidx/lifecycle/q$a;)V

    const-class p0, Lb/n/a/b$c;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/q;->a(Ljava/lang/Class;)Landroidx/lifecycle/p;

    move-result-object p0

    check-cast p0, Lb/n/a/b$c;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Landroidx/lifecycle/p;->a()V

    iget-object v0, p0, Lb/n/a/b$c;->a:Lb/e/h;

    invoke-virtual {v0}, Lb/e/h;->b()I

    move-result v0

    if-gtz v0, :cond_11

    iget-object v0, p0, Lb/n/a/b$c;->a:Lb/e/h;

    invoke-virtual {v0}, Lb/e/h;->a()V

    return-void

    :cond_11
    iget-object v0, p0, Lb/n/a/b$c;->a:Lb/e/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lb/e/h;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/n/a/b$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/n/a/b$a;->a(Z)Lb/n/b/a;

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lb/n/a/b$c;->a:Lb/e/h;

    invoke-virtual {v0}, Lb/e/h;->b()I

    move-result v0

    if-lez v0, :cond_55

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lb/n/a/b$c;->a:Lb/e/h;

    invoke-virtual {v2}, Lb/e/h;->b()I

    move-result v2

    if-gtz v2, :cond_2b

    goto :goto_55

    :cond_2b
    iget-object v2, p0, Lb/n/a/b$c;->a:Lb/e/h;

    invoke-virtual {v2, v1}, Lb/e/h;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/n/a/b$a;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  #"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lb/n/a/b$c;->a:Lb/e/h;

    invoke-virtual {p1, v1}, Lb/e/h;->d(I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lb/n/a/b$a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, v0, p2, p3, p4}, Lb/n/a/b$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_55
    :goto_55
    return-void
.end method

.method b()V
    .registers 4

    iget-object v0, p0, Lb/n/a/b$c;->a:Lb/e/h;

    invoke-virtual {v0}, Lb/e/h;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lb/n/a/b$c;->a:Lb/e/h;

    invoke-virtual {v2, v1}, Lb/e/h;->f(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/n/a/b$a;

    invoke-virtual {v2}, Lb/n/a/b$a;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

###### Class b.n.a.b.c.a (b.n.a.b$c$a)
.class final Lb/n/a/b$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/lifecycle/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/n/a/b$c;
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
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/p;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/p;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Lb/n/a/b$c;

    invoke-direct {p1}, Lb/n/a/b$c;-><init>()V

    return-object p1
.end method
