###### Class animebestapp.com.e.c.d (animebestapp.com.e.c.d)
.class public final Lanimebestapp/com/e/c/d;
.super Lanimebestapp/com/e/c/b;
.source ""


# instance fields
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
.method public constructor <init>(JJ)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "checkListElement"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v0}, Lanimebestapp/com/e/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILg/p/b/d;)V

    iput-wide p1, p0, Lanimebestapp/com/e/c/d;->postId:J

    iput-wide p3, p0, Lanimebestapp/com/e/c/d;->userId:J

    return-void
.end method

.method public static synthetic copy$default(Lanimebestapp/com/e/c/d;JJILjava/lang/Object;)Lanimebestapp/com/e/c/d;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-wide p1, p0, Lanimebestapp/com/e/c/d;->postId:J

    :cond_6
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_c

    iget-wide p3, p0, Lanimebestapp/com/e/c/d;->userId:J

    :cond_c
    invoke-virtual {p0, p1, p2, p3, p4}, Lanimebestapp/com/e/c/d;->copy(JJ)Lanimebestapp/com/e/c/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/e/c/d;->postId:J

    return-wide v0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/e/c/d;->userId:J

    return-wide v0
.end method

.method public final copy(JJ)Lanimebestapp/com/e/c/d;
    .registers 6

    new-instance v0, Lanimebestapp/com/e/c/d;

    invoke-direct {v0, p1, p2, p3, p4}, Lanimebestapp/com/e/c/d;-><init>(JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_26

    instance-of v1, p1, Lanimebestapp/com/e/c/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    check-cast p1, Lanimebestapp/com/e/c/d;

    iget-wide v3, p0, Lanimebestapp/com/e/c/d;->postId:J

    iget-wide v5, p1, Lanimebestapp/com/e/c/d;->postId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_25

    iget-wide v3, p0, Lanimebestapp/com/e/c/d;->userId:J

    iget-wide v5, p1, Lanimebestapp/com/e/c/d;->userId:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    return v2

    :cond_26
    :goto_26
    return v0
.end method

.method public final getPostId()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/e/c/d;->postId:J

    return-wide v0
.end method

.method public final getUserId()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/e/c/d;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    iget-wide v0, p0, Lanimebestapp/com/e/c/d;->postId:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lanimebestapp/com/e/c/d;->userId:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckFavoriteRequest(postId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanimebestapp/com/e/c/d;->postId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanimebestapp/com/e/c/d;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
