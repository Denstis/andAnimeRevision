###### Class animebestapp.com.c.b.c (animebestapp.com.c.b.c)
.class public final Lanimebestapp/com/c/b/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/c/b<",
        "Lcom/google/gson/Gson;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lanimebestapp/com/c/b/b;


# direct methods
.method public constructor <init>(Lanimebestapp/com/c/b/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/c/b/c;->a:Lanimebestapp/com/c/b/b;

    return-void
.end method

.method public static a(Lanimebestapp/com/c/b/b;)Lanimebestapp/com/c/b/c;
    .registers 2

    new-instance v0, Lanimebestapp/com/c/b/c;

    invoke-direct {v0, p0}, Lanimebestapp/com/c/b/c;-><init>(Lanimebestapp/com/c/b/b;)V

    return-object v0
.end method

.method public static b(Lanimebestapp/com/c/b/b;)Lcom/google/gson/Gson;
    .registers 1

    invoke-static {p0}, Lanimebestapp/com/c/b/c;->c(Lanimebestapp/com/c/b/b;)Lcom/google/gson/Gson;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lanimebestapp/com/c/b/b;)Lcom/google/gson/Gson;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/c/b/b;->a()Lcom/google/gson/Gson;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ld/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/gson/Gson;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/gson/Gson;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/c/b/c;->a:Lanimebestapp/com/c/b/b;

    invoke-static {v0}, Lanimebestapp/com/c/b/c;->b(Lanimebestapp/com/c/b/b;)Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/c/b/c;->get()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method
