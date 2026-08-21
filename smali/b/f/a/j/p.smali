###### Class b.f.a.j.p (b.f.a.j.p)
.class public Lb/f/a/j/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/f/a/j/p$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/f/a/j/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/f/a/j/f;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/f/a/j/p;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lb/f/a/j/f;->v()I

    move-result v0

    iput v0, p0, Lb/f/a/j/p;->a:I

    invoke-virtual {p1}, Lb/f/a/j/f;->w()I

    move-result v0

    iput v0, p0, Lb/f/a/j/p;->b:I

    invoke-virtual {p1}, Lb/f/a/j/f;->s()I

    move-result v0

    iput v0, p0, Lb/f/a/j/p;->c:I

    invoke-virtual {p1}, Lb/f/a/j/f;->i()I

    move-result v0

    iput v0, p0, Lb/f/a/j/p;->d:I

    invoke-virtual {p1}, Lb/f/a/j/f;->b()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_40

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/e;

    iget-object v3, p0, Lb/f/a/j/p;->e:Ljava/util/ArrayList;

    new-instance v4, Lb/f/a/j/p$a;

    invoke-direct {v4, v2}, Lb/f/a/j/p$a;-><init>(Lb/f/a/j/e;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_40
    return-void
.end method


# virtual methods
.method public a(Lb/f/a/j/f;)V
    .registers 5

    iget v0, p0, Lb/f/a/j/p;->a:I

    invoke-virtual {p1, v0}, Lb/f/a/j/f;->r(I)V

    iget v0, p0, Lb/f/a/j/p;->b:I

    invoke-virtual {p1, v0}, Lb/f/a/j/f;->s(I)V

    iget v0, p0, Lb/f/a/j/p;->c:I

    invoke-virtual {p1, v0}, Lb/f/a/j/f;->o(I)V

    iget v0, p0, Lb/f/a/j/p;->d:I

    invoke-virtual {p1, v0}, Lb/f/a/j/f;->g(I)V

    iget-object v0, p0, Lb/f/a/j/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_2b

    iget-object v2, p0, Lb/f/a/j/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/p$a;

    invoke-virtual {v2, p1}, Lb/f/a/j/p$a;->a(Lb/f/a/j/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    return-void
.end method

.method public b(Lb/f/a/j/f;)V
    .registers 5

    invoke-virtual {p1}, Lb/f/a/j/f;->v()I

    move-result v0

    iput v0, p0, Lb/f/a/j/p;->a:I

    invoke-virtual {p1}, Lb/f/a/j/f;->w()I

    move-result v0

    iput v0, p0, Lb/f/a/j/p;->b:I

    invoke-virtual {p1}, Lb/f/a/j/f;->s()I

    move-result v0

    iput v0, p0, Lb/f/a/j/p;->c:I

    invoke-virtual {p1}, Lb/f/a/j/f;->i()I

    move-result v0

    iput v0, p0, Lb/f/a/j/p;->d:I

    iget-object v0, p0, Lb/f/a/j/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_2f

    iget-object v2, p0, Lb/f/a/j/p;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/j/p$a;

    invoke-virtual {v2, p1}, Lb/f/a/j/p$a;->b(Lb/f/a/j/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2f
    return-void
.end method

###### Class b.f.a.j.p.a (b.f.a.j.p$a)
.class Lb/f/a/j/p$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/f/a/j/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lb/f/a/j/e;

.field private b:Lb/f/a/j/e;

.field private c:I

.field private d:Lb/f/a/j/e$c;

.field private e:I


# direct methods
.method public constructor <init>(Lb/f/a/j/e;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/f/a/j/p$a;->a:Lb/f/a/j/e;

    invoke-virtual {p1}, Lb/f/a/j/e;->g()Lb/f/a/j/e;

    move-result-object v0

    iput-object v0, p0, Lb/f/a/j/p$a;->b:Lb/f/a/j/e;

    invoke-virtual {p1}, Lb/f/a/j/e;->b()I

    move-result v0

    iput v0, p0, Lb/f/a/j/p$a;->c:I

    invoke-virtual {p1}, Lb/f/a/j/e;->f()Lb/f/a/j/e$c;

    move-result-object v0

    iput-object v0, p0, Lb/f/a/j/p$a;->d:Lb/f/a/j/e$c;

    invoke-virtual {p1}, Lb/f/a/j/e;->a()I

    move-result p1

    iput p1, p0, Lb/f/a/j/p$a;->e:I

    return-void
.end method


# virtual methods
.method public a(Lb/f/a/j/f;)V
    .registers 6

    iget-object v0, p0, Lb/f/a/j/p$a;->a:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->h()Lb/f/a/j/e$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object p1

    iget-object v0, p0, Lb/f/a/j/p$a;->b:Lb/f/a/j/e;

    iget v1, p0, Lb/f/a/j/p$a;->c:I

    iget-object v2, p0, Lb/f/a/j/p$a;->d:Lb/f/a/j/e$c;

    iget v3, p0, Lb/f/a/j/p$a;->e:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lb/f/a/j/e;->a(Lb/f/a/j/e;ILb/f/a/j/e$c;I)Z

    return-void
.end method

.method public b(Lb/f/a/j/f;)V
    .registers 3

    iget-object v0, p0, Lb/f/a/j/p$a;->a:Lb/f/a/j/e;

    invoke-virtual {v0}, Lb/f/a/j/e;->h()Lb/f/a/j/e$d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/f/a/j/f;->a(Lb/f/a/j/e$d;)Lb/f/a/j/e;

    move-result-object p1

    iput-object p1, p0, Lb/f/a/j/p$a;->a:Lb/f/a/j/e;

    iget-object p1, p0, Lb/f/a/j/p$a;->a:Lb/f/a/j/e;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lb/f/a/j/e;->g()Lb/f/a/j/e;

    move-result-object p1

    iput-object p1, p0, Lb/f/a/j/p$a;->b:Lb/f/a/j/e;

    iget-object p1, p0, Lb/f/a/j/p$a;->a:Lb/f/a/j/e;

    invoke-virtual {p1}, Lb/f/a/j/e;->b()I

    move-result p1

    iput p1, p0, Lb/f/a/j/p$a;->c:I

    iget-object p1, p0, Lb/f/a/j/p$a;->a:Lb/f/a/j/e;

    invoke-virtual {p1}, Lb/f/a/j/e;->f()Lb/f/a/j/e$c;

    move-result-object p1

    iput-object p1, p0, Lb/f/a/j/p$a;->d:Lb/f/a/j/e$c;

    iget-object p1, p0, Lb/f/a/j/p$a;->a:Lb/f/a/j/e;

    invoke-virtual {p1}, Lb/f/a/j/e;->a()I

    move-result p1

    goto :goto_37

    :cond_2d
    const/4 p1, 0x0

    iput-object p1, p0, Lb/f/a/j/p$a;->b:Lb/f/a/j/e;

    const/4 p1, 0x0

    iput p1, p0, Lb/f/a/j/p$a;->c:I

    sget-object v0, Lb/f/a/j/e$c;->c:Lb/f/a/j/e$c;

    iput-object v0, p0, Lb/f/a/j/p$a;->d:Lb/f/a/j/e$c;

    :goto_37
    iput p1, p0, Lb/f/a/j/p$a;->e:I

    return-void
.end method
