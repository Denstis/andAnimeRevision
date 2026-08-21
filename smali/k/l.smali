###### Class k.l (k.l)
.class final Lk/l;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/l$a;
    }
.end annotation


# static fields
.field private static final k:[C


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lh/t;

.field private c:Ljava/lang/String;

.field private d:Lh/t$a;

.field private final e:Lh/a0$a;

.field private f:Lh/v;

.field private final g:Z

.field private h:Lh/w$a;

.field private i:Lh/q$a;

.field private j:Lh/b0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lk/l;->k:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lh/t;Ljava/lang/String;Lh/s;Lh/v;ZZZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lk/l;->b:Lh/t;

    iput-object p3, p0, Lk/l;->c:Ljava/lang/String;

    new-instance p1, Lh/a0$a;

    invoke-direct {p1}, Lh/a0$a;-><init>()V

    iput-object p1, p0, Lk/l;->e:Lh/a0$a;

    iput-object p5, p0, Lk/l;->f:Lh/v;

    iput-boolean p6, p0, Lk/l;->g:Z

    if-eqz p4, :cond_1b

    iget-object p1, p0, Lk/l;->e:Lh/a0$a;

    invoke-virtual {p1, p4}, Lh/a0$a;->a(Lh/s;)Lh/a0$a;

    :cond_1b
    if-eqz p7, :cond_25

    new-instance p1, Lh/q$a;

    invoke-direct {p1}, Lh/q$a;-><init>()V

    iput-object p1, p0, Lk/l;->i:Lh/q$a;

    goto :goto_35

    :cond_25
    if-eqz p8, :cond_35

    new-instance p1, Lh/w$a;

    invoke-direct {p1}, Lh/w$a;-><init>()V

    iput-object p1, p0, Lk/l;->h:Lh/w$a;

    iget-object p1, p0, Lk/l;->h:Lh/w$a;

    sget-object p2, Lh/w;->f:Lh/v;

    invoke-virtual {p1, p2}, Lh/w$a;->a(Lh/v;)Lh/w$a;

    :cond_35
    :goto_35
    return-void
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_3d

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2e

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_2e

    const-string v4, " \"<>^`{}|\\?#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2e

    if-nez p1, :cond_28

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x25

    if-ne v3, v4, :cond_28

    goto :goto_2e

    :cond_28
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6

    :cond_2e
    :goto_2e
    new-instance v3, Li/c;

    invoke-direct {v3}, Li/c;-><init>()V

    invoke-virtual {v3, p0, v1, v2}, Li/c;->a(Ljava/lang/String;II)Li/c;

    invoke-static {v3, p0, v2, v0, p1}, Lk/l;->a(Li/c;Ljava/lang/String;IIZ)V

    invoke-virtual {v3}, Li/c;->q()Ljava/lang/String;

    move-result-object p0

    :cond_3d
    return-object p0
.end method

.method private static a(Li/c;Ljava/lang/String;IIZ)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_6e

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_1a

    const/16 v2, 0x9

    if-eq v1, v2, :cond_68

    const/16 v2, 0xa

    if-eq v1, v2, :cond_68

    const/16 v2, 0xc

    if-eq v1, v2, :cond_68

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1a

    goto :goto_68

    :cond_1a
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_3a

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_3a

    const-string v2, " \"<>^`{}|\\?#"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3a

    if-nez p4, :cond_36

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3a

    if-ne v1, v3, :cond_36

    goto :goto_3a

    :cond_36
    invoke-virtual {p0, v1}, Li/c;->c(I)Li/c;

    goto :goto_68

    :cond_3a
    :goto_3a
    if-nez v0, :cond_41

    new-instance v0, Li/c;

    invoke-direct {v0}, Li/c;-><init>()V

    :cond_41
    invoke-virtual {v0, v1}, Li/c;->c(I)Li/c;

    :goto_44
    invoke-virtual {v0}, Li/c;->c()Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {v0}, Li/c;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v3}, Li/c;->writeByte(I)Li/c;

    sget-object v4, Lk/l;->k:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Li/c;->writeByte(I)Li/c;

    sget-object v4, Lk/l;->k:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Li/c;->writeByte(I)Li/c;

    goto :goto_44

    :cond_68
    :goto_68
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_1

    :cond_6e
    return-void
.end method


