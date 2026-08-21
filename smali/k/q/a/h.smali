###### Class k.q.a.h (k.q.a.h)
.class public final Lk/q/a/h;
.super Lk/c$a;
.source ""


# instance fields
.field private final a:Le/a/n;

.field private final b:Z


# direct methods
.method private constructor <init>(Le/a/n;Z)V
    .registers 3

    invoke-direct {p0}, Lk/c$a;-><init>()V

    iput-object p1, p0, Lk/q/a/h;->a:Le/a/n;

    iput-boolean p2, p0, Lk/q/a/h;->b:Z

    return-void
.end method

.method public static a()Lk/q/a/h;
    .registers 3

    new-instance v0, Lk/q/a/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk/q/a/h;-><init>(Le/a/n;Z)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lk/n;)Lk/c;
    .registers 16
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

    const-class p3, Le/a/b;

    if-ne p2, p3, :cond_1b

    new-instance p1, Lk/q/a/g;

    const-class v1, Ljava/lang/Void;

    iget-object v2, p0, Lk/q/a/h;->a:Le/a/n;

    iget-boolean v3, p0, Lk/q/a/h;->b:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lk/q/a/g;-><init>(Ljava/lang/reflect/Type;Le/a/n;ZZZZZZZ)V

    return-object p1

    :cond_1b
    const-class p3, Le/a/e;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_23

    const/4 v8, 0x1

    goto :goto_24

    :cond_23
    const/4 v8, 0x0

    :goto_24
    const-class p3, Le/a/o;

    if-ne p2, p3, :cond_2a

    const/4 v9, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v9, 0x0

    :goto_2b
    const-class p3, Le/a/f;

    if-ne p2, p3, :cond_31

    const/4 v10, 0x1

    goto :goto_32

    :cond_31
    const/4 v10, 0x0

    :goto_32
    const-class p3, Le/a/h;

    if-eq p2, p3, :cond_3e

    if-nez v8, :cond_3e

    if-nez v9, :cond_3e

    if-nez v10, :cond_3e

    const/4 p1, 0x0

    return-object p1

    :cond_3e
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez p2, :cond_7a

    if-nez v8, :cond_51

    if-nez v9, :cond_4e

    if-eqz v10, :cond_4b

    const-string p1, "Maybe"

    goto :goto_53

    :cond_4b
    const-string p1, "Observable"

    goto :goto_53

    :cond_4e
    const-string p1, "Single"

    goto :goto_53

    :cond_51
    const-string p1, "Flowable"

    :goto_53
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " return type must be parameterized as "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<Foo> or "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<? extends Foo>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7a
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p1}, Lk/c$a;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lk/c$a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Lk/m;

    if-ne p2, p3, :cond_9e

    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_96

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p1}, Lk/c$a;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    move-object v3, p1

    const/4 v6, 0x0

    :goto_94
    const/4 v7, 0x0

    goto :goto_ba

    :cond_96
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9e
    const-class p3, Lk/q/a/e;

    if-ne p2, p3, :cond_b7

    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_af

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v1, p1}, Lk/c$a;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    move-object v3, p1

    const/4 v6, 0x1

    goto :goto_94

    :cond_af
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b7
    move-object v3, p1

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_ba
    new-instance p1, Lk/q/a/g;

    iget-object v4, p0, Lk/q/a/h;->a:Le/a/n;

    iget-boolean v5, p0, Lk/q/a/h;->b:Z

    const/4 v11, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lk/q/a/g;-><init>(Ljava/lang/reflect/Type;Le/a/n;ZZZZZZZ)V

    return-object p1
.end method
