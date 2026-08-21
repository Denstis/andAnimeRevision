###### Class animebestapp.com.e.c.i (animebestapp.com.e.c.i)
.class public final Lanimebestapp/com/e/c/i;
.super Lanimebestapp/com/e/c/b;
.source ""


# instance fields
.field private final listType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list_type"
    .end annotation
.end field

.field private final postId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "post_id"
    .end annotation
.end field

.field private final userId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const-string v1, "setListElement"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v0}, Lanimebestapp/com/e/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILg/p/b/d;)V

    iput-wide p1, p0, Lanimebestapp/com/e/c/i;->postId:J

    iput-wide p3, p0, Lanimebestapp/com/e/c/i;->userId:J

    iput-object p5, p0, Lanimebestapp/com/e/c/i;->listType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;ILg/p/b/d;)V
    .registers 14

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_5

    const/4 p5, 0x0

    :cond_5
    move-object v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lanimebestapp/com/e/c/i;-><init>(JJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lanimebestapp/com/e/c/i;JJLjava/lang/String;ILjava/lang/Object;)Lanimebestapp/com/e/c/i;
    .registers 14

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-wide p1, p0, Lanimebestapp/com/e/c/i;->postId:J

    :cond_6
    move-wide v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_d

    iget-wide p3, p0, Lanimebestapp/com/e/c/i;->userId:J

    :cond_d
    move-wide v3, p3

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_14

    iget-object p5, p0, Lanimebestapp/com/e/c/i;->listType:Ljava/lang/String;

    :cond_14
    move-object v5, p5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lanimebestapp/com/e/c/i;->copy(JJLjava/lang/String;)Lanimebestapp/com/e/c/i;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/e/c/i;->postId:J

    return-wide v0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/e/c/i;->userId:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/i;->listType:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JJLjava/lang/String;)Lanimebestapp/com/e/c/i;
    .registers 13

    new-instance v6, Lanimebestapp/com/e/c/i;

    move-object v0, v6

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lanimebestapp/com/e/c/i;-><init>(JJLjava/lang/String;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_30

    instance-of v1, p1, Lanimebestapp/com/e/c/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    check-cast p1, Lanimebestapp/com/e/c/i;

    iget-wide v3, p0, Lanimebestapp/com/e/c/i;->postId:J

    iget-wide v5, p1, Lanimebestapp/com/e/c/i;->postId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_2f

    iget-wide v3, p0, Lanimebestapp/com/e/c/i;->userId:J

    iget-wide v5, p1, Lanimebestapp/com/e/c/i;->userId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-eqz v1, :cond_2f

    iget-object v1, p0, Lanimebestapp/com/e/c/i;->listType:Ljava/lang/String;

    iget-object p1, p1, Lanimebestapp/com/e/c/i;->listType:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_30

    :cond_2f
    return v2

    :cond_30
    :goto_30
    return v0
.end method

.method public final getListType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/i;->listType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostId()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/e/c/i;->postId:J

    return-wide v0
.end method

.method public final getUserId()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/e/c/i;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    iget-wide v0, p0, Lanimebestapp/com/e/c/i;->postId:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lanimebestapp/com/e/c/i;->userId:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/e/c/i;->listType:Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ElementRequest(postId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanimebestapp/com/e/c/i;->postId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanimebestapp/com/e/c/i;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", listType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/i;->listType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
