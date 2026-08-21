###### Class g.s.d (g.s.d)
.class final Lg/s/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/r/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/r/a<",
        "Lg/q/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Lg/p/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/p/a/c<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILg/p/a/c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lg/p/a/c<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lg/f<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/s/d;->a:Ljava/lang/CharSequence;

    iput p2, p0, Lg/s/d;->b:I

    iput p3, p0, Lg/s/d;->c:I

    iput-object p4, p0, Lg/s/d;->d:Lg/p/a/c;

    return-void
.end method

.method public static final synthetic a(Lg/s/d;)Lg/p/a/c;
    .registers 1

    iget-object p0, p0, Lg/s/d;->d:Lg/p/a/c;

    return-object p0
.end method

.method public static final synthetic b(Lg/s/d;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lg/s/d;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(Lg/s/d;)I
    .registers 1

    iget p0, p0, Lg/s/d;->c:I

    return p0
.end method

.method public static final synthetic d(Lg/s/d;)I
    .registers 1

    iget p0, p0, Lg/s/d;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lg/q/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lg/s/d$a;

    invoke-direct {v0, p0}, Lg/s/d$a;-><init>(Lg/s/d;)V

    return-object v0
.end method

###### Class g.s.d.a (g.s.d$a)
.class public final Lg/s/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lg/p/b/l/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/s/d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lg/q/d;",
        ">;",
        "Lg/p/b/l/a;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lg/q/d;

.field private f:I

.field final synthetic g:Lg/s/d;


# direct methods
.method constructor <init>(Lg/s/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lg/s/d$a;->g:Lg/s/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/s/d$a;->b:I

    invoke-static {p1}, Lg/s/d;->d(Lg/s/d;)I

    move-result v0

    invoke-static {p1}, Lg/s/d;->b(Lg/s/d;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lg/q/e;->a(III)I

    move-result p1

    iput p1, p0, Lg/s/d$a;->c:I

    iget p1, p0, Lg/s/d$a;->c:I

    iput p1, p0, Lg/s/d$a;->d:I

    return-void
.end method

.method private final a()V
    .registers 7

    iget v0, p0, Lg/s/d$a;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_c

    iput v1, p0, Lg/s/d$a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lg/s/d$a;->e:Lg/q/d;

    goto/16 :goto_9d

    :cond_c
    iget-object v0, p0, Lg/s/d$a;->g:Lg/s/d;

    invoke-static {v0}, Lg/s/d;->c(Lg/s/d;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_25

    iget v0, p0, Lg/s/d$a;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lg/s/d$a;->f:I

    iget v0, p0, Lg/s/d$a;->f:I

    iget-object v4, p0, Lg/s/d$a;->g:Lg/s/d;

    invoke-static {v4}, Lg/s/d;->c(Lg/s/d;)I

    move-result v4

    if-ge v0, v4, :cond_33

    :cond_25
    iget v0, p0, Lg/s/d$a;->d:I

    iget-object v4, p0, Lg/s/d$a;->g:Lg/s/d;

    invoke-static {v4}, Lg/s/d;->b(Lg/s/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_49

    :cond_33
    iget v0, p0, Lg/s/d$a;->c:I

    new-instance v1, Lg/q/d;

    iget-object v4, p0, Lg/s/d$a;->g:Lg/s/d;

    invoke-static {v4}, Lg/s/d;->b(Lg/s/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lg/s/n;->c(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lg/q/d;-><init>(II)V

    :goto_44
    iput-object v1, p0, Lg/s/d$a;->e:Lg/q/d;

    :goto_46
    iput v2, p0, Lg/s/d$a;->d:I

    goto :goto_9b

    :cond_49
    iget-object v0, p0, Lg/s/d$a;->g:Lg/s/d;

    invoke-static {v0}, Lg/s/d;->a(Lg/s/d;)Lg/p/a/c;

    move-result-object v0

    iget-object v4, p0, Lg/s/d$a;->g:Lg/s/d;

    invoke-static {v4}, Lg/s/d;->b(Lg/s/d;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lg/s/d$a;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lg/p/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/f;

    if-nez v0, :cond_75

    iget v0, p0, Lg/s/d$a;->c:I

    new-instance v1, Lg/q/d;

    iget-object v4, p0, Lg/s/d$a;->g:Lg/s/d;

    invoke-static {v4}, Lg/s/d;->b(Lg/s/d;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lg/s/n;->c(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lg/q/d;-><init>(II)V

    goto :goto_44

    :cond_75
    invoke-virtual {v0}, Lg/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lg/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v4, p0, Lg/s/d$a;->c:I

    invoke-static {v4, v2}, Lg/q/e;->d(II)Lg/q/d;

    move-result-object v4

    iput-object v4, p0, Lg/s/d$a;->e:Lg/q/d;

    add-int/2addr v2, v0

    iput v2, p0, Lg/s/d$a;->c:I

    iget v2, p0, Lg/s/d$a;->c:I

    if-nez v0, :cond_99

    const/4 v1, 0x1

    :cond_99
    add-int/2addr v2, v1

    goto :goto_46

    :goto_9b
    iput v3, p0, Lg/s/d$a;->b:I

    :goto_9d
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    iget v0, p0, Lg/s/d$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lg/s/d$a;->a()V

    :cond_8
    iget v0, p0, Lg/s/d$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public next()Lg/q/d;
    .registers 4

    iget v0, p0, Lg/s/d$a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lg/s/d$a;->a()V

    :cond_8
    iget v0, p0, Lg/s/d$a;->b:I

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lg/s/d$a;->e:Lg/q/d;

    if-eqz v0, :cond_16

    const/4 v2, 0x0

    iput-object v2, p0, Lg/s/d$a;->e:Lg/q/d;

    iput v1, p0, Lg/s/d$a;->b:I

    return-object v0

    :cond_16
    new-instance v0, Lg/j;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lg/s/d$a;->next()Lg/q/d;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
