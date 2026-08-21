###### Class h.d (h.d)
.class public final Lh/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/d$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:I

.field private final d:I

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:I

.field private final i:I

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lh/d$a;

    invoke-direct {v0}, Lh/d$a;-><init>()V

    invoke-virtual {v0}, Lh/d$a;->b()Lh/d$a;

    invoke-virtual {v0}, Lh/d$a;->a()Lh/d;

    new-instance v0, Lh/d$a;

    invoke-direct {v0}, Lh/d$a;-><init>()V

    invoke-virtual {v0}, Lh/d$a;->c()Lh/d$a;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Lh/d$a;->a(ILjava/util/concurrent/TimeUnit;)Lh/d$a;

    invoke-virtual {v0}, Lh/d$a;->a()Lh/d;

    return-void
.end method

.method constructor <init>(Lh/d$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lh/d$a;->a:Z

    iput-boolean v0, p0, Lh/d;->a:Z

    iget-boolean v0, p1, Lh/d$a;->b:Z

    iput-boolean v0, p0, Lh/d;->b:Z

    iget v0, p1, Lh/d$a;->c:I

    iput v0, p0, Lh/d;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lh/d;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/d;->e:Z

    iput-boolean v0, p0, Lh/d;->f:Z

    iput-boolean v0, p0, Lh/d;->g:Z

    iget v0, p1, Lh/d$a;->d:I

    iput v0, p0, Lh/d;->h:I

    iget v0, p1, Lh/d$a;->e:I

    iput v0, p0, Lh/d;->i:I

    iget-boolean v0, p1, Lh/d$a;->f:Z

    iput-boolean v0, p0, Lh/d;->j:Z

    iget-boolean v0, p1, Lh/d$a;->g:Z

    iput-boolean v0, p0, Lh/d;->k:Z

    iget-boolean p1, p1, Lh/d$a;->h:Z

    iput-boolean p1, p0, Lh/d;->l:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lh/d;->a:Z

    iput-boolean p2, p0, Lh/d;->b:Z

    iput p3, p0, Lh/d;->c:I

    iput p4, p0, Lh/d;->d:I

    iput-boolean p5, p0, Lh/d;->e:Z

    iput-boolean p6, p0, Lh/d;->f:Z

    iput-boolean p7, p0, Lh/d;->g:Z

    iput p8, p0, Lh/d;->h:I

    iput p9, p0, Lh/d;->i:I

    iput-boolean p10, p0, Lh/d;->j:Z

    iput-boolean p11, p0, Lh/d;->k:Z

    iput-boolean p12, p0, Lh/d;->l:Z

    iput-object p13, p0, Lh/d;->m:Ljava/lang/String;

    return-void
.end method

.method public static a(Lh/s;)Lh/d;
    .registers 23

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lh/s;->b()I

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_1a
    if-ge v6, v1, :cond_146

    invoke-virtual {v0, v6}, Lh/s;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Lh/s;->b(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "Cache-Control"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    if-eqz v8, :cond_2f

    goto :goto_39

    :cond_2f
    move-object v8, v4

    goto :goto_3a

    :cond_31
    const-string v3, "Pragma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13f

    :goto_39
    const/4 v7, 0x0

    :goto_3a
    const/4 v2, 0x0

    :goto_3b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_13f

    const-string v3, "=,;"

    invoke-static {v4, v2, v3}, Lh/h0/g/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_99

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x2c

    if-eq v5, v0, :cond_99

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3b

    if-ne v0, v5, :cond_66

    goto :goto_99

    :cond_66
    add-int/lit8 v3, v3, 0x1

    invoke-static {v4, v3}, Lh/h0/g/e;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_89

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x22

    if-ne v3, v5, :cond_89

    add-int/lit8 v0, v0, 0x1

    const-string v3, "\""

    invoke-static {v4, v0, v3}, Lh/h0/g/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    add-int/2addr v3, v5

    goto :goto_9d

    :cond_89
    const/4 v5, 0x1

    const-string v3, ",;"

    invoke-static {v4, v0, v3}, Lh/h0/g/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_9d

    :cond_99
    :goto_99
    const/4 v5, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    :goto_9d
    const-string v5, "no-cache"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a9

    const/4 v5, -0x1

    const/4 v9, 0x1

    goto/16 :goto_13a

    :cond_a9
    const-string v5, "no-store"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    const/4 v5, -0x1

    const/4 v10, 0x1

    goto/16 :goto_13a

    :cond_b5
    const-string v5, "max-age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c5

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lh/h0/g/e;->a(Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    goto/16 :goto_13a

    :cond_c5
    const-string v5, "s-maxage"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lh/h0/g/e;->a(Ljava/lang/String;I)I

    move-result v0

    move v12, v0

    goto/16 :goto_13a

    :cond_d5
    const-string v5, "private"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e0

    const/4 v5, -0x1

    const/4 v13, 0x1

    goto :goto_13a

    :cond_e0
    const-string v5, "public"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_eb

    const/4 v5, -0x1

    const/4 v14, 0x1

    goto :goto_13a

    :cond_eb
    const-string v5, "must-revalidate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f6

    const/4 v5, -0x1

    const/4 v15, 0x1

    goto :goto_13a

    :cond_f6
    const-string v5, "max-stale"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_109

    const v2, 0x7fffffff

    invoke-static {v0, v2}, Lh/h0/g/e;->a(Ljava/lang/String;I)I

    move-result v0

    move/from16 v16, v0

    const/4 v5, -0x1

    goto :goto_13a

    :cond_109
    const-string v5, "min-fresh"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_119

    const/4 v5, -0x1

    invoke-static {v0, v5}, Lh/h0/g/e;->a(Ljava/lang/String;I)I

    move-result v0

    move/from16 v17, v0

    goto :goto_13a

    :cond_119
    const/4 v5, -0x1

    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    const/16 v18, 0x1

    goto :goto_13a

    :cond_125
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_130

    const/16 v19, 0x1

    goto :goto_13a

    :cond_130
    const-string v0, "immutable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    const/16 v20, 0x1

    :cond_13a
    :goto_13a
    move-object/from16 v0, p0

    move v2, v3

    goto/16 :goto_3b

    :cond_13f
    const/4 v5, -0x1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1a

    :cond_146
    if-nez v7, :cond_14b

    const/16 v21, 0x0

    goto :goto_14d

    :cond_14b
    move-object/from16 v21, v8

    :goto_14d
    new-instance v0, Lh/d;

    move-object v8, v0

    invoke-direct/range {v8 .. v21}, Lh/d;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lh/d;->a:Z

    if-eqz v1, :cond_e

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-boolean v1, p0, Lh/d;->b:Z

    if-eqz v1, :cond_17

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget v1, p0, Lh/d;->c:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    iget v1, p0, Lh/d;->d:I

    if-eq v1, v3, :cond_3c

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    iget-boolean v1, p0, Lh/d;->e:Z

    if-eqz v1, :cond_45

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    iget-boolean v1, p0, Lh/d;->f:Z

    if-eqz v1, :cond_4e

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4e
    iget-boolean v1, p0, Lh/d;->g:Z

    if-eqz v1, :cond_57

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    iget v1, p0, Lh/d;->h:I

    if-eq v1, v3, :cond_68

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/d;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_68
    iget v1, p0, Lh/d;->i:I

    if-eq v1, v3, :cond_79

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    iget-boolean v1, p0, Lh/d;->j:Z

    if-eqz v1, :cond_82

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_82
    iget-boolean v1, p0, Lh/d;->k:Z

    if-eqz v1, :cond_8b

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8b
    iget-boolean v1, p0, Lh/d;->l:Z

    if-eqz v1, :cond_94

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9d

    const-string v0, ""

    return-object v0

    :cond_9d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lh/d;->l:Z

    return v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lh/d;->e:Z

    return v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lh/d;->f:Z

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lh/d;->c:I

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lh/d;->h:I

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lh/d;->i:I

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lh/d;->g:Z

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lh/d;->a:Z

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lh/d;->b:Z

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lh/d;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lh/d;->m:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    invoke-direct {p0}, Lh/d;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh/d;->m:Ljava/lang/String;

    :goto_b
    return-object v0
.end method

###### Class h.d.a (h.d$a)
.class public final Lh/d$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:I

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh/d$a;->c:I

    iput v0, p0, Lh/d$a;->d:I

    iput v0, p0, Lh/d$a;->e:I

    return-void
.end method


# virtual methods
.method public a(ILjava/util/concurrent/TimeUnit;)Lh/d$a;
    .registers 6

    if-ltz p1, :cond_16

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_12

    const p1, 0x7fffffff

    goto :goto_13

    :cond_12
    long-to-int p1, p1

    :goto_13
    iput p1, p0, Lh/d$a;->d:I

    return-object p0

    :cond_16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maxStale < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a()Lh/d;
    .registers 2

    new-instance v0, Lh/d;

    invoke-direct {v0, p0}, Lh/d;-><init>(Lh/d$a;)V

    return-object v0
.end method

.method public b()Lh/d$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/d$a;->a:Z

    return-object p0
.end method

.method public c()Lh/d$a;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/d$a;->f:Z

    return-object p0
.end method
