###### Class h.t (h.t)
.class public final Lh/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/t$a;
    }
.end annotation


# static fields
.field private static final j:[C


# instance fields
.field final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lh/t;->j:[C

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

.method constructor <init>(Lh/t$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lh/t$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lh/t;->a:Ljava/lang/String;

    iget-object v0, p1, Lh/t$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh/t;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/t;->b:Ljava/lang/String;

    iget-object v0, p1, Lh/t$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/t;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/t;->c:Ljava/lang/String;

    iget-object v0, p1, Lh/t$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lh/t;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lh/t$a;->b()I

    move-result v0

    iput v0, p0, Lh/t;->e:I

    iget-object v0, p1, Lh/t$a;->f:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lh/t;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lh/t;->f:Ljava/util/List;

    iget-object v0, p1, Lh/t$a;->g:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lh/t;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_36

    :cond_35
    move-object v0, v2

    :goto_36
    iput-object v0, p0, Lh/t;->g:Ljava/util/List;

    iget-object v0, p1, Lh/t$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_40

    invoke-static {v0, v1}, Lh/t;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_40
    iput-object v2, p0, Lh/t;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lh/t$a;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh/t;->i:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 20

    move-object v1, p0

    move v3, p2

    move v2, p1

    :goto_3
    if-ge v2, v3, :cond_59

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v4, 0x20

    if-lt v0, v4, :cond_3a

    const/16 v4, 0x7f

    if-eq v0, v4, :cond_3a

    const/16 v4, 0x80

    if-lt v0, v4, :cond_17

    if-nez p7, :cond_3a

    :cond_17
    move-object v4, p3

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3b

    const/16 v5, 0x25

    if-ne v0, v5, :cond_2d

    if-eqz p4, :cond_3b

    if-eqz p5, :cond_2d

    invoke-static {p0, v2, p2}, Lh/t;->a(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_3b

    :cond_2d
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_34

    if-eqz p6, :cond_34

    goto :goto_3b

    :cond_34
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_3

    :cond_3a
    move-object v4, p3

    :cond_3b
    :goto_3b
    new-instance v10, Li/c;

    invoke-direct {v10}, Li/c;-><init>()V

    move v0, p1

    invoke-virtual {v10, p0, p1, v2}, Li/c;->a(Ljava/lang/String;II)Li/c;

    move-object v0, v10

    move-object v1, p0

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lh/t;->a(Li/c;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V

    invoke-virtual {v10}, Li/c;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_59
    move v0, p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 7

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_25

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_15

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_12

    if-eqz p3, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    :goto_15
    new-instance v1, Li/c;

    invoke-direct {v1}, Li/c;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Li/c;->a(Ljava/lang/String;II)Li/c;

    invoke-static {v1, p0, v0, p2, p3}, Lh/t;->a(Li/c;Ljava/lang/String;IIZ)V

    invoke-virtual {v1}, Li/c;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v8}, Lh/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lh/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lh/t;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_20

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_19

    invoke-static {v3, p2}, Lh/t;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_20
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method static a(Li/c;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
    .registers 16

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_9e

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p5, :cond_1b

    const/16 v2, 0x9

    if-eq v1, v2, :cond_97

    const/16 v2, 0xa

    if-eq v1, v2, :cond_97

    const/16 v2, 0xc

    if-eq v1, v2, :cond_97

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1b

    goto/16 :goto_97

    :cond_1b
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2d

    if-eqz p7, :cond_2d

    if-eqz p5, :cond_26

    const-string v2, "+"

    goto :goto_28

    :cond_26
    const-string v2, "%2B"

    :goto_28
    invoke-virtual {p0, v2}, Li/c;->a(Ljava/lang/String;)Li/c;

    goto/16 :goto_97

    :cond_2d
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_55

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_55

    const/16 v2, 0x80

    if-lt v1, v2, :cond_3d

    if-nez p8, :cond_55

    :cond_3d
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_55

    if-ne v1, v3, :cond_51

    if-eqz p5, :cond_55

    if-eqz p6, :cond_51

    invoke-static {p1, p2, p3}, Lh/t;->a(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_51

    goto :goto_55

    :cond_51
    invoke-virtual {p0, v1}, Li/c;->c(I)Li/c;

    goto :goto_97

    :cond_55
    :goto_55
    if-nez v0, :cond_5c

    new-instance v0, Li/c;

    invoke-direct {v0}, Li/c;-><init>()V

    :cond_5c
    if-eqz p9, :cond_70

    sget-object v2, Lh/h0/c;->i:Ljava/nio/charset/Charset;

    invoke-virtual {p9, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_70

    :cond_67
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v2, p9}, Li/c;->a(Ljava/lang/String;IILjava/nio/charset/Charset;)Li/c;

    goto :goto_73

    :cond_70
    :goto_70
    invoke-virtual {v0, v1}, Li/c;->c(I)Li/c;

    :goto_73
    invoke-virtual {v0}, Li/c;->c()Z

    move-result v2

    if-nez v2, :cond_97

    invoke-virtual {v0}, Li/c;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v3}, Li/c;->writeByte(I)Li/c;

    sget-object v4, Lh/t;->j:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Li/c;->writeByte(I)Li/c;

    sget-object v4, Lh/t;->j:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Li/c;->writeByte(I)Li/c;

    goto :goto_73

    :cond_97
    :goto_97
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto/16 :goto_1

    :cond_9e
    return-void
.end method

.method static a(Li/c;Ljava/lang/String;IIZ)V
    .registers 10

    :goto_0
    if-ge p2, p3, :cond_42

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_2d

    add-int/lit8 v1, p2, 0x2

    if-ge v1, p3, :cond_2d

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lh/h0/c;->a(C)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lh/h0/c;->a(C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_39

    if-eq v3, v4, :cond_39

    shl-int/lit8 p2, v2, 0x4

    add-int/2addr p2, v3

    invoke-virtual {p0, p2}, Li/c;->writeByte(I)Li/c;

    move p2, v1

    goto :goto_3c

    :cond_2d
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_39

    if-eqz p4, :cond_39

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Li/c;->writeByte(I)Li/c;

    goto :goto_3c

    :cond_39
    invoke-virtual {p0, v0}, Li/c;->c(I)Li/c;

    :goto_3c
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_42
    return-void
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v1, :cond_1c

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_29

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_2c
    return-void
.end method

.method static a(Ljava/lang/String;II)Z
    .registers 6

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ge v0, p2, :cond_24

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x25

    if-ne p2, v2, :cond_24

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lh/h0/c;->a(C)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_24

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lh/h0/c;->a(C)I

    move-result p0

    if-eq p0, p2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method

.method static b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    return-void
.end method

.method public static c(Ljava/lang/String;)I
    .registers 2

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x50

    return p0

    :cond_b
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, 0x1bb

    return p0

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method public static d(Ljava/lang/String;)Lh/t;
    .registers 4

    new-instance v0, Lh/t$a;

    invoke-direct {v0}, Lh/t$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lh/t$a;->a(Lh/t;Ljava/lang/String;)Lh/t$a$a;

    move-result-object p0

    sget-object v2, Lh/t$a$a;->b:Lh/t$a$a;

    if-ne p0, v2, :cond_12

    invoke-virtual {v0}, Lh/t$a;->a()Lh/t;

    move-result-object v1

    :cond_12
    return-object v1
.end method

.method static e(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_40

    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_19
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_32

    if-le v4, v2, :cond_24

    goto :goto_32

    :cond_24
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    :cond_32
    :goto_32
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_3a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    :cond_40
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lh/t$a;
    .registers 4

    new-instance v0, Lh/t$a;

    invoke-direct {v0}, Lh/t$a;-><init>()V

    invoke-virtual {v0, p0, p1}, Lh/t$a;->a(Lh/t;Ljava/lang/String;)Lh/t$a$a;

    move-result-object p1

    sget-object v1, Lh/t$a$a;->b:Lh/t$a$a;

    if-ne p1, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lh/t;->h:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lh/t;->i:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lh/t;
    .registers 2

    invoke-virtual {p0, p1}, Lh/t;->a(Ljava/lang/String;)Lh/t$a;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lh/t$a;->a()Lh/t;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lh/t;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    iget-object v0, p0, Lh/t;->i:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lh/t;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lh/t;->i:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lh/t;->i:Ljava/lang/String;

    iget-object v1, p0, Lh/t;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lh/h0/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/t;->i:Ljava/lang/String;

    iget-object v1, p0, Lh/t;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v0, v3, v4}, Lh/h0/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_21
    if-ge v0, v1, :cond_36

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lh/t;->i:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lh/h0/c;->a(Ljava/lang/String;IIC)I

    move-result v4

    iget-object v5, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_21

    :cond_36
    return-object v3
.end method

.method public e()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lh/t;->g:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lh/t;->i:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v1, v0, v2, v3}, Lh/h0/c;->a(Ljava/lang/String;IIC)I

    move-result v1

    iget-object v2, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lh/t;

    if-eqz v0, :cond_12

    check-cast p1, Lh/t;

    iget-object p1, p1, Lh/t;->i:Ljava/lang/String;

    iget-object v0, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public f()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lh/t;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    iget-object v0, p0, Lh/t;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lh/h0/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .registers 3

    iget-object v0, p0, Lh/t;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lh/t;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lh/t$a;
    .registers 4

    new-instance v0, Lh/t$a;

    invoke-direct {v0}, Lh/t$a;-><init>()V

    iget-object v1, p0, Lh/t;->a:Ljava/lang/String;

    iput-object v1, v0, Lh/t$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lh/t;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh/t$a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lh/t;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh/t$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lh/t;->d:Ljava/lang/String;

    iput-object v1, v0, Lh/t$a;->d:Ljava/lang/String;

    iget v1, p0, Lh/t;->e:I

    iget-object v2, p0, Lh/t;->a:Ljava/lang/String;

    invoke-static {v2}, Lh/t;->c(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_26

    iget v1, p0, Lh/t;->e:I

    goto :goto_27

    :cond_26
    const/4 v1, -0x1

    :goto_27
    iput v1, v0, Lh/t$a;->e:I

    iget-object v1, v0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lh/t$a;->f:Ljava/util/List;

    invoke-virtual {p0}, Lh/t;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lh/t;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/t$a;->a(Ljava/lang/String;)Lh/t$a;

    invoke-virtual {p0}, Lh/t;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh/t$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lh/t;->f:Ljava/util/List;

    return-object v0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lh/t;->e:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lh/t;->g:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh/t;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lh/t;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 3

    const-string v0, "/..."

    invoke-virtual {p0, v0}, Lh/t;->a(Ljava/lang/String;)Lh/t$a;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lh/t$a;->e(Ljava/lang/String;)Lh/t$a;

    invoke-virtual {v0, v1}, Lh/t$a;->c(Ljava/lang/String;)Lh/t$a;

    invoke-virtual {v0}, Lh/t$a;->a()Lh/t;

    move-result-object v0

    invoke-virtual {v0}, Lh/t;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/net/URI;
    .registers 5

    invoke-virtual {p0}, Lh/t;->i()Lh/t$a;

    move-result-object v0

    invoke-virtual {v0}, Lh/t$a;->c()Lh/t$a;

    invoke-virtual {v0}, Lh/t$a;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_b
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_10} :catch_11

    return-object v1

    :catch_11
    move-exception v1

    :try_start_12
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/t;->i:Ljava/lang/String;

    return-object v0
.end method

###### Class h.t.a (h.t$a)
.class public final Lh/t$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/t$a$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:I

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lh/t$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lh/t$a;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lh/t$a;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lh/t$a;->f:Ljava/util/List;

    iget-object v1, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lh/t;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh/h0/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;IIZZ)V
    .registers 15

    const-string v3, " \"<>^`{}|/\\?#"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    invoke-static/range {v0 .. v8}, Lh/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lh/t$a;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_15

    return-void

    :cond_15
    invoke-direct {p0, p1}, Lh/t$a;->g(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    invoke-direct {p0}, Lh/t$a;->d()V

    return-void

    :cond_1f
    iget-object p2, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3f

    iget-object p2, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {p2, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    :cond_3f
    iget-object p2, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_44
    if-eqz p4, :cond_4d

    iget-object p1, p0, Lh/t$a;->f:Ljava/util/List;

    const-string p2, ""

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    return-void
.end method

.method private static b(Ljava/lang/String;II)I
    .registers 13

    const/4 v0, -0x1

    :try_start_1
    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-static/range {v1 .. v9}, Lh/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_13} :catch_1b

    if-lez p0, :cond_1b

    const p1, 0xffff

    if-gt p0, p1, :cond_1b

    return p0

    :catch_1b
    :cond_1b
    return v0
.end method

.method private static c(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_1f

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_f

    goto :goto_1b

    :cond_f
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_f

    :cond_1b
    :goto_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1e
    return p1

    :cond_1f
    return p2
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f

    :cond_2a
    iget-object v0, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2f
    return-void
.end method

.method private d(Ljava/lang/String;II)V
    .registers 14

    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    const-string v2, ""

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_13

    goto :goto_1e

    :cond_13
    iget-object v0, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_29
    :goto_29
    move v6, p2

    if-ge v6, p3, :cond_44

    const-string p2, "/\\"

    invoke-static {p1, v6, p3, p2}, Lh/h0/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result p2

    if-ge p2, p3, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    const/4 v9, 0x1

    move-object v4, p0

    move-object v5, p1

    move v7, p2

    move v8, v0

    invoke-direct/range {v4 .. v9}, Lh/t$a;->a(Ljava/lang/String;IIZZ)V

    if-eqz v0, :cond_29

    :goto_41
    add-int/lit8 p2, p2, 0x1

    goto :goto_29

    :cond_44
    return-void
.end method

.method private static e(Ljava/lang/String;II)I
    .registers 10

    sub-int v0, p2, p1

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5a

    const/16 v3, 0x7a

    const/16 v4, 0x41

    const/16 v5, 0x61

    if-lt v0, v5, :cond_17

    if-le v0, v3, :cond_1c

    :cond_17
    if-lt v0, v4, :cond_46

    if-le v0, v2, :cond_1c

    goto :goto_46

    :cond_1c
    :goto_1c
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_46

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v5, :cond_28

    if-le v0, v3, :cond_1c

    :cond_28
    if-lt v0, v4, :cond_2c

    if-le v0, v2, :cond_1c

    :cond_2c
    const/16 v6, 0x30

    if-lt v0, v6, :cond_34

    const/16 v6, 0x39

    if-le v0, v6, :cond_1c

    :cond_34
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2d

    if-eq v0, v6, :cond_1c

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_41

    goto :goto_1c

    :cond_41
    const/16 p0, 0x3a

    if-ne v0, p0, :cond_46

    return p1

    :cond_46
    :goto_46
    return v1
.end method

.method private static f(Ljava/lang/String;II)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge p1, p2, :cond_14

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_f

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_14

    :cond_f
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_14
    return v0
.end method

.method private f(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private g(Ljava/lang/String;)Z
    .registers 3

    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "%2e."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ".%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "%2e%2e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1
.end method


# virtual methods
.method a(Lh/t;Ljava/lang/String;)Lh/t$a$a;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v10, v8, v2}, Lh/h0/c;->b(Ljava/lang/String;II)I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v10, v9, v2}, Lh/h0/c;->c(Ljava/lang/String;II)I

    move-result v11

    invoke-static {v10, v9, v11}, Lh/t$a;->e(Ljava/lang/String;II)I

    move-result v2

    const/4 v12, -0x1

    if-eq v2, v12, :cond_4b

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    const-string v5, "https:"

    move-object/from16 v2, p2

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "https"

    iput-object v2, v0, Lh/t$a;->a:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x6

    goto :goto_51

    :cond_33
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-string v5, "http:"

    move-object/from16 v2, p2

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v2, "http"

    iput-object v2, v0, Lh/t$a;->a:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x5

    goto :goto_51

    :cond_48
    sget-object v1, Lh/t$a$a;->d:Lh/t$a$a;

    return-object v1

    :cond_4b
    if-eqz v1, :cond_1c2

    iget-object v2, v1, Lh/t;->a:Ljava/lang/String;

    iput-object v2, v0, Lh/t$a;->a:Ljava/lang/String;

    :goto_51
    invoke-static {v10, v9, v11}, Lh/t$a;->f(Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x2

    const/16 v13, 0x3f

    const/16 v14, 0x23

    if-ge v2, v3, :cond_9d

    if-eqz v1, :cond_9d

    iget-object v3, v1, Lh/t;->a:Ljava/lang/String;

    iget-object v4, v0, Lh/t$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    goto :goto_9d

    :cond_69
    invoke-virtual/range {p1 .. p1}, Lh/t;->f()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lh/t$a;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lh/t;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lh/t$a;->c:Ljava/lang/String;

    iget-object v2, v1, Lh/t;->d:Ljava/lang/String;

    iput-object v2, v0, Lh/t$a;->d:Ljava/lang/String;

    iget v2, v1, Lh/t;->e:I

    iput v2, v0, Lh/t$a;->e:I

    iget-object v2, v0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lh/t$a;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lh/t;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v9, v11, :cond_93

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v14, :cond_9a

    :cond_93
    invoke-virtual/range {p1 .. p1}, Lh/t;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/t$a;->a(Ljava/lang/String;)Lh/t$a;

    :cond_9a
    move v13, v9

    goto/16 :goto_173

    :cond_9d
    :goto_9d
    add-int/2addr v9, v2

    move v2, v9

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_a3
    const-string v1, "@/\\?#"

    invoke-static {v10, v2, v11, v1}, Lh/h0/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_b0

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b1

    :cond_b0
    const/4 v1, -0x1

    :goto_b1
    if-eq v1, v12, :cond_148

    if-eq v1, v14, :cond_148

    const/16 v3, 0x2f

    if-eq v1, v3, :cond_148

    const/16 v3, 0x5c

    if-eq v1, v3, :cond_148

    if-eq v1, v13, :cond_148

    const/16 v3, 0x40

    if-eq v1, v3, :cond_c5

    goto/16 :goto_142

    :cond_c5
    const-string v8, "%40"

    if-nez v16, :cond_11a

    const/16 v1, 0x3a

    invoke-static {v10, v2, v9, v1}, Lh/h0/c;->a(Ljava/lang/String;IIC)I

    move-result v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v7

    move v15, v7

    move/from16 v7, v18

    move-object v14, v8

    move/from16 v8, v19

    move v13, v9

    move-object/from16 v9, v20

    invoke-static/range {v1 .. v9}, Lh/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    if-eqz v17, :cond_ff

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lh/t$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_ff
    iput-object v1, v0, Lh/t$a;->b:Ljava/lang/String;

    if-eq v15, v13, :cond_117

    add-int/lit8 v2, v15, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v13

    invoke-static/range {v1 .. v9}, Lh/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh/t$a;->c:Ljava/lang/String;

    const/16 v16, 0x1

    :cond_117
    const/16 v17, 0x1

    goto :goto_140

    :cond_11a
    move-object v14, v8

    move v13, v9

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lh/t$a;->c:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v13

    invoke-static/range {v1 .. v9}, Lh/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh/t$a;->c:Ljava/lang/String;

    :goto_140
    add-int/lit8 v2, v13, 0x1

    :goto_142
    const/16 v13, 0x3f

    const/16 v14, 0x23

    goto/16 :goto_a3

    :cond_148
    move v13, v9

    invoke-static {v10, v2, v13}, Lh/t$a;->c(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    invoke-static {v10, v2, v1}, Lh/t$a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh/t$a;->d:Ljava/lang/String;

    if-ge v3, v13, :cond_164

    invoke-static {v10, v3, v13}, Lh/t$a;->b(Ljava/lang/String;II)I

    move-result v1

    iput v1, v0, Lh/t$a;->e:I

    iget v1, v0, Lh/t$a;->e:I

    if-ne v1, v12, :cond_16c

    sget-object v1, Lh/t$a$a;->e:Lh/t$a$a;

    return-object v1

    :cond_164
    iget-object v1, v0, Lh/t$a;->a:Ljava/lang/String;

    invoke-static {v1}, Lh/t;->c(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lh/t$a;->e:I

    :cond_16c
    iget-object v1, v0, Lh/t$a;->d:Ljava/lang/String;

    if-nez v1, :cond_173

    sget-object v1, Lh/t$a$a;->f:Lh/t$a$a;

    return-object v1

    :cond_173
    :goto_173
    const-string v1, "?#"

    invoke-static {v10, v13, v11, v1}, Lh/h0/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    invoke-direct {v0, v10, v13, v1}, Lh/t$a;->d(Ljava/lang/String;II)V

    if-ge v1, v11, :cond_1a3

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1a3

    const/16 v2, 0x23

    invoke-static {v10, v1, v11, v2}, Lh/h0/c;->a(Ljava/lang/String;IIC)I

    move-result v12

    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\'<>#"

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lh/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lh/t;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lh/t$a;->g:Ljava/util/List;

    move v1, v12

    :cond_1a3
    if-ge v1, v11, :cond_1bf

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1bf

    const/4 v2, 0x1

    add-int/2addr v2, v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, ""

    move-object/from16 v1, p2

    move v3, v11

    invoke-static/range {v1 .. v9}, Lh/t;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lh/t$a;->h:Ljava/lang/String;

    :cond_1bf
    sget-object v1, Lh/t$a$a;->b:Lh/t$a$a;

    return-object v1

    :cond_1c2
    sget-object v1, Lh/t$a$a;->c:Lh/t$a$a;

    return-object v1
.end method

.method public a(I)Lh/t$a;
    .registers 5

    if-lez p1, :cond_a

    const v0, 0xffff

    if-gt p1, v0, :cond_a

    iput p1, p0, Lh/t$a;->e:I

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lh/t$a;
    .registers 8

    if-eqz p1, :cond_12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " \"\'<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh/t;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-object p1, p0, Lh/t$a;->g:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lh/t$a;
    .registers 10

    if-eqz p1, :cond_32

    iget-object v0, p0, Lh/t$a;->g:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/t$a;->g:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Lh/t$a;->g:Ljava/util/List;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " \"\'<>#&="

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lh/t$a;->g:Ljava/util/List;

    if-eqz p2, :cond_2d

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " \"\'<>#&="

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    :goto_2e
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_32
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "encodedName == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lh/t;
    .registers 3

    iget-object v0, p0, Lh/t$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lh/t$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_e

    new-instance v0, Lh/t;

    invoke-direct {v0, p0}, Lh/t;-><init>(Lh/t$a;)V

    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()I
    .registers 3

    iget v0, p0, Lh/t$a;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lh/t$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lh/t;->c(Ljava/lang/String;)I

    move-result v0

    :goto_c
    return v0
.end method

.method public b(Ljava/lang/String;)Lh/t$a;
    .registers 5

    if-eqz p1, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lh/t$a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iput-object v0, p0, Lh/t$a;->d:Ljava/lang/String;

    return-object p0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "host == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lh/t$a;
    .registers 10

    if-eqz p1, :cond_32

    iget-object v0, p0, Lh/t$a;->g:Ljava/util/List;

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lh/t$a;->g:Ljava/util/List;

    :cond_d
    iget-object v0, p0, Lh/t$a;->g:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v2, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lh/t$a;->g:Ljava/util/List;

    if-eqz p2, :cond_2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    goto :goto_2e

    :cond_2d
    const/4 p2, 0x0

    :goto_2e
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_32
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method c()Lh/t$a;
    .registers 11

    iget-object v0, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_25

    iget-object v3, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v3, p0, Lh/t$a;->f:Ljava/util/List;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v5, "[]"

    invoke-static/range {v4 .. v9}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_25
    iget-object v0, p0, Lh/t$a;->g:Ljava/util/List;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2d
    if-ge v1, v0, :cond_4c

    iget-object v2, p0, Lh/t$a;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_49

    iget-object v2, p0, Lh/t$a;->g:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v4, "\\^`{|}"

    invoke-static/range {v3 .. v8}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_4c
    iget-object v2, p0, Lh/t$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_5c

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, " \"#<>\\^`{|}"

    invoke-static/range {v2 .. v7}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/t$a;->h:Ljava/lang/String;

    :cond_5c
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lh/t$a;
    .registers 8

    if-eqz p1, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh/t$a;->c:Ljava/lang/String;

    return-object p0

    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "password == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;)Lh/t$a;
    .registers 5

    if-eqz p1, :cond_2e

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_a
    iput-object v0, p0, Lh/t$a;->a:Ljava/lang/String;

    goto :goto_16

    :cond_d
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_a

    :goto_16
    return-object p0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "scheme == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_37

    :goto_36
    throw p1

    :goto_37
    goto :goto_36
.end method

.method public e(Ljava/lang/String;)Lh/t$a;
    .registers 8

    if-eqz p1, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lh/t;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lh/t$a;->b:Ljava/lang/String;

    return-object p0

    :cond_10
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "username == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh/t$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/t$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_21

    iget-object v1, p0, Lh/t$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_21
    iget-object v1, p0, Lh/t$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/t$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/t$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3b
    iget-object v1, p0, Lh/t$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_54

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/t$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_59

    :cond_54
    iget-object v1, p0, Lh/t$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_59
    invoke-virtual {p0}, Lh/t$a;->b()I

    move-result v1

    iget-object v3, p0, Lh/t$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lh/t;->c(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_6b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6b
    iget-object v1, p0, Lh/t$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lh/t;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lh/t$a;->g:Ljava/util/List;

    if-eqz v1, :cond_7e

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/t$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lh/t;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_7e
    iget-object v1, p0, Lh/t$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_8c

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh/t$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class h.t.a.EnumC0192a (h.t$a$a)
.class final enum Lh/t$a$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh/t$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lh/t$a$a;

.field public static final enum c:Lh/t$a$a;

.field public static final enum d:Lh/t$a$a;

.field public static final enum e:Lh/t$a$a;

.field public static final enum f:Lh/t$a$a;

.field private static final synthetic g:[Lh/t$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lh/t$a$a;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lh/t$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/t$a$a;->b:Lh/t$a$a;

    new-instance v0, Lh/t$a$a;

    const/4 v2, 0x1

    const-string v3, "MISSING_SCHEME"

    invoke-direct {v0, v3, v2}, Lh/t$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/t$a$a;->c:Lh/t$a$a;

    new-instance v0, Lh/t$a$a;

    const/4 v3, 0x2

    const-string v4, "UNSUPPORTED_SCHEME"

    invoke-direct {v0, v4, v3}, Lh/t$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/t$a$a;->d:Lh/t$a$a;

    new-instance v0, Lh/t$a$a;

    const/4 v4, 0x3

    const-string v5, "INVALID_PORT"

    invoke-direct {v0, v5, v4}, Lh/t$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/t$a$a;->e:Lh/t$a$a;

    new-instance v0, Lh/t$a$a;

    const/4 v5, 0x4

    const-string v6, "INVALID_HOST"

    invoke-direct {v0, v6, v5}, Lh/t$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lh/t$a$a;->f:Lh/t$a$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lh/t$a$a;

    sget-object v6, Lh/t$a$a;->b:Lh/t$a$a;

    aput-object v6, v0, v1

    sget-object v1, Lh/t$a$a;->c:Lh/t$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lh/t$a$a;->d:Lh/t$a$a;

    aput-object v1, v0, v3

    sget-object v1, Lh/t$a$a;->e:Lh/t$a$a;

    aput-object v1, v0, v4

    sget-object v1, Lh/t$a$a;->f:Lh/t$a$a;

    aput-object v1, v0, v5

    sput-object v0, Lh/t$a$a;->g:[Lh/t$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh/t$a$a;
    .registers 2

    const-class v0, Lh/t$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh/t$a$a;

    return-object p0
.end method

.method public static values()[Lh/t$a$a;
    .registers 1

    sget-object v0, Lh/t$a$a;->g:[Lh/t$a$a;

    invoke-virtual {v0}, [Lh/t$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh/t$a$a;

    return-object v0
.end method
