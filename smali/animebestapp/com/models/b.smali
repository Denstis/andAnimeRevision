###### Class animebestapp.com.models.b (animebestapp.com.models.b)
.class public final Lanimebestapp/com/models/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list_type"
    .end annotation
.end field


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/models/b;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-eq p0, p1, :cond_17

    instance-of v1, p1, Lanimebestapp/com/models/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    check-cast p1, Lanimebestapp/com/models/b;

    iget v1, p0, Lanimebestapp/com/models/b;->a:I

    iget p1, p1, Lanimebestapp/com/models/b;->a:I

    if-ne v1, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    return v2

    :cond_17
    :goto_17
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/models/b;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckFavorite(listType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanimebestapp/com/models/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
