###### Class k.k (k.k)
.class Lk/k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/k$a;,
        Lk/k$b;
    }
.end annotation


# static fields
.field private static final a:Lk/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lk/k;->b()Lk/k;

    move-result-object v0

    sput-object v0, Lk/k;->a:Lk/k;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b()Lk/k;
    .registers 1

    const-string v0, "android.os.Build"

    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_f

    new-instance v0, Lk/k$a;

    invoke-direct {v0}, Lk/k$a;-><init>()V
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    :cond_f
    const-string v0, "java.util.Optional"

    :try_start_11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v0, Lk/k$b;

    invoke-direct {v0}, Lk/k$b;-><init>()V
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    new-instance v0, Lk/k;

    invoke-direct {v0}, Lk/k;-><init>()V

    return-object v0
.end method

.method static c()Lk/k;
    .registers 1

    sget-object v0, Lk/k;->a:Lk/k;

    return-object v0
.end method


# virtual methods
.method varargs a(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method a()Ljava/util/concurrent/Executor;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method a(Ljava/util/concurrent/Executor;)Lk/c$a;
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Lk/g;

    invoke-direct {v0, p1}, Lk/g;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_8
    sget-object p1, Lk/f;->a:Lk/c$a;

    return-object p1
.end method

.method a(Ljava/lang/reflect/Method;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

###### Class k.k.a (k.k$a)
.class Lk/k$a;
.super Lk/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk/k$a$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lk/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .registers 2

    new-instance v0, Lk/k$a$a;

    invoke-direct {v0}, Lk/k$a$a;-><init>()V

    return-object v0
.end method

.method a(Ljava/util/concurrent/Executor;)Lk/c$a;
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Lk/g;

    invoke-direct {v0, p1}, Lk/g;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

###### Class k.k.a.ExecutorC0198a (k.k$a$a)
.class Lk/k$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final b:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lk/k$a$a;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lk/k$a$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

###### Class k.k.b (k.k$b)
.class Lk/k$b;
.super Lk/k;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lk/k;-><init>()V

    return-void
.end method


# virtual methods
.method varargs a(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-class v0, Ljava/lang/invoke/MethodHandles$Lookup;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-virtual {v0, p1, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/reflect/Method;)Z
    .registers 2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result p1

    return p1
.end method
