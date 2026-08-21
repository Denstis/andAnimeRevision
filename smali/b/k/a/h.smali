###### Class b.k.a.h (b.k.a.h)
.class public abstract Lb/k/a/h;
.super Lb/k/a/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/k/a/f;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field final d:Lb/k/a/j;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 5

    invoke-direct {p0}, Lb/k/a/f;-><init>()V

    new-instance p4, Lb/k/a/j;

    invoke-direct {p4}, Lb/k/a/j;-><init>()V

    iput-object p4, p0, Lb/k/a/h;->d:Lb/k/a/j;

    iput-object p1, p0, Lb/k/a/h;->a:Landroid/app/Activity;

    const-string p1, "context == null"

    invoke-static {p2, p1}, Lb/h/n/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/content/Context;

    iput-object p2, p0, Lb/k/a/h;->b:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {p3, p1}, Lb/h/n/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/os/Handler;

    iput-object p3, p0, Lb/k/a/h;->c:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lb/k/a/e;)V
    .registers 4

    iget-object v0, p1, Lb/k/a/e;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Lb/k/a/h;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method abstract a(Lb/k/a/d;)V
.end method

.method public abstract a(Lb/k/a/d;Landroid/content/Intent;ILandroid/os/Bundle;)V
.end method

.method public abstract a(Lb/k/a/d;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
.end method

.method public abstract a(Lb/k/a/d;[Ljava/lang/String;I)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method b()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lb/k/a/h;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public abstract b(Lb/k/a/d;)Z
.end method

.method c()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lb/k/a/h;->b:Landroid/content/Context;

    return-object v0
.end method

.method d()Lb/k/a/j;
    .registers 2

    iget-object v0, p0, Lb/k/a/h;->d:Lb/k/a/j;

    return-object v0
.end method

.method e()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lb/k/a/h;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public abstract f()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract g()Landroid/view/LayoutInflater;
.end method

.method public abstract h()I
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
.end method