# virtual methods
.method a()Lh/a0;
    .registers 6

    iget-object v0, p0, Lk/l;->d:Lh/t$a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lh/t$a;->a()Lh/t;

    move-result-object v0

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lk/l;->b:Lh/t;

    iget-object v1, p0, Lk/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lh/t;->b(Ljava/lang/String;)Lh/t;

    move-result-object v0

    if-eqz v0, :cond_5c

    :goto_13
    iget-object v1, p0, Lk/l;->j:Lh/b0;

    if-nez v1, :cond_35

    iget-object v2, p0, Lk/l;->i:Lh/q$a;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lh/q$a;->a()Lh/q;

    move-result-object v1

    goto :goto_35

    :cond_20
    iget-object v2, p0, Lk/l;->h:Lh/w$a;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Lh/w$a;->a()Lh/w;

    move-result-object v1

    goto :goto_35

    :cond_29
    iget-boolean v2, p0, Lk/l;->g:Z

    if-eqz v2, :cond_35

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-static {v1, v2}, Lh/b0;->a(Lh/v;[B)Lh/b0;

    move-result-object v1

    :cond_35
    :goto_35
    iget-object v2, p0, Lk/l;->f:Lh/v;

    if-eqz v2, :cond_4d

    if-eqz v1, :cond_42

    new-instance v3, Lk/l$a;

    invoke-direct {v3, v1, v2}, Lk/l$a;-><init>(Lh/b0;Lh/v;)V

    move-object v1, v3

    goto :goto_4d

    :cond_42
    iget-object v3, p0, Lk/l;->e:Lh/a0$a;

    invoke-virtual {v2}, Lh/v;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v2}, Lh/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;

    :cond_4d
    :goto_4d
    iget-object v2, p0, Lk/l;->e:Lh/a0$a;

    invoke-virtual {v2, v0}, Lh/a0$a;->a(Lh/t;)Lh/a0$a;

    iget-object v0, p0, Lk/l;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lh/a0$a;->a(Ljava/lang/String;Lh/b0;)Lh/a0$a;

    invoke-virtual {v2}, Lh/a0$a;->a()Lh/a0;

    move-result-object v0

    return-object v0

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk/l;->b:Lh/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lh/b0;)V
    .registers 2

    iput-object p1, p0, Lk/l;->j:Lh/b0;

    return-void
.end method

.method a(Lh/s;Lh/b0;)V
    .registers 4

    iget-object v0, p0, Lk/l;->h:Lh/w$a;

    invoke-virtual {v0, p1, p2}, Lh/w$a;->a(Lh/s;Lh/b0;)Lh/w$a;

    return-void
.end method

.method a(Lh/w$b;)V
    .registers 3

    iget-object v0, p0, Lk/l;->h:Lh/w$a;

    invoke-virtual {v0, p1}, Lh/w$a;->a(Lh/w$b;)Lh/w$a;

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {p2}, Lh/v;->a(Ljava/lang/String;)Lh/v;

    move-result-object p1

    if-eqz p1, :cond_11

    iput-object p1, p0, Lk/l;->f:Lh/v;

    goto :goto_2d

    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    iget-object v0, p0, Lk/l;->e:Lh/a0$a;

    invoke-virtual {v0, p1, p2}, Lh/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lh/a0$a;

    :goto_2d
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    if-eqz p3, :cond_8

    iget-object p3, p0, Lk/l;->i:Lh/q$a;

    invoke-virtual {p3, p1, p2}, Lh/q$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/q$a;

    goto :goto_d

    :cond_8
    iget-object p3, p0, Lk/l;->i:Lh/q$a;

    invoke-virtual {p3, p1, p2}, Lh/q$a;->a(Ljava/lang/String;Ljava/lang/String;)Lh/q$a;

    :goto_d
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    iget-object v0, p0, Lk/l;->c:Ljava/lang/String;

    if-eqz v0, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Lk/l;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk/l;->c:Ljava/lang/String;

    return-void

    :cond_25
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lk/l;->c:Ljava/lang/String;

    if-eqz v0, :cond_37

    iget-object v1, p0, Lk/l;->b:Lh/t;

    invoke-virtual {v1, v0}, Lh/t;->a(Ljava/lang/String;)Lh/t$a;

    move-result-object v0

    iput-object v0, p0, Lk/l;->d:Lh/t$a;

    iget-object v0, p0, Lk/l;->d:Lh/t$a;

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lk/l;->c:Ljava/lang/String;

    goto :goto_37

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed URL. Base: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lk/l;->b:Lh/t;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lk/l;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    :goto_37
    if-eqz p3, :cond_3f

    iget-object p3, p0, Lk/l;->d:Lh/t$a;

    invoke-virtual {p3, p1, p2}, Lh/t$a;->a(Ljava/lang/String;Ljava/lang/String;)Lh/t$a;

    goto :goto_44

    :cond_3f
    iget-object p3, p0, Lk/l;->d:Lh/t$a;

    invoke-virtual {p3, p1, p2}, Lh/t$a;->b(Ljava/lang/String;Ljava/lang/String;)Lh/t$a;

    :goto_44
    return-void
.end method

###### Class k.l.a (k.l$a)
.class Lk/l$a;
.super Lh/b0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lh/b0;

.field private final b:Lh/v;


# direct methods
.method constructor <init>(Lh/b0;Lh/v;)V
    .registers 3

    invoke-direct {p0}, Lh/b0;-><init>()V

    iput-object p1, p0, Lk/l$a;->a:Lh/b0;

    iput-object p2, p0, Lk/l$a;->b:Lh/v;

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-object v0, p0, Lk/l$a;->a:Lh/b0;

    invoke-virtual {v0}, Lh/b0;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Li/d;)V
    .registers 3

    iget-object v0, p0, Lk/l$a;->a:Lh/b0;

    invoke-virtual {v0, p1}, Lh/b0;->a(Li/d;)V

    return-void
.end method

.method public b()Lh/v;
    .registers 2

    iget-object v0, p0, Lk/l$a;->b:Lh/v;

    return-object v0
.end method
