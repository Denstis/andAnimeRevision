###### Class animebestapp.com.models.g (animebestapp.com.models.g)
.class public final Lanimebestapp/com/models/g;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_id"
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fullname"
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "foto"
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_group"
    .end annotation
.end field


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/models/g;->a:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_41

    instance-of v1, p1, Lanimebestapp/com/models/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    check-cast p1, Lanimebestapp/com/models/g;

    iget-wide v3, p0, Lanimebestapp/com/models/g;->a:J

    iget-wide v5, p1, Lanimebestapp/com/models/g;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_40

    iget-object v1, p0, Lanimebestapp/com/models/g;->b:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/models/g;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lanimebestapp/com/models/g;->c:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/models/g;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lanimebestapp/com/models/g;->d:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/models/g;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-object v1, p0, Lanimebestapp/com/models/g;->e:Ljava/lang/String;

    iget-object p1, p1, Lanimebestapp/com/models/g;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    return v2

    :cond_41
    :goto_41
    return v0
.end method

.method public final f()Z
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/models/g;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x37

    const/4 v3, 0x0

    if-eq v1, v2, :cond_79

    const/16 v2, 0x65d

    if-eq v1, v2, :cond_70

    const/16 v2, 0x623

    if-eq v1, v2, :cond_67

    const/16 v2, 0x624

    if-eq v1, v2, :cond_5e

    packed-switch v1, :pswitch_data_84

    packed-switch v1, :pswitch_data_8e

    goto/16 :goto_82

    :pswitch_1f
    const-string v1, "29"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :pswitch_28
    const-string v1, "28"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :pswitch_31
    const-string v1, "27"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :pswitch_3a
    const-string v1, "26"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :pswitch_43
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :pswitch_4c
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :pswitch_55
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :cond_5e
    const-string v1, "15"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :cond_67
    const-string v1, "14"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :cond_70
    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :cond_79
    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto :goto_83

    :cond_82
    :goto_82
    const/4 v3, 0x1

    :goto_83
    return v3

    :pswitch_data_84
    .packed-switch 0x31
        :pswitch_55
        :pswitch_4c
        :pswitch_43
    .end packed-switch

    :pswitch_data_8e
    .packed-switch 0x644
        :pswitch_3a
        :pswitch_31
        :pswitch_28
        :pswitch_1f
    .end packed-switch
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lanimebestapp/com/models/g;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/g;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/g;->d:Ljava/lang/String;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3a
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanimebestapp/com/models/g;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fullname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", foto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
