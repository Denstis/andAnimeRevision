###### Class animebestapp.com.c.b.b (animebestapp.com.c.b.b)
.class public final Lanimebestapp/com/c/b/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;)Lanimebestapp/com/b/b/a;
    .registers 3

    const-string v0, "app"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/b/b/a;

    invoke-direct {v0, p1}, Lanimebestapp/com/b/b/a;-><init>(Landroid/app/Application;)V

    return-object v0
.end method

.method public final a(Lanimebestapp/com/e/a;)Lanimebestapp/com/e/b;
    .registers 3

    const-string v0, "commonApi"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/e/b;

    invoke-direct {v0, p1}, Lanimebestapp/com/e/b;-><init>(Lanimebestapp/com/e/a;)V

    return-object v0
.end method

.method public final a()Lcom/google/gson/Gson;
    .registers 3

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setLenient()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    const-string v1, "GsonBuilder()\n          \u2026t()\n            .create()"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
