###### Class h.w (h.w)
.class public final Lh/w;
.super Lh/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/w$a;,
        Lh/w$b;
    }
.end annotation


# static fields
.field public static final e:Lh/v;

.field public static final f:Lh/v;

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B


# instance fields
.field private final a:Li/f;

.field private final b:Lh/v;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/w$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lh/v;->a(Ljava/lang/String;)Lh/v;

    move-result-object v0

    sput-object v0, Lh/w;->e:Lh/v;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lh/v;->a(Ljava/lang/String;)Lh/v;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lh/v;->a(Ljava/lang/String;)Lh/v;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lh/v;->a(Ljava/lang/String;)Lh/v;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lh/v;->a(Ljava/lang/String;)Lh/v;

    move-result-object v0

    sput-object v0, Lh/w;->f:Lh/v;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_36

    sput-object v1, Lh/w;->g:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_3c

    sput-object v1, Lh/w;->h:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_42

    sput-object v0, Lh/w;->i:[B

    return-void

    :array_36
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_3c
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_42
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Li/f;Lh/v;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/f;",
            "Lh/v;",
            "Ljava/util/List<",
            "Lh/w$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lh/b0;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lh/w;->d:J

    iput-object p1, p0, Lh/w;->a:Li/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Li/f;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh/v;->a(Ljava/lang/String;)Lh/v;

    move-result-object p1

    iput-object p1, p0, Lh/w;->b:Lh/v;

    invoke-static {p3}, Lh/h0/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lh/w;->c:Ljava/util/List;

    return-void
.end method

.method private a(Li/d;Z)J
    .registers 15

    if-eqz p2, :cond_9

    new-instance p1, Li/c;

    invoke-direct {p1}, Li/c;-><init>()V

    move-object v0, p1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    iget-object v1, p0, Lh/w;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v1, :cond_a7

    iget-object v6, p0, Lh/w;->c:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lh/w$b;

    iget-object v7, v6, Lh/w$b;->a:Lh/s;

    iget-object v6, v6, Lh/w$b;->b:Lh/b0;

    sget-object v8, Lh/w;->i:[B

    invoke-interface {p1, v8}, Li/d;->write([B)Li/d;

    iget-object v8, p0, Lh/w;->a:Li/f;

    invoke-interface {p1, v8}, Li/d;->a(Li/f;)Li/d;

    sget-object v8, Lh/w;->h:[B

    invoke-interface {p1, v8}, Li/d;->write([B)Li/d;

    if-eqz v7, :cond_59

    invoke-virtual {v7}, Lh/s;->b()I

    move-result v8

    const/4 v9, 0x0

    :goto_39
    if-ge v9, v8, :cond_59

    invoke-virtual {v7, v9}, Lh/s;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Li/d;->a(Ljava/lang/String;)Li/d;

    move-result-object v10

    sget-object v11, Lh/w;->g:[B

    invoke-interface {v10, v11}, Li/d;->write([B)Li/d;

    move-result-object v10

    invoke-virtual {v7, v9}, Lh/s;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Li/d;->a(Ljava/lang/String;)Li/d;

    move-result-object v10

    sget-object v11, Lh/w;->h:[B

    invoke-interface {v10, v11}, Li/d;->write([B)Li/d;

    add-int/lit8 v9, v9, 0x1

    goto :goto_39

    :cond_59
    invoke-virtual {v6}, Lh/b0;->b()Lh/v;

    move-result-object v7

    if-eqz v7, :cond_72

    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, Li/d;->a(Ljava/lang/String;)Li/d;

    move-result-object v8

    invoke-virtual {v7}, Lh/v;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Li/d;->a(Ljava/lang/String;)Li/d;

    move-result-object v7

    sget-object v8, Lh/w;->h:[B

    invoke-interface {v7, v8}, Li/d;->write([B)Li/d;

    :cond_72
    invoke-virtual {v6}, Lh/b0;->a()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_8c

    const-string v9, "Content-Length: "

    invoke-interface {p1, v9}, Li/d;->a(Ljava/lang/String;)Li/d;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Li/d;->g(J)Li/d;

    move-result-object v9

    sget-object v10, Lh/w;->h:[B

    invoke-interface {v9, v10}, Li/d;->write([B)Li/d;

    goto :goto_92

    :cond_8c
    if-eqz p2, :cond_92

    invoke-virtual {v0}, Li/c;->l()V

    return-wide v9

    :cond_92
    :goto_92
    sget-object v9, Lh/w;->h:[B

    invoke-interface {p1, v9}, Li/d;->write([B)Li/d;

    if-eqz p2, :cond_9b

    add-long/2addr v4, v7

    goto :goto_9e

    :cond_9b
    invoke-virtual {v6, p1}, Lh/b0;->a(Li/d;)V

    :goto_9e
    sget-object v6, Lh/w;->h:[B

    invoke-interface {p1, v6}, Li/d;->write([B)Li/d;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_15

    :cond_a7
    sget-object v1, Lh/w;->i:[B

    invoke-interface {p1, v1}, Li/d;->write([B)Li/d;

    iget-object v1, p0, Lh/w;->a:Li/f;

    invoke-interface {p1, v1}, Li/d;->a(Li/f;)Li/d;

    sget-object v1, Lh/w;->i:[B

    invoke-interface {p1, v1}, Li/d;->write([B)Li/d;

    sget-object v1, Lh/w;->h:[B

    invoke-interface {p1, v1}, Li/d;->write([B)Li/d;

    if-eqz p2, :cond_c5

    invoke-virtual {v0}, Li/c;->s()J

    move-result-wide p1

    add-long/2addr v4, p1

    invoke-virtual {v0}, Li/c;->l()V

    :cond_c5
    return-wide v4
.end method


# virtual methods
.method public a()J
    .registers 6

    iget-wide v0, p0, Lh/w;->d:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lh/w;->a(Li/d;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lh/w;->d:J

    return-wide v0
.end method

.method public a(Li/d;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/w;->a(Li/d;Z)J

    return-void
.end method

.method public b()Lh/v;
    .registers 2

    iget-object v0, p0, Lh/w;->b:Lh/v;

    return-object v0
.end method

###### Class h.w.a (h.w$a)
.class public final Lh/w$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Li/f;

.field private b:Lh/v;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh/w$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lh/w$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh/w;->e:Lh/v;

    iput-object v0, p0, Lh/w$a;->b:Lh/v;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/w$a;->c:Ljava/util/List;

    invoke-static {p1}, Li/f;->c(Ljava/lang/String;)Li/f;

    move-result-object p1

    iput-object p1, p0, Lh/w$a;->a:Li/f;

    return-void
.end method


# virtual methods
.method public a(Lh/s;Lh/b0;)Lh/w$a;
    .registers 3

    invoke-static {p1, p2}, Lh/w$b;->a(Lh/s;Lh/b0;)Lh/w$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh/w$a;->a(Lh/w$b;)Lh/w$a;

    return-object p0
.end method

.method public a(Lh/v;)Lh/w$a;
    .registers 5

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lh/v;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput-object p1, p0, Lh/w$a;->b:Lh/v;

    return-object p0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "type == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lh/w$b;)Lh/w$a;
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lh/w$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "part == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lh/w;
    .registers 5

    iget-object v0, p0, Lh/w$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Lh/w;

    iget-object v1, p0, Lh/w$a;->a:Li/f;

    iget-object v2, p0, Lh/w$a;->b:Lh/v;

    iget-object v3, p0, Lh/w$a;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lh/w;-><init>(Li/f;Lh/v;Ljava/util/List;)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class h.w.b (h.w$b)
.class public final Lh/w$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Lh/s;

.field final b:Lh/b0;


# direct methods
.method private constructor <init>(Lh/s;Lh/b0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/w$b;->a:Lh/s;

    iput-object p2, p0, Lh/w$b;->b:Lh/b0;

    return-void
.end method

.method public static a(Lh/s;Lh/b0;)Lh/w$b;
    .registers 3

    if-eqz p1, :cond_2e

    if-eqz p0, :cond_15

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lh/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_15

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    if-eqz p0, :cond_28

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lh/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_28

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    :goto_28
    new-instance v0, Lh/w$b;

    invoke-direct {v0, p0, p1}, Lh/w$b;-><init>(Lh/s;Lh/b0;)V

    return-object v0

    :cond_2e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "body == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
