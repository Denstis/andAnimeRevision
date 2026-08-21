###### Class c.a.a.s.a (c.a.a.s.a)
.class public final Lc/a/a/s/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/g;


# static fields
.field private static final b:Lc/a/a/s/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lc/a/a/s/a;

    invoke-direct {v0}, Lc/a/a/s/a;-><init>()V

    sput-object v0, Lc/a/a/s/a;->b:Lc/a/a/s/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/a/a/s/a;
    .registers 1

    sget-object v0, Lc/a/a/s/a;->b:Lc/a/a/s/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "EmptySignature"

    return-object v0
.end method
