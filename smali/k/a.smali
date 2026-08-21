###### Class k.a (k.a)
.class final Lk/a;
.super Lk/e$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/a$d;,
        Lk/a$a;,
        Lk/a$c;,
        Lk/a$b;,
        Lk/a$e;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lk/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lk/n;)Lk/e;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lk/n;",
            ")",
            "Lk/e<",
            "Lh/d0;",
            "*>;"
        }
    .end annotation

    const-class p3, Lh/d0;

    if-ne p1, p3, :cond_12

    const-class p1, Lk/s/t;

    invoke-static {p2, p1}, Lk/p;->a([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lk/a$c;->a:Lk/a$c;

    goto :goto_11

    :cond_f
    sget-object p1, Lk/a$a;->a:Lk/a$a;

    :goto_11
    return-object p1

    :cond_12
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_19

    sget-object p1, Lk/a$e;->a:Lk/a$e;

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lk/n;)Lk/e;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lk/n;",
            ")",
            "Lk/e<",
            "*",
            "Lh/b0;",
            ">;"
        }
    .end annotation

    const-class p2, Lh/b0;

    invoke-static {p1}, Lk/p;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object p1, Lk/a$b;->a:Lk/a$b;

    return-object p1

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

###### Class k.a.C0194a (k.a$a)
.class final Lk/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/e<",
        "Lh/d0;",
        "Lh/d0;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk/a$a;

    invoke-direct {v0}, Lk/a$a;-><init>()V

    sput-object v0, Lk/a$a;->a:Lk/a$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/d0;)Lh/d0;
    .registers 3

    :try_start_0
    invoke-static {p1}, Lk/p;->a(Lh/d0;)Lh/d0;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    invoke-virtual {p1}, Lh/d0;->close()V

    return-object v0

    :catchall_8
    move-exception v0

    invoke-virtual {p1}, Lh/d0;->close()V

    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lh/d0;

    invoke-virtual {p0, p1}, Lk/a$a;->a(Lh/d0;)Lh/d0;

    move-result-object p1

    return-object p1
.end method

###### Class k.a.b (k.a$b)
.class final Lk/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/e<",
        "Lh/b0;",
        "Lh/b0;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk/a$b;

    invoke-direct {v0}, Lk/a$b;-><init>()V

    sput-object v0, Lk/a$b;->a:Lk/a$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/b0;)Lh/b0;
    .registers 2

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lh/b0;

    invoke-virtual {p0, p1}, Lk/a$b;->a(Lh/b0;)Lh/b0;

    return-object p1
.end method

###### Class k.a.c (k.a$c)
.class final Lk/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/e<",
        "Lh/d0;",
        "Lh/d0;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk/a$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk/a$c;

    invoke-direct {v0}, Lk/a$c;-><init>()V

    sput-object v0, Lk/a$c;->a:Lk/a$c;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/d0;)Lh/d0;
    .registers 2

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lh/d0;

    invoke-virtual {p0, p1}, Lk/a$c;->a(Lh/d0;)Lh/d0;

    return-object p1
.end method

###### Class k.a.d (k.a$d)
.class final Lk/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/e<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk/a$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk/a$d;

    invoke-direct {v0}, Lk/a$d;-><init>()V

    sput-object v0, Lk/a$d;->a:Lk/a$d;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lk/a$d;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class k.a.e (k.a$e)
.class final Lk/a$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/e<",
        "Lh/d0;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lk/a$e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk/a$e;

    invoke-direct {v0}, Lk/a$e;-><init>()V

    sput-object v0, Lk/a$e;->a:Lk/a$e;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lh/d0;)Ljava/lang/Void;
    .registers 2

    invoke-virtual {p1}, Lh/d0;->close()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lh/d0;

    invoke-virtual {p0, p1}, Lk/a$e;->a(Lh/d0;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
