###### Class animebestapp.com.e.c.e (animebestapp.com.e.c.e)
.class public final Lanimebestapp/com/e/c/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final result:Lanimebestapp/com/models/b;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "result"
    .end annotation
.end field

.field private final status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lanimebestapp/com/models/b;)V
    .registers 4

    const-string v0, "status"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/e/c/e;->status:Ljava/lang/String;

    iput-object p2, p0, Lanimebestapp/com/e/c/e;->result:Lanimebestapp/com/models/b;

    return-void
.end method

.method public static synthetic copy$default(Lanimebestapp/com/e/c/e;Ljava/lang/String;Lanimebestapp/com/models/b;ILjava/lang/Object;)Lanimebestapp/com/e/c/e;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lanimebestapp/com/e/c/e;->status:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lanimebestapp/com/e/c/e;->result:Lanimebestapp/com/models/b;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/e/c/e;->copy(Ljava/lang/String;Lanimebestapp/com/models/b;)Lanimebestapp/com/e/c/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/e;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lanimebestapp/com/models/b;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/e;->result:Lanimebestapp/com/models/b;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lanimebestapp/com/models/b;)Lanimebestapp/com/e/c/e;
    .registers 4

    const-string v0, "status"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/e/c/e;

    invoke-direct {v0, p1, p2}, Lanimebestapp/com/e/c/e;-><init>(Ljava/lang/String;Lanimebestapp/com/models/b;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lanimebestapp/com/e/c/e;

    if-eqz v0, :cond_1d

    check-cast p1, Lanimebestapp/com/e/c/e;

    iget-object v0, p0, Lanimebestapp/com/e/c/e;->status:Ljava/lang/String;

    iget-object v1, p1, Lanimebestapp/com/e/c/e;->status:Ljava/lang/String;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lanimebestapp/com/e/c/e;->result:Lanimebestapp/com/models/b;

    iget-object p1, p1, Lanimebestapp/com/e/c/e;->result:Lanimebestapp/com/models/b;

    invoke-static {v0, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    return p1

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method public final getResult()Lanimebestapp/com/models/b;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/e;->result:Lanimebestapp/com/models/b;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/e;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/e/c/e;->status:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/e/c/e;->result:Lanimebestapp/com/models/b;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lanimebestapp/com/models/b;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckFavoriteResponse(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/e;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/e;->result:Lanimebestapp/com/models/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
