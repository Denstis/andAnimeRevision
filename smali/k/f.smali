###### Class k.f (k.f)
.class final Lk/f;
.super Lk/c$a;
.source ""


# static fields
.field static final a:Lk/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk/f;

    invoke-direct {v0}, Lk/f;-><init>()V

    sput-object v0, Lk/f;->a:Lk/c$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lk/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lk/n;)Lk/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lk/n;",
            ")",
            "Lk/c<",
            "**>;"
        }
    .end annotation

    invoke-static {p1}, Lk/c$a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lk/b;

    if-eq p2, p3, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    invoke-static {p1}, Lk/p;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    new-instance p2, Lk/f$a;

    invoke-direct {p2, p0, p1}, Lk/f$a;-><init>(Lk/f;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

###### Class k.f.a (k.f$a)
.class Lk/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lk/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk/f;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lk/n;)Lk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/c<",
        "Ljava/lang/Object;",
        "Lk/b<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lk/f;Ljava/lang/reflect/Type;)V
    .registers 3

    iput-object p2, p0, Lk/f$a;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lk/b;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lk/f$a;->a(Lk/b;)Lk/b;

    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lk/f$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public a(Lk/b;)Lk/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk/b<",
            "Ljava/lang/Object;",
            ">;)",
            "Lk/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
