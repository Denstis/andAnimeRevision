###### Class g.m.g (g.m.g)
.class Lg/m/g;
.super Lg/m/f;
.source ""


# direct methods
.method public static final a([B)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/m/g$a;

    invoke-direct {v0, p0}, Lg/m/g$a;-><init>([B)V

    return-object v0
.end method

.method public static a([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lg/m/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "ArraysUtilJVM.asList(this)"

    invoke-static {p0, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final a([BII)[B
    .registers 4

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    invoke-static {p2, v0}, Lg/m/e;->a(II)V

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const-string p1, "java.util.Arrays.copyOfR\u2026this, fromIndex, toIndex)"

    invoke-static {p0, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

###### Class g.m.g.a (g.m.g$a)
.class public final Lg/m/g$a;
.super Lg/m/b;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/m/g;->a([B)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/m/b<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final synthetic c:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    iput-object p1, p0, Lg/m/g$a;->c:[B

    invoke-direct {p0}, Lg/m/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lg/m/g$a;->c:[B

    array-length v0, v0

    return v0
.end method

.method public a(B)Z
    .registers 3

    iget-object v0, p0, Lg/m/g$a;->c:[B

    invoke-static {v0, p1}, Lg/m/h;->a([BB)Z

    move-result p1

    return p1
.end method

.method public b(B)I
    .registers 3

    iget-object v0, p0, Lg/m/g$a;->c:[B

    invoke-static {v0, p1}, Lg/m/h;->b([BB)I

    move-result p1

    return p1
.end method

.method public c(B)I
    .registers 3

    iget-object v0, p0, Lg/m/g$a;->c:[B

    invoke-static {v0, p1}, Lg/m/h;->c([BB)I

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lg/m/g$a;->a(B)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Byte;
    .registers 3

    iget-object v0, p0, Lg/m/g$a;->c:[B

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lg/m/g$a;->get(I)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lg/m/g$a;->b(B)I

    move-result p1

    return p1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lg/m/g$a;->c:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lg/m/g$a;->c(B)I

    move-result p1

    return p1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method
