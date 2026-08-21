###### Class h.a0 (h.a0)
.class public final Lh/a0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/a0$a;
    }
.end annotation


# instance fields
.field final a:Lh/t;

.field final b:Ljava/lang/String;

.field final c:Lh/s;

.field final d:Lh/b0;

.field final e:Ljava/lang/Object;

.field private volatile f:Lh/d;


# direct methods
.method constructor <init>(Lh/a0$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lh/a0$a;->a:Lh/t;

    iput-object v0, p0, Lh/a0;->a:Lh/t;

    iget-object v0, p1, Lh/a0$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lh/a0;->b:Ljava/lang/String;

    iget-object v0, p1, Lh/a0$a;->c:Lh/s$a;

    invoke-virtual {v0}, Lh/s$a;->a()Lh/s;

    move-result-object v0

    iput-object v0, p0, Lh/a0;->c:Lh/s;

    iget-object v0, p1, Lh/a0$a;->d:Lh/b0;

    iput-object v0, p0, Lh/a0;->d:Lh/b0;

    iget-object p1, p1, Lh/a0$a;->e:Ljava/lang/Object;

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move-object p1, p0

    :goto_1d
    iput-object p1, p0, Lh/a0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lh/b0;
    .registers 2

    iget-object v0, p0, Lh/a0;->d:Lh/b0;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lh/a0;->c:Lh/s;

    invoke-virtual {v0, p1}, Lh/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Lh/d;
    .registers 2

    iget-object v0, p0, Lh/a0;->f:Lh/d;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object v0, p0, Lh/a0;->c:Lh/s;

    invoke-static {v0}, Lh/d;->a(Lh/s;)Lh/d;

    move-result-object v0

    iput-object v0, p0, Lh/a0;->f:Lh/d;

    :goto_d
    return-object v0
.end method

.method public c()Lh/s;
    .registers 2

    iget-object v0, p0, Lh/a0;->c:Lh/s;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lh/a0;->a:Lh/t;

    invoke-virtual {v0}, Lh/t;->h()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/a0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lh/a0$a;
    .registers 2

    new-instance v0, Lh/a0$a;

    invoke-direct {v0, p0}, Lh/a0$a;-><init>(Lh/a0;)V

    return-object v0
.end method

.method public g()Lh/t;
    .registers 2

    iget-object v0, p0, Lh/a0;->a:Lh/t;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/a0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/a0;->a:Lh/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/a0;->e:Ljava/lang/Object;

    if-eq v1, p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class h.a0.a (h.a0$a)
.class public Lh/a0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lh/t;

.field b:Ljava/lang/String;

.field c:Lh/s$a;

.field d:Lh/b0;

.field e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lh/a0$a;->b:Ljava/lang/String;

    new-instance v0, Lh/s$a;

    invoke-direct {v0}, Lh/s$a;-><init>()V

    iput-object v0, p0, Lh/a0$a;->c:Lh/s$a;

    return-void
.end method

.method constructor <init>(Lh/a0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lh/a0;->a:Lh/t;

    iput-object v0, p0, Lh/a0$a;->a:Lh/t;

    iget-object v0, p1, Lh/a0;->b:Ljava/lang/String;

    iput-object v0, p0, Lh/a0$a;->b:Ljava/lang/String;

    iget-object v0, p1, Lh/a0;->d:Lh/b0;

    iput-object v0, p0, Lh/a0$a;->d:Lh/b0;

    iget-object v0, p1, Lh/a0;->e:Ljava/lang/Object;

    iput-object v0, p0, Lh/a0$a;->e:Ljava/lang/Object;

    iget-object p1, p1, Lh/a0;->c:Lh/s;

    invoke-virtual {p1}, Lh/s;->a()Lh/s$a;

    move-result-object p1

    iput-object p1, p0, Lh/a0$a;->c:Lh/s$a;

    return-void
.end method


# virtual methods
.method public a(Lh/s;)Lh/a0$a;
    .registers 2

    invoke-virtual {p1}, Lh/s;->a()Lh/s$a;

    move-result-object p1

    iput-object p1, p0, Lh/a0$a;->c:Lh/s$a;

    return-object p0
.end method

.method public a(Lh/t;)Lh/a0$a;
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lh/a0$a;->a:Lh/t;

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lh/a0$a;
    .registers 3

    iget-object v0, p0, Lh/a0$a;->c:Lh/s$a;

    invoke-virtual {v0, p1}, Lh/s$a;->b(Ljava/lang/String;)Lh/s$a;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lh/b0;)Lh/a0$a;
    .registers 5

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "method "

    if-eqz p2, :cond_2d

    invoke-static {p1}, Lh/h0/g/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2d

    :cond_13
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2d
    :goto_2d
    if-nez p2, :cond_50

    invoke-static {p1}, Lh/h0/g/f;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    goto :goto_50

    :cond_36
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_50
    :goto_50
    iput-object p1, p0, Lh/a0$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lh/a0$a;->d:Lh/b0;

    return-object p0

    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;
    .registers 4

    iget-object v0, p0, Lh/a0$a;->c:Lh/s$a;

    invoke-virtual {v0, p1, p2}, Lh/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lh/s$a;

    return-object p0
.end method

.method public a()Lh/a0;
    .registers 3

    iget-object v0, p0, Lh/a0$a;->a:Lh/t;

    if-eqz v0, :cond_a

    new-instance v0, Lh/a0;

    invoke-direct {v0, p0}, Lh/a0;-><init>(Lh/a0$a;)V

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lh/a0$a;
    .registers 8

    if-eqz p1, :cond_60

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    :goto_1a
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    :cond_26
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    goto :goto_1a

    :cond_3f
    :goto_3f
    invoke-static {p1}, Lh/t;->d(Ljava/lang/String;)Lh/t;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {p0, v0}, Lh/a0$a;->a(Lh/t;)Lh/a0$a;

    return-object p0

    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_60
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_69

    :goto_68
    throw p1

    :goto_69
    goto :goto_68
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;
    .registers 4

    iget-object v0, p0, Lh/a0$a;->c:Lh/s$a;

    invoke-virtual {v0, p1, p2}, Lh/s$a;->c(Ljava/lang/String;Ljava/lang/String;)Lh/s$a;

    return-object p0
.end method
