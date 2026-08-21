###### Class animebestapp.com.models.AdBanner (animebestapp.com.models.AdBanner)
.class public final Lanimebestapp/com/models/AdBanner;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lanimebestapp/com/models/AdBanner;->isEnabled:Z

    iput-object p2, p0, Lanimebestapp/com/models/AdBanner;->url:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lanimebestapp/com/models/AdBanner;ZLjava/lang/String;ILjava/lang/Object;)Lanimebestapp/com/models/AdBanner;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-boolean p1, p0, Lanimebestapp/com/models/AdBanner;->isEnabled:Z

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lanimebestapp/com/models/AdBanner;->url:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lanimebestapp/com/models/AdBanner;->copy(ZLjava/lang/String;)Lanimebestapp/com/models/AdBanner;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/models/AdBanner;->isEnabled:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/AdBanner;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ZLjava/lang/String;)Lanimebestapp/com/models/AdBanner;
    .registers 4

    const-string v0, "url"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/models/AdBanner;

    invoke-direct {v0, p1, p2}, Lanimebestapp/com/models/AdBanner;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-eq p0, p1, :cond_21

    instance-of v1, p1, Lanimebestapp/com/models/AdBanner;

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    check-cast p1, Lanimebestapp/com/models/AdBanner;

    iget-boolean v1, p0, Lanimebestapp/com/models/AdBanner;->isEnabled:Z

    iget-boolean v3, p1, Lanimebestapp/com/models/AdBanner;->isEnabled:Z

    if-ne v1, v3, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_20

    iget-object v1, p0, Lanimebestapp/com/models/AdBanner;->url:Ljava/lang/String;

    iget-object p1, p1, Lanimebestapp/com/models/AdBanner;->url:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    return v2

    :cond_21
    :goto_21
    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/AdBanner;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-boolean v0, p0, Lanimebestapp/com/models/AdBanner;->isEnabled:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :cond_5
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lanimebestapp/com/models/AdBanner;->url:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lanimebestapp/com/models/AdBanner;->isEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdBanner(isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lanimebestapp/com/models/AdBanner;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/AdBanner;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
