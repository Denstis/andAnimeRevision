###### Class h.b0 (h.b0)
.class public abstract Lh/b0;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lh/v;Li/f;)Lh/b0;
    .registers 3

    new-instance v0, Lh/b0$a;

    invoke-direct {v0, p0, p1}, Lh/b0$a;-><init>(Lh/v;Li/f;)V

    return-object v0
.end method

.method public static a(Lh/v;[B)Lh/b0;
    .registers 4

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lh/b0;->a(Lh/v;[BII)Lh/b0;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lh/v;[BII)Lh/b0;
    .registers 11

    if-eqz p1, :cond_f

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lh/h0/c;->a(JJJ)V

    new-instance v0, Lh/b0$b;

    invoke-direct {v0, p0, p3, p1, p2}, Lh/b0$b;-><init>(Lh/v;I[BI)V

    return-object v0

    :cond_f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract a(Li/d;)V
.end method

.method public abstract b()Lh/v;
.end method

###### Class h.b0.a (h.b0$a)
.class final Lh/b0$a;
.super Lh/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/b0;->a(Lh/v;Li/f;)Lh/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh/v;

.field final synthetic b:Li/f;


# direct methods
.method constructor <init>(Lh/v;Li/f;)V
    .registers 3

    iput-object p1, p0, Lh/b0$a;->a:Lh/v;

    iput-object p2, p0, Lh/b0$a;->b:Li/f;

    invoke-direct {p0}, Lh/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-object v0, p0, Lh/b0$a;->b:Li/f;

    invoke-virtual {v0}, Li/f;->e()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Li/d;)V
    .registers 3

    iget-object v0, p0, Lh/b0$a;->b:Li/f;

    invoke-interface {p1, v0}, Li/d;->a(Li/f;)Li/d;

    return-void
.end method

.method public b()Lh/v;
    .registers 2

    iget-object v0, p0, Lh/b0$a;->a:Lh/v;

    return-object v0
.end method

###### Class h.b0.b (h.b0$b)
.class final Lh/b0$b;
.super Lh/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/b0;->a(Lh/v;[BII)Lh/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh/v;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lh/v;I[BI)V
    .registers 5

    iput-object p1, p0, Lh/b0$b;->a:Lh/v;

    iput p2, p0, Lh/b0$b;->b:I

    iput-object p3, p0, Lh/b0$b;->c:[B

    iput p4, p0, Lh/b0$b;->d:I

    invoke-direct {p0}, Lh/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget v0, p0, Lh/b0$b;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Li/d;)V
    .registers 5

    iget-object v0, p0, Lh/b0$b;->c:[B

    iget v1, p0, Lh/b0$b;->d:I

    iget v2, p0, Lh/b0$b;->b:I

    invoke-interface {p1, v0, v1, v2}, Li/d;->write([BII)Li/d;

    return-void
.end method

.method public b()Lh/v;
    .registers 2

    iget-object v0, p0, Lh/b0$b;->a:Lh/v;

    return-object v0
.end method
