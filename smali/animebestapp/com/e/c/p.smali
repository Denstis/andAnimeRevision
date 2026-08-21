###### Class animebestapp.com.e.c.p (animebestapp.com.e.c.p)
.class public final Lanimebestapp/com/e/c/p;
.super Lanimebestapp/com/e/c/b;
.source ""


# instance fields
.field private final email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field private final login:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "login"
    .end annotation
.end field

.field private final pass:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "password"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "login"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "externalRegister"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, v0}, Lanimebestapp/com/e/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILg/p/b/d;)V

    iput-object p1, p0, Lanimebestapp/com/e/c/p;->login:Ljava/lang/String;

    iput-object p2, p0, Lanimebestapp/com/e/c/p;->email:Ljava/lang/String;

    iput-object p3, p0, Lanimebestapp/com/e/c/p;->pass:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lanimebestapp/com/e/c/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lanimebestapp/com/e/c/p;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lanimebestapp/com/e/c/p;->login:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lanimebestapp/com/e/c/p;->email:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lanimebestapp/com/e/c/p;->pass:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lanimebestapp/com/e/c/p;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lanimebestapp/com/e/c/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/p;->login:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/p;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/p;->pass:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lanimebestapp/com/e/c/p;
    .registers 5

    const-string v0, "login"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pass"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/e/c/p;

    invoke-direct {v0, p1, p2, p3}, Lanimebestapp/com/e/c/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_29

    instance-of v0, p1, Lanimebestapp/com/e/c/p;

    if-eqz v0, :cond_27

    check-cast p1, Lanimebestapp/com/e/c/p;

    iget-object v0, p0, Lanimebestapp/com/e/c/p;->login:Ljava/lang/String;

    iget-object v1, p1, Lanimebestapp/com/e/c/p;->login:Ljava/lang/String;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lanimebestapp/com/e/c/p;->email:Ljava/lang/String;

    iget-object v1, p1, Lanimebestapp/com/e/c/p;->email:Ljava/lang/String;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lanimebestapp/com/e/c/p;->pass:Ljava/lang/String;

    iget-object p1, p1, Lanimebestapp/com/e/c/p;->pass:Ljava/lang/String;

    invoke-static {v0, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_29

    :cond_27
    const/4 p1, 0x0

    return p1

    :cond_29
    :goto_29
    const/4 p1, 0x1

    return p1
.end method

.method public final getEmail()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/p;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogin()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/p;->login:Ljava/lang/String;

    return-object v0
.end method

.method public final getPass()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/p;->pass:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/e/c/p;->login:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/e/c/p;->email:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/e/c/p;->pass:Ljava/lang/String;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegRequest(login="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/p;->login:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/p;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/p;->pass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
