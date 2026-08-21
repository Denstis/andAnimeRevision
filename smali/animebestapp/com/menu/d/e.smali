###### Class animebestapp.com.menu.d.e (animebestapp.com.menu.d.e)
.class public final Lanimebestapp/com/menu/d/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/menu/d/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_key"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/menu/d/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lanimebestapp/com/menu/d/e;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lanimebestapp/com/menu/d/e;->c:Z

    return-void
.end method

.method public static synthetic a(Lanimebestapp/com/menu/d/e;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lanimebestapp/com/menu/d/e;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lanimebestapp/com/menu/d/e;->a:Ljava/lang/String;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lanimebestapp/com/menu/d/e;->b:Ljava/lang/String;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-boolean p3, p0, Lanimebestapp/com/menu/d/e;->c:Z

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lanimebestapp/com/menu/d/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Lanimebestapp/com/menu/d/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Lanimebestapp/com/menu/d/e;
    .registers 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_key"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/menu/d/e;

    invoke-direct {v0, p1, p2, p3}, Lanimebestapp/com/menu/d/e;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/menu/d/e;->c:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2b

    instance-of v1, p1, Lanimebestapp/com/menu/d/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    check-cast p1, Lanimebestapp/com/menu/d/e;

    iget-object v1, p0, Lanimebestapp/com/menu/d/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/menu/d/e;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lanimebestapp/com/menu/d/e;->b:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/menu/d/e;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, Lanimebestapp/com/menu/d/e;->c:Z

    iget-boolean p1, p1, Lanimebestapp/com/menu/d/e;->c:Z

    if-ne v1, p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    if-eqz p1, :cond_2a

    goto :goto_2b

    :cond_2a
    return v2

    :cond_2b
    :goto_2b
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/menu/d/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/menu/d/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/menu/d/e;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/menu/d/e;->b:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lanimebestapp/com/menu/d/e;->c:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwitchMenuItem(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/menu/d/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/menu/d/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lanimebestapp/com/menu/d/e;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
