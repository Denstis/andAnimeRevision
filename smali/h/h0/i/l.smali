###### Class h.h0.i.l (h.h0.i.l)
.class public interface abstract Lh/h0/i/l;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lh/h0/i/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lh/h0/i/l$a;

    invoke-direct {v0}, Lh/h0/i/l$a;-><init>()V

    sput-object v0, Lh/h0/i/l;->a:Lh/h0/i/l;

    return-void
.end method


# virtual methods
.method public abstract a(ILh/h0/i/b;)V
.end method

.method public abstract a(ILi/e;IZ)Z
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;Z)Z"
        }
    .end annotation
.end method

###### Class h.h0.i.l.a (h.h0.i.l$a)
.class final Lh/h0/i/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lh/h0/i/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h0/i/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILh/h0/i/b;)V
    .registers 3

    return-void
.end method

.method public a(ILi/e;IZ)Z
    .registers 5

    int-to-long p3, p3

    invoke-interface {p2, p3, p4}, Li/e;->skip(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(ILjava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public a(ILjava/util/List;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lh/h0/i/c;",
            ">;Z)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
