###### Class c.a.a.r.k.a (c.a.a.r.k.a)
.class public Lc/a/a/r/k/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/r/k/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/a/r/k/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/r/k/b<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final a:Lc/a/a/r/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/k/a<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Lc/a/a/r/k/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/r/k/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc/a/a/r/k/a;

    invoke-direct {v0}, Lc/a/a/r/k/a;-><init>()V

    sput-object v0, Lc/a/a/r/k/a;->a:Lc/a/a/r/k/a;

    new-instance v0, Lc/a/a/r/k/a$a;

    invoke-direct {v0}, Lc/a/a/r/k/a$a;-><init>()V

    sput-object v0, Lc/a/a/r/k/a;->b:Lc/a/a/r/k/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/a/a/r/k/c;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/a/a/r/k/c<",
            "TR;>;"
        }
    .end annotation

    sget-object v0, Lc/a/a/r/k/a;->b:Lc/a/a/r/k/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lc/a/a/r/k/b$a;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

###### Class c.a.a.r.k.a.C0131a (c.a.a.r.k.a$a)
.class public Lc/a/a/r/k/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/a/a/r/k/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/a/r/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/a/a/r/k/c<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/a;Z)Lc/a/a/r/k/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a;",
            "Z)",
            "Lc/a/a/r/k/b<",
            "TR;>;"
        }
    .end annotation

    sget-object p1, Lc/a/a/r/k/a;->a:Lc/a/a/r/k/a;

    return-object p1
.end method
