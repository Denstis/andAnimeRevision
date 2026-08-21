###### Class k.o (k.o)
.class final Lk/o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final m:Ljava/util/regex/Pattern;

.field static final n:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lh/e$a;

.field private final b:Lk/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/c<",
            "TR;TT;>;"
        }
    .end annotation
.end field

.field private final c:Lh/t;

.field private final d:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "Lh/d0;",
            "TR;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lh/s;

.field private final h:Lh/v;

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[Lk/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lk/j<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk/o;->m:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lk/o;->n:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lk/o$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/o$a<",
            "TR;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lk/o$a;->a:Lk/n;

    invoke-virtual {v0}, Lk/n;->b()Lh/e$a;

    move-result-object v0

    iput-object v0, p0, Lk/o;->a:Lh/e$a;

    iget-object v0, p1, Lk/o$a;->w:Lk/c;

    iput-object v0, p0, Lk/o;->b:Lk/c;

    iget-object v0, p1, Lk/o$a;->a:Lk/n;

    invoke-virtual {v0}, Lk/n;->a()Lh/t;

    move-result-object v0

    iput-object v0, p0, Lk/o;->c:Lh/t;

    iget-object v0, p1, Lk/o$a;->v:Lk/e;

    iput-object v0, p0, Lk/o;->d:Lk/e;

    iget-object v0, p1, Lk/o$a;->m:Ljava/lang/String;

    iput-object v0, p0, Lk/o;->e:Ljava/lang/String;

    iget-object v0, p1, Lk/o$a;->q:Ljava/lang/String;

    iput-object v0, p0, Lk/o;->f:Ljava/lang/String;

    iget-object v0, p1, Lk/o$a;->r:Lh/s;

    iput-object v0, p0, Lk/o;->g:Lh/s;

    iget-object v0, p1, Lk/o$a;->s:Lh/v;

    iput-object v0, p0, Lk/o;->h:Lh/v;

    iget-boolean v0, p1, Lk/o$a;->n:Z

    iput-boolean v0, p0, Lk/o;->i:Z

    iget-boolean v0, p1, Lk/o$a;->o:Z

    iput-boolean v0, p0, Lk/o;->j:Z

    iget-boolean v0, p1, Lk/o$a;->p:Z

    iput-boolean v0, p0, Lk/o;->k:Z

    iget-object p1, p1, Lk/o$a;->u:[Lk/j;

    iput-object p1, p0, Lk/o;->l:[Lk/j;

    return-void
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_7
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_e

    const-class p0, Ljava/lang/Byte;

    return-object p0

    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_15

    const-class p0, Ljava/lang/Character;

    return-object p0

    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1c

    const-class p0, Ljava/lang/Double;

    return-object p0

    :cond_1c
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_23

    const-class p0, Ljava/lang/Float;

    return-object p0

    :cond_23
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2a

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_2a
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_31

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_37

    const-class p0, Ljava/lang/Short;

    :cond_37
    return-object p0
.end method

.method static a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lk/o;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_b
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1a
    return-object v0
.end method


# virtual methods
.method varargs a([Ljava/lang/Object;)Lh/e;
    .registers 12

    new-instance v9, Lk/l;

    iget-object v1, p0, Lk/o;->e:Ljava/lang/String;

    iget-object v2, p0, Lk/o;->c:Lh/t;

    iget-object v3, p0, Lk/o;->f:Ljava/lang/String;

    iget-object v4, p0, Lk/o;->g:Lh/s;

    iget-object v5, p0, Lk/o;->h:Lh/v;

    iget-boolean v6, p0, Lk/o;->i:Z

    iget-boolean v7, p0, Lk/o;->j:Z

    iget-boolean v8, p0, Lk/o;->k:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lk/l;-><init>(Ljava/lang/String;Lh/t;Ljava/lang/String;Lh/s;Lh/v;ZZZ)V

    iget-object v0, p0, Lk/o;->l:[Lk/j;

    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    array-length v2, p1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    array-length v3, v0

    if-ne v2, v3, :cond_38

    :goto_21
    if-ge v1, v2, :cond_2d

    aget-object v3, v0, v1

    aget-object v4, p1, v1

    invoke-virtual {v3, v9, v4}, Lk/j;->a(Lk/l;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_2d
    iget-object p1, p0, Lk/o;->a:Lh/e$a;

    invoke-virtual {v9}, Lk/l;->a()Lh/a0;

    move-result-object v0

    invoke-interface {p1, v0}, Lh/e$a;->a(Lh/a0;)Lh/e;

    move-result-object p1

    return-object p1

    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Argument count ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") doesn\'t match expected count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5e

    :goto_5d
    throw p1

    :goto_5e
    goto :goto_5d
.end method

.method a(Lh/d0;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/d0;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, Lk/o;->d:Lk/e;

    invoke-interface {v0, p1}, Lk/e;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method a(Lk/b;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "TR;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lk/o;->b:Lk/c;

    invoke-interface {v0, p1}, Lk/c;->a(Lk/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class k.o.a (k.o$a)
.class final Lk/o$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lk/n;

.field final b:Ljava/lang/reflect/Method;

.field final c:[Ljava/lang/annotation/Annotation;

.field final d:[[Ljava/lang/annotation/Annotation;

.field final e:[Ljava/lang/reflect/Type;

.field f:Ljava/lang/reflect/Type;

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:Z

.field p:Z

.field q:Ljava/lang/String;

.field r:Lh/s;

.field s:Lh/v;

.field t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field u:[Lk/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lk/j<",
            "*>;"
        }
    .end annotation
.end field

.field v:Lk/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/e<",
            "Lh/d0;",
            "TT;>;"
        }
    .end annotation
.end field

.field w:Lk/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/c<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lk/n;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/o$a;->a:Lk/n;

    iput-object p2, p0, Lk/o$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lk/o$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lk/o$a;->e:[Ljava/lang/reflect/Type;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lk/o$a;->d:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private a([Ljava/lang/String;)Lh/s;
    .registers 10

    new-instance v0, Lh/s$a;

    invoke-direct {v0}, Lh/s$a;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_5a

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4f

    if-eqz v5, :cond_4f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_4f

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-static {v4}, Lh/v;->a(Ljava/lang/String;)Lh/v;

    move-result-object v5

    if-eqz v5, :cond_3e

    iput-object v5, p0, Lk/o$a;->s:Lh/v;

    goto :goto_4c

    :cond_3e
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "Malformed content type: %s"

    invoke-direct {p0, v0, p1}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_49
    invoke-virtual {v0, v6, v4}, Lh/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lh/s$a;

    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_4f
    new-array p1, v7, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v0, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-direct {p0, v0, p1}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5a
    invoke-virtual {v0}, Lh/s$a;->a()Lh/s;

    move-result-object p1

    return-object p1
.end method

.method private varargs a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (parameter #"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lk/o$a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs a(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " (parameter #"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lk/o$a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    return-object p1
.end method

.method private varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 5

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n    for method "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lk/o$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lk/o$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p3
.end method

.method private a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/j;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lk/j<",
            "*>;"
        }
    .end annotation

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_1f

    aget-object v4, p3, v2

    invoke-direct {p0, p1, p2, p3, v4}, Lk/o$a;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lk/j;

    move-result-object v4

    if-nez v4, :cond_10

    goto :goto_13

    :cond_10
    if-nez v3, :cond_16

    move-object v3, v4

    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_16
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Multiple Retrofit annotations found, only one allowed."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1f
    if-eqz v3, :cond_22

    return-object v3

    :cond_22
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "No Retrofit annotation found."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    goto :goto_2c

    :goto_2b
    throw p1

    :goto_2c
    goto :goto_2b
.end method

.method private a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lk/j;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lk/j<",
            "*>;"
        }
    .end annotation

    const-class v0, Lh/w$b;

    instance-of v1, p4, Lk/s/p;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4e

    iget-boolean v0, p0, Lk/o$a;->k:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Lk/o$a;->l:Z

    if-nez v0, :cond_3c

    iget-object v0, p0, Lk/o$a;->q:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iput-boolean v2, p0, Lk/o$a;->j:Z

    check-cast p4, Lk/s/p;

    invoke-interface {p4}, Lk/s/p;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lk/o$a;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p1, p2, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$i;

    invoke-interface {p4}, Lk/s/p;->encoded()Z

    move-result p3

    invoke-direct {p2, v0, p1, p3}, Lk/j$i;-><init>(Ljava/lang/String;Lk/e;Z)V

    return-object p2

    :cond_2f
    new-array p2, v2, [Ljava/lang/Object;

    iget-object p3, p0, Lk/o$a;->m:Ljava/lang/String;

    aput-object p3, p2, v3

    const-string p3, "@Path can only be used with relative url on @%s"

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3c
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Path parameters may not be used with @Url."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_45
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "A @Path parameter must not come after a @Query."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4e
    instance-of v1, p4, Lk/s/q;

    const-string v4, "<String>)"

    const-string v5, " must include generic type (e.g., "

    if-eqz v1, :cond_d6

    check-cast p4, Lk/s/q;

    invoke-interface {p4}, Lk/s/q;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4}, Lk/s/q;->encoded()Z

    move-result p4

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    iput-boolean v2, p0, Lk/o$a;->k:Z

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_ac

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_88

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p2, p1, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$j;

    invoke-direct {p2, v0, p1, p4}, Lk/j$j;-><init>(Ljava/lang/String;Lk/e;Z)V

    invoke-virtual {p2}, Lk/j;->b()Lk/j;

    move-result-object p1

    return-object p1

    :cond_88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_ac
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_ca

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lk/o;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p2, p1, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$j;

    invoke-direct {p2, v0, p1, p4}, Lk/j$j;-><init>(Ljava/lang/String;Lk/e;Z)V

    invoke-virtual {p2}, Lk/j;->a()Lk/j;

    move-result-object p1

    return-object p1

    :cond_ca
    iget-object p1, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p1, p2, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$j;

    invoke-direct {p2, v0, p1, p4}, Lk/j$j;-><init>(Ljava/lang/String;Lk/e;Z)V

    return-object p2

    :cond_d6
    instance-of v1, p4, Lk/s/s;

    if-eqz v1, :cond_156

    check-cast p4, Lk/s/s;

    invoke-interface {p4}, Lk/s/s;->encoded()Z

    move-result p4

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-boolean v2, p0, Lk/o$a;->k:Z

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_12c

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_108

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p2, p1, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$l;

    invoke-direct {p2, p1, p4}, Lk/j$l;-><init>(Lk/e;Z)V

    invoke-virtual {p2}, Lk/j;->b()Lk/j;

    move-result-object p1

    return-object p1

    :cond_108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_12c
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_14a

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lk/o;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p2, p1, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$l;

    invoke-direct {p2, p1, p4}, Lk/j$l;-><init>(Lk/e;Z)V

    invoke-virtual {p2}, Lk/j;->a()Lk/j;

    move-result-object p1

    return-object p1

    :cond_14a
    iget-object p1, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p1, p2, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$l;

    invoke-direct {p2, p1, p4}, Lk/j$l;-><init>(Lk/e;Z)V

    return-object p2

    :cond_156
    instance-of v1, p4, Lk/s/r;

    const-string v6, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v1, :cond_1ba

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1b1

    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lk/p;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1aa

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_192

    invoke-static {v2, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p2, p1, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$k;

    check-cast p4, Lk/s/r;

    invoke-interface {p4}, Lk/s/r;->encoded()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lk/j$k;-><init>(Lk/e;Z)V

    return-object p2

    :cond_192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@QueryMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1aa
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v6, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1b1
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@QueryMap parameter type must be Map."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1ba
    instance-of v1, p4, Lk/s/h;

    if-eqz v1, :cond_238

    check-cast p4, Lk/s/h;

    invoke-interface {p4}, Lk/s/h;->value()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20e

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1ea

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p2, p1, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$f;

    invoke-direct {p2, p4, p1}, Lk/j$f;-><init>(Ljava/lang/String;Lk/e;)V

    invoke-virtual {p2}, Lk/j;->b()Lk/j;

    move-result-object p1

    return-object p1

    :cond_1ea
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_20e
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_22c

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lk/o;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p2, p1, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$f;

    invoke-direct {p2, p4, p1}, Lk/j$f;-><init>(Ljava/lang/String;Lk/e;)V

    invoke-virtual {p2}, Lk/j;->a()Lk/j;

    move-result-object p1

    return-object p1

    :cond_22c
    iget-object p1, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p1, p2, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$f;

    invoke-direct {p2, p4, p1}, Lk/j$f;-><init>(Ljava/lang/String;Lk/e;)V

    return-object p2

    :cond_238
    instance-of v1, p4, Lk/s/c;

    if-eqz v1, :cond_2c9

    iget-boolean v0, p0, Lk/o$a;->o:Z

    if-eqz v0, :cond_2c0

    check-cast p4, Lk/s/c;

    invoke-interface {p4}, Lk/s/c;->value()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4}, Lk/s/c;->encoded()Z

    move-result p4

    iput-boolean v2, p0, Lk/o$a;->g:Z

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_296

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_272

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p2, p1, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$d;

    invoke-direct {p2, v0, p1, p4}, Lk/j$d;-><init>(Ljava/lang/String;Lk/e;Z)V

    invoke-virtual {p2}, Lk/j;->b()Lk/j;

    move-result-object p1

    return-object p1

    :cond_272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_296
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_2b4

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lk/o;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p2, p1, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$d;

    invoke-direct {p2, v0, p1, p4}, Lk/j$d;-><init>(Ljava/lang/String;Lk/e;Z)V

    invoke-virtual {p2}, Lk/j;->a()Lk/j;

    move-result-object p1

    return-object p1

    :cond_2b4
    iget-object p1, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p1, p2, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$d;

    invoke-direct {p2, v0, p1, p4}, Lk/j$d;-><init>(Ljava/lang/String;Lk/e;Z)V

    return-object p2

    :cond_2c0
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Field parameters can only be used with form encoding."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2c9
    instance-of v1, p4, Lk/s/d;

    if-eqz v1, :cond_33a

    iget-boolean v0, p0, Lk/o$a;->o:Z

    if-eqz v0, :cond_331

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_328

    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lk/p;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_321

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_309

    invoke-static {v2, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object p2, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {p2, p1, p3}, Lk/n;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    iput-boolean v2, p0, Lk/o$a;->g:Z

    new-instance p2, Lk/j$e;

    check-cast p4, Lk/s/d;

    invoke-interface {p4}, Lk/s/d;->encoded()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lk/j$e;-><init>(Lk/e;Z)V

    return-object p2

    :cond_309
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@FieldMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_321
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v6, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_328
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameter type must be Map."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_331
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@FieldMap parameters can only be used with form encoding."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_33a
    instance-of v1, p4, Lk/s/n;

    if-eqz v1, :cond_4ad

    iget-boolean v1, p0, Lk/o$a;->p:Z

    if-eqz v1, :cond_4a4

    check-cast p4, Lk/s/n;

    iput-boolean v2, p0, Lk/o$a;->h:Z

    invoke-interface {p4}, Lk/s/n;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3d2

    const-class p3, Ljava/lang/Iterable;

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string p4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz p3, :cond_3a4

    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_380

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_379

    sget-object p1, Lk/j$m;->a:Lk/j$m;

    invoke-virtual {p1}, Lk/j;->b()Lk/j;

    move-result-object p1

    return-object p1

    :cond_379
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p4, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_380
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3a4
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_3c2

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3bb

    sget-object p1, Lk/j$m;->a:Lk/j$m;

    invoke-virtual {p1}, Lk/j;->a()Lk/j;

    move-result-object p1

    return-object p1

    :cond_3bb
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p4, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3c2
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3cb

    sget-object p1, Lk/j$m;->a:Lk/j$m;

    return-object p1

    :cond_3cb
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p4, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3d2
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "Content-Disposition"

    aput-object v8, v7, v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "form-data; name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    const-string v2, "Content-Transfer-Encoding"

    aput-object v2, v7, v1

    const/4 v1, 0x3

    invoke-interface {p4}, Lk/s/n;->encoding()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v7, v1

    invoke-static {v7}, Lh/s;->a([Ljava/lang/String;)Lh/s;

    move-result-object p4

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v1, :cond_45c

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_438

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_431

    iget-object p1, p0, Lk/o$a;->a:Lk/n;

    iget-object v0, p0, Lk/o$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, p2, p3, v0}, Lk/n;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$g;

    invoke-direct {p2, p4, p1}, Lk/j$g;-><init>(Lh/s;Lk/e;)V

    invoke-virtual {p2}, Lk/j;->b()Lk/j;

    move-result-object p1

    return-object p1

    :cond_431
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_438
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_45c
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_489

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lk/o;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_482

    iget-object p1, p0, Lk/o$a;->a:Lk/n;

    iget-object v0, p0, Lk/o$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, p2, p3, v0}, Lk/n;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$g;

    invoke-direct {p2, p4, p1}, Lk/j$g;-><init>(Lh/s;Lk/e;)V

    invoke-virtual {p2}, Lk/j;->a()Lk/j;

    move-result-object p1

    return-object p1

    :cond_482
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_489
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_49d

    iget-object p1, p0, Lk/o$a;->a:Lk/n;

    iget-object v0, p0, Lk/o$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, p2, p3, v0}, Lk/n;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    new-instance p2, Lk/j$g;

    invoke-direct {p2, p4, p1}, Lk/j$g;-><init>(Lh/s;Lk/e;)V

    return-object p2

    :cond_49d
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v2, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4a4
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Part parameters can only be used with multipart encoding."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_4ad
    instance-of v1, p4, Lk/s/o;

    if-eqz v1, :cond_533

    iget-boolean v1, p0, Lk/o$a;->p:Z

    if-eqz v1, :cond_52a

    iput-boolean v2, p0, Lk/o$a;->h:Z

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_521

    const-class v4, Ljava/util/Map;

    invoke-static {p2, v1, v4}, Lk/p;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_51a

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v3, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v4, Ljava/lang/String;

    if-ne v4, v1, :cond_502

    invoke-static {v2, p2}, Lk/p;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4f9

    iget-object p1, p0, Lk/o$a;->a:Lk/n;

    iget-object v0, p0, Lk/o$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p1, p2, p3, v0}, Lk/n;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1

    check-cast p4, Lk/s/o;

    new-instance p2, Lk/j$h;

    invoke-interface {p4}, Lk/s/o;->encoding()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lk/j$h;-><init>(Lk/e;Ljava/lang/String;)V

    return-object p2

    :cond_4f9
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_502
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "@PartMap keys must be of type String: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_51a
    new-array p2, v3, [Ljava/lang/Object;

    invoke-direct {p0, p1, v6, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_521
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@PartMap parameter type must be Map."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_52a
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@PartMap parameters can only be used with multipart encoding."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_533
    instance-of p4, p4, Lk/s/a;

    if-eqz p4, :cond_571

    iget-boolean p4, p0, Lk/o$a;->o:Z

    if-nez p4, :cond_568

    iget-boolean p4, p0, Lk/o$a;->p:Z

    if-nez p4, :cond_568

    iget-boolean p4, p0, Lk/o$a;->i:Z

    if-nez p4, :cond_55f

    :try_start_543
    iget-object p4, p0, Lk/o$a;->a:Lk/n;

    iget-object v0, p0, Lk/o$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Lk/n;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object p1
    :try_end_54b
    .catch Ljava/lang/RuntimeException; {:try_start_543 .. :try_end_54b} :catch_553

    iput-boolean v2, p0, Lk/o$a;->i:Z

    new-instance p2, Lk/j$c;

    invoke-direct {p2, p1}, Lk/j$c;-><init>(Lk/e;)V

    return-object p2

    :catch_553
    move-exception p3

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    const-string p2, "Unable to create @Body converter for %s"

    invoke-direct {p0, p3, p1, p2, p4}, Lk/o$a;->a(Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_55f
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "Multiple @Body method annotations found."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_568
    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-direct {p0, p1, p3, p2}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_571
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .registers 7

    sget-object v0, Lk/o;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_27

    iget-object v0, p0, Lk/o$a;->t:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    :cond_18
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lk/o$a;->q:Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-direct {p0, p1, p2, v0}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_27
    new-array v0, v3, [Ljava/lang/Object;

    sget-object v3, Lk/o;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p2, v0, v1

    const-string p2, "@Path parameter name must match %s. Found: %s"

    invoke-direct {p0, p1, p2, v0}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    iget-object v0, p0, Lk/o$a;->m:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_47

    iput-object p1, p0, Lk/o$a;->m:Ljava/lang/String;

    iput-boolean p3, p0, Lk/o$a;->n:Z

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    return-void

    :cond_11
    const/16 p1, 0x3f

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_3e

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lk/o;->m:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_33

    goto :goto_3e

    :cond_33
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    invoke-direct {p0, p1, p2}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_3e
    :goto_3e
    iput-object p2, p0, Lk/o$a;->q:Ljava/lang/String;

    invoke-static {p2}, Lk/o;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lk/o$a;->t:Ljava/util/Set;

    return-void

    :cond_47
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v0, p2, v1

    aput-object p1, p2, v2

    const-string p1, "Only one HTTP method is allowed. Found: %s and %s."

    invoke-direct {p0, p1, p2}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private a(Ljava/lang/annotation/Annotation;)V
    .registers 5

    instance-of v0, p1, Lk/s/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    check-cast p1, Lk/s/b;

    invoke-interface {p1}, Lk/s/b;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DELETE"

    :goto_d
    invoke-direct {p0, v0, p1, v1}, Lk/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_ae

    :cond_12
    instance-of v0, p1, Lk/s/e;

    if-eqz v0, :cond_1f

    check-cast p1, Lk/s/e;

    invoke-interface {p1}, Lk/s/e;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    goto :goto_d

    :cond_1f
    instance-of v0, p1, Lk/s/f;

    if-eqz v0, :cond_43

    check-cast p1, Lk/s/f;

    invoke-interface {p1}, Lk/s/f;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-direct {p0, v0, p1, v1}, Lk/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-class p1, Ljava/lang/Void;

    iget-object v0, p0, Lk/o$a;->f:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    goto/16 :goto_ae

    :cond_3a
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "HEAD method must use Void as response type."

    invoke-direct {p0, v0, p1}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_43
    instance-of v0, p1, Lk/s/k;

    const/4 v2, 0x1

    if-eqz v0, :cond_54

    check-cast p1, Lk/s/k;

    invoke-interface {p1}, Lk/s/k;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PATCH"

    :goto_50
    invoke-direct {p0, v0, p1, v2}, Lk/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_ae

    :cond_54
    instance-of v0, p1, Lk/s/l;

    if-eqz v0, :cond_61

    check-cast p1, Lk/s/l;

    invoke-interface {p1}, Lk/s/l;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    goto :goto_50

    :cond_61
    instance-of v0, p1, Lk/s/m;

    if-eqz v0, :cond_6e

    check-cast p1, Lk/s/m;

    invoke-interface {p1}, Lk/s/m;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUT"

    goto :goto_50

    :cond_6e
    instance-of v0, p1, Lk/s/j;

    if-eqz v0, :cond_7b

    check-cast p1, Lk/s/j;

    invoke-interface {p1}, Lk/s/j;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    goto :goto_d

    :cond_7b
    instance-of v0, p1, Lk/s/g;

    if-eqz v0, :cond_91

    check-cast p1, Lk/s/g;

    invoke-interface {p1}, Lk/s/g;->method()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lk/s/g;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lk/s/g;->hasBody()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lk/o$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_ae

    :cond_91
    instance-of v0, p1, Lk/s/i;

    if-eqz v0, :cond_ae

    check-cast p1, Lk/s/i;

    invoke-interface {p1}, Lk/s/i;->value()[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-eqz v0, :cond_a5

    invoke-direct {p0, p1}, Lk/o$a;->a([Ljava/lang/String;)Lh/s;

    move-result-object p1

    iput-object p1, p0, Lk/o$a;->r:Lh/s;

    goto :goto_ae

    :cond_a5
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "@Headers annotation is empty."

    invoke-direct {p0, v0, p1}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_ae
    :goto_ae
    return-void
.end method

.method private b()Lk/c;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/c<",
            "TT;TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lk/o$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lk/p;->d(Ljava/lang/reflect/Type;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_34

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2b

    iget-object v1, p0, Lk/o$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    :try_start_18
    iget-object v4, p0, Lk/o$a;->a:Lk/n;

    invoke-virtual {v4, v0, v1}, Lk/n;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/c;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1e} :catch_1f

    return-object v0

    :catch_1f
    move-exception v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "Unable to create call adapter for %s"

    invoke-direct {p0, v1, v0, v2}, Lk/o$a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2b
    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Service methods cannot return void."

    invoke-direct {p0, v1, v0}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_34
    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "Method return type must not include a type variable or wildcard: %s"

    invoke-direct {p0, v0, v1}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private c()Lk/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk/e<",
            "Lh/d0;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lk/o$a;->b:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    :try_start_6
    iget-object v1, p0, Lk/o$a;->a:Lk/n;

    iget-object v2, p0, Lk/o$a;->f:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v0}, Lk/n;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/e;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lk/o$a;->f:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    const-string v2, "Unable to create converter for %s"

    invoke-direct {p0, v0, v2, v1}, Lk/o$a;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a()Lk/o;
    .registers 7

    invoke-direct {p0}, Lk/o$a;->b()Lk/c;

    move-result-object v0

    iput-object v0, p0, Lk/o$a;->w:Lk/c;

    iget-object v0, p0, Lk/o$a;->w:Lk/c;

    invoke-interface {v0}, Lk/c;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lk/o$a;->f:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lk/o$a;->f:Ljava/lang/reflect/Type;

    const-class v1, Lk/m;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_ed

    const-class v1, Lh/c0;

    if-eq v0, v1, :cond_ed

    invoke-direct {p0}, Lk/o$a;->c()Lk/e;

    move-result-object v0

    iput-object v0, p0, Lk/o$a;->v:Lk/e;

    iget-object v0, p0, Lk/o$a;->c:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v1, :cond_2d

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lk/o$a;->a(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_2d
    iget-object v0, p0, Lk/o$a;->m:Ljava/lang/String;

    if-eqz v0, :cond_e4

    iget-boolean v0, p0, Lk/o$a;->n:Z

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lk/o$a;->p:Z

    if-nez v0, :cond_47

    iget-boolean v0, p0, Lk/o$a;->o:Z

    if-nez v0, :cond_3e

    goto :goto_50

    :cond_3e
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-direct {p0, v1, v0}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_47
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-direct {p0, v1, v0}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_50
    :goto_50
    iget-object v0, p0, Lk/o$a;->d:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    new-array v1, v0, [Lk/j;

    iput-object v1, p0, Lk/o$a;->u:[Lk/j;

    const/4 v1, 0x0

    :goto_58
    const/4 v3, 0x1

    if-ge v1, v0, :cond_8a

    iget-object v4, p0, Lk/o$a;->e:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v1

    invoke-static {v4}, Lk/p;->d(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-nez v5, :cond_7f

    iget-object v3, p0, Lk/o$a;->d:[[Ljava/lang/annotation/Annotation;

    aget-object v3, v3, v1

    if-eqz v3, :cond_76

    iget-object v5, p0, Lk/o$a;->u:[Lk/j;

    invoke-direct {p0, v1, v4, v3}, Lk/o$a;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lk/j;

    move-result-object v3

    aput-object v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    :cond_76
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "No Retrofit annotation found."

    invoke-direct {p0, v1, v2, v0}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_7f
    new-array v0, v3, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v2, "Parameter type must not include a type variable or wildcard: %s"

    invoke-direct {p0, v1, v2, v0}, Lk/o$a;->a(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8a
    iget-object v0, p0, Lk/o$a;->q:Ljava/lang/String;

    if-nez v0, :cond_a0

    iget-boolean v0, p0, Lk/o$a;->l:Z

    if-eqz v0, :cond_93

    goto :goto_a0

    :cond_93
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v1, p0, Lk/o$a;->m:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Missing either @%s URL or @Url parameter."

    invoke-direct {p0, v1, v0}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_a0
    :goto_a0
    iget-boolean v0, p0, Lk/o$a;->o:Z

    if-nez v0, :cond_ba

    iget-boolean v0, p0, Lk/o$a;->p:Z

    if-nez v0, :cond_ba

    iget-boolean v0, p0, Lk/o$a;->n:Z

    if-nez v0, :cond_ba

    iget-boolean v0, p0, Lk/o$a;->i:Z

    if-nez v0, :cond_b1

    goto :goto_ba

    :cond_b1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Non-body HTTP method cannot contain @Body."

    invoke-direct {p0, v1, v0}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_ba
    :goto_ba
    iget-boolean v0, p0, Lk/o$a;->o:Z

    if-eqz v0, :cond_cc

    iget-boolean v0, p0, Lk/o$a;->g:Z

    if-eqz v0, :cond_c3

    goto :goto_cc

    :cond_c3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Form-encoded method must contain at least one @Field."

    invoke-direct {p0, v1, v0}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_cc
    :goto_cc
    iget-boolean v0, p0, Lk/o$a;->p:Z

    if-eqz v0, :cond_de

    iget-boolean v0, p0, Lk/o$a;->h:Z

    if-eqz v0, :cond_d5

    goto :goto_de

    :cond_d5
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Multipart method must contain at least one @Part."

    invoke-direct {p0, v1, v0}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_de
    :goto_de
    new-instance v0, Lk/o;

    invoke-direct {v0, p0}, Lk/o;-><init>(Lk/o$a;)V

    return-object v0

    :cond_e4
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-direct {p0, v1, v0}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_ed
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk/o$a;->f:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not a valid response body type. Did you mean ResponseBody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lk/o$a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_115

    :goto_114
    throw v0

    :goto_115
    goto :goto_114
.end method
