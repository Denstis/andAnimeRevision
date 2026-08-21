###### Class h.h0.f.e (h.h0.f.e)
.class public final Lh/h0/f/e;
.super Ljava/lang/RuntimeException;
.source ""


# static fields
.field private static final c:Ljava/lang/reflect/Method;


# instance fields
.field private b:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Throwable;

    aput-object v3, v1, v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_11

    const-string v2, "addSuppressed"

    :try_start_c
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_11

    goto :goto_12

    :catch_11
    const/4 v0, 0x0

    :goto_12
    sput-object v0, Lh/h0/f/e;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput-object p1, p0, Lh/h0/f/e;->b:Ljava/io/IOException;

    return-void
.end method

.method private a(Ljava/io/IOException;Ljava/io/IOException;)V
    .registers 6

    sget-object v0, Lh/h0/f/e;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_d

    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_d} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_d} :catch_d

    :catch_d
    :cond_d
    return-void
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .registers 2

    iget-object v0, p0, Lh/h0/f/e;->b:Ljava/io/IOException;

    return-object v0
.end method

.method public a(Ljava/io/IOException;)V
    .registers 3

    iget-object v0, p0, Lh/h0/f/e;->b:Ljava/io/IOException;

    invoke-direct {p0, p1, v0}, Lh/h0/f/e;->a(Ljava/io/IOException;Ljava/io/IOException;)V

    iput-object p1, p0, Lh/h0/f/e;->b:Ljava/io/IOException;

    return-void
.end method
