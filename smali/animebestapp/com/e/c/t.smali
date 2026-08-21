###### Class animebestapp.com.e.c.t (animebestapp.com.e.c.t)
.class public final Lanimebestapp/com/e/c/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final result:Lanimebestapp/com/models/g;
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
.method public constructor <init>(Ljava/lang/String;Lanimebestapp/com/models/g;)V
    .registers 4

    const-string v0, "status"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/e/c/t;->status:Ljava/lang/String;

    iput-object p2, p0, Lanimebestapp/com/e/c/t;->result:Lanimebestapp/com/models/g;

    return-void
.end method

.method public static synthetic copy$default(Lanimebestapp/com/e/c/t;Ljava/lang/String;Lanimebestapp/com/models/g;ILjava/lang/Object;)Lanimebestapp/com/e/c/t;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lanimebestapp/com/e/c/t;->status:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lanimebestapp/com/e/c/t;->result:Lanimebestapp/com/models/g;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/e/c/t;->copy(Ljava/lang/String;Lanimebestapp/com/models/g;)Lanimebestapp/com/e/c/t;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/t;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lanimebestapp/com/models/g;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/t;->result:Lanimebestapp/com/models/g;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lanimebestapp/com/models/g;)Lanimebestapp/com/e/c/t;
    .registers 4

    const-string v0, "status"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/e/c/t;

    invoke-direct {v0, p1, p2}, Lanimebestapp/com/e/c/t;-><init>(Ljava/lang/String;Lanimebestapp/com/models/g;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lanimebestapp/com/e/c/t;

    if-eqz v0, :cond_1d

    check-cast p1, Lanimebestapp/com/e/c/t;

    iget-object v0, p0, Lanimebestapp/com/e/c/t;->status:Ljava/lang/String;

    iget-object v1, p1, Lanimebestapp/com/e/c/t;->status:Ljava/lang/String;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lanimebestapp/com/e/c/t;->result:Lanimebestapp/com/models/g;

    iget-object p1, p1, Lanimebestapp/com/e/c/t;->result:Lanimebestapp/com/models/g;

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

.method public final getResult()Lanimebestapp/com/models/g;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/t;->result:Lanimebestapp/com/models/g;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/t;->status:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/e/c/t;->status:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/e/c/t;->result:Lanimebestapp/com/models/g;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lanimebestapp/com/models/g;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfoResponse(status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/t;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/t;->result:Lanimebestapp/com/models/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
