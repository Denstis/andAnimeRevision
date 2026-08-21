###### Class animebestapp.com.e.c.l (animebestapp.com.e.c.l)
.class public final Lanimebestapp/com/e/c/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final result:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/e/c/l;->result:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lanimebestapp/com/e/c/l;Ljava/util/List;ILjava/lang/Object;)Lanimebestapp/com/e/c/l;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lanimebestapp/com/e/c/l;->result:Ljava/util/List;

    :cond_6
    invoke-virtual {p0, p1}, Lanimebestapp/com/e/c/l;->copy(Ljava/util/List;)Lanimebestapp/com/e/c/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/e/c/l;->result:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lanimebestapp/com/e/c/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;)",
            "Lanimebestapp/com/e/c/l;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/e/c/l;

    invoke-direct {v0, p1}, Lanimebestapp/com/e/c/l;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lanimebestapp/com/e/c/l;

    if-eqz v0, :cond_13

    check-cast p1, Lanimebestapp/com/e/c/l;

    iget-object v0, p0, Lanimebestapp/com/e/c/l;->result:Ljava/util/List;

    iget-object p1, p1, Lanimebestapp/com/e/c/l;->result:Ljava/util/List;

    invoke-static {v0, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public final getResult()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lanimebestapp/com/models/Anime;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lanimebestapp/com/e/c/l;->result:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/l;->result:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetFavoritesResponse(result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/l;->result:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
