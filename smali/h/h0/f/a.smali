###### Class h.h0.f.a (h.h0.f.a)
.class public final Lh/h0/f/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/u;


# instance fields
.field public final a:Lh/x;


# direct methods
.method public constructor <init>(Lh/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/h0/f/a;->a:Lh/x;

    return-void
.end method


# virtual methods
.method public a(Lh/u$a;)Lh/c0;
    .registers 7

    move-object v0, p1

    check-cast v0, Lh/h0/g/g;

    invoke-virtual {v0}, Lh/h0/g/g;->e()Lh/a0;

    move-result-object v1

    invoke-virtual {v0}, Lh/h0/g/g;->i()Lh/h0/f/g;

    move-result-object v2

    invoke-virtual {v1}, Lh/a0;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lh/h0/f/a;->a:Lh/x;

    invoke-virtual {v2, v4, p1, v3}, Lh/h0/f/g;->a(Lh/x;Lh/u$a;Z)Lh/h0/g/c;

    move-result-object p1

    invoke-virtual {v2}, Lh/h0/f/g;->c()Lh/h0/f/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lh/h0/g/g;->a(Lh/a0;Lh/h0/f/g;Lh/h0/g/c;Lh/h0/f/c;)Lh/c0;

    move-result-object p1

    return-object p1
.end method
