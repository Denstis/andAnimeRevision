###### Class k.r.a.a (k.r.a.a)
.class public final Lk/r/a/a;
.super Lk/e$a;
.source ""


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;)V
    .registers 2

    invoke-direct {p0}, Lk/e$a;-><init>()V

    iput-object p1, p0, Lk/r/a/a;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method public static a(Lcom/google/gson/Gson;)Lk/r/a/a;
    .registers 2

    if-eqz p0, :cond_8

    new-instance v0, Lk/r/a/a;

    invoke-direct {v0, p0}, Lk/r/a/a;-><init>(Lcom/google/gson/Gson;)V

    return-object v0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "gson == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
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

    iget-object p2, p0, Lk/r/a/a;->a:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    new-instance p2, Lk/r/a/c;

    iget-object p3, p0, Lk/r/a/a;->a:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p1}, Lk/r/a/c;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object p2
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

    iget-object p2, p0, Lk/r/a/a;->a:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    new-instance p2, Lk/r/a/b;

    iget-object p3, p0, Lk/r/a/a;->a:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p1}, Lk/r/a/b;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object p2
.end method
