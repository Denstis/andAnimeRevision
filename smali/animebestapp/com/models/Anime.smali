###### Class animebestapp.com.models.Anime (animebestapp.com.models.Anime)
.class public final Lanimebestapp/com/models/Anime;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lanimebestapp/com/models/d;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field private final full_story:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "full_story"
    .end annotation
.end field

.field private final id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final rating:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "m_rating"
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private final xfields:Lanimebestapp/com/models/XFields;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xfields"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lanimebestapp/com/models/XFields;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9

    const-string v0, "title"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "full_story"

    invoke-static {p4, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lanimebestapp/com/models/Anime;->id:J

    iput-object p3, p0, Lanimebestapp/com/models/Anime;->title:Ljava/lang/String;

    iput-object p4, p0, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    iput-object p5, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    iput-object p6, p0, Lanimebestapp/com/models/Anime;->rating:Ljava/lang/Object;

    iput-object p7, p0, Lanimebestapp/com/models/Anime;->category:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lanimebestapp/com/models/Anime;JLjava/lang/String;Ljava/lang/String;Lanimebestapp/com/models/XFields;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Lanimebestapp/com/models/Anime;
    .registers 18

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_8

    iget-wide v1, v0, Lanimebestapp/com/models/Anime;->id:J

    goto :goto_9

    :cond_8
    move-wide v1, p1

    :goto_9
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_10

    iget-object v3, v0, Lanimebestapp/com/models/Anime;->title:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v3, p3

    :goto_11
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_18

    iget-object v4, v0, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    goto :goto_19

    :cond_18
    move-object v4, p4

    :goto_19
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_20

    iget-object v5, v0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    goto :goto_21

    :cond_20
    move-object v5, p5

    :goto_21
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_28

    iget-object v6, v0, Lanimebestapp/com/models/Anime;->rating:Ljava/lang/Object;

    goto :goto_29

    :cond_28
    move-object v6, p6

    :goto_29
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_30

    iget-object v7, v0, Lanimebestapp/com/models/Anime;->category:Ljava/lang/String;

    goto :goto_31

    :cond_30
    move-object v7, p7

    :goto_31
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object p7, v7

    invoke-virtual/range {p0 .. p7}, Lanimebestapp/com/models/Anime;->copy(JLjava/lang/String;Ljava/lang/String;Lanimebestapp/com/models/XFields;Ljava/lang/Object;Ljava/lang/String;)Lanimebestapp/com/models/Anime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/models/Anime;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lanimebestapp/com/models/XFields;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    return-object v0
.end method

.method public final component5()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->rating:Ljava/lang/Object;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Lanimebestapp/com/models/XFields;Ljava/lang/Object;Ljava/lang/String;)Lanimebestapp/com/models/Anime;
    .registers 17

    const-string v0, "title"

    move-object v4, p3

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "full_story"

    move-object v5, p4

    invoke-static {p4, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/models/Anime;

    move-object v1, v0

    move-wide v2, p1

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lanimebestapp/com/models/Anime;-><init>(JLjava/lang/String;Ljava/lang/String;Lanimebestapp/com/models/XFields;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4b

    instance-of v1, p1, Lanimebestapp/com/models/Anime;

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    check-cast p1, Lanimebestapp/com/models/Anime;

    iget-wide v3, p0, Lanimebestapp/com/models/Anime;->id:J

    iget-wide v5, p1, Lanimebestapp/com/models/Anime;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_4a

    iget-object v1, p0, Lanimebestapp/com/models/Anime;->title:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/models/Anime;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    iget-object v3, p1, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lanimebestapp/com/models/Anime;->rating:Ljava/lang/Object;

    iget-object v3, p1, Lanimebestapp/com/models/Anime;->rating:Ljava/lang/Object;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lanimebestapp/com/models/Anime;->category:Ljava/lang/String;

    iget-object p1, p1, Lanimebestapp/com/models/Anime;->category:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    goto :goto_4b

    :cond_4a
    return v2

    :cond_4b
    :goto_4b
    return v0
.end method

.method public final getCategory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getFull_story()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/models/Anime;->id:J

    return-wide v0
.end method

.method public getIdModel()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/models/Anime;->id:J

    return-wide v0
.end method

.method public final getPoster()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    const-string v2, "src=\""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lg/s/e;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    iget-object v8, p0, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    iget-object v2, p0, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    const-string v3, "\""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v4, v1

    invoke-static/range {v2 .. v7}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v2

    if-eqz v8, :cond_46

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "http"

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v0}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object v0, v1

    goto :goto_52

    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_46
    new-instance v1, Lg/j;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_52
    return-object v0
.end method

.method public final getRating()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->rating:Ljava/lang/Object;

    return-object v0
.end method

.method public final getScreen()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "https://anime-best.com/uploads/screens/med/"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    iget-object v2, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lanimebestapp/com/models/XFields;->getScreen()Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_d1

    goto :goto_12

    :cond_11
    move-object v2, v3

    :goto_12
    if-eqz v2, :cond_82

    const/4 v2, 0x3

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_18
    if-ge v4, v2, :cond_d5

    :try_start_1a
    sget-object v0, Lg/g;->b:Lg/g$a;

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->getScreen()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<!--MBegin:"

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move v7, v11

    invoke-static/range {v5 .. v10}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0xb

    iget-object v5, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    if-eqz v5, :cond_6d

    invoke-virtual {v5}, Lanimebestapp/com/models/XFields;->getScreen()Ljava/lang/String;

    move-result-object v5

    const-string v6, "|-->"

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move v7, v0

    invoke-static/range {v5 .. v10}, Lg/s/e;->a(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v11

    iget-object v5, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    if-eqz v5, :cond_69

    invoke-virtual {v5}, Lanimebestapp/com/models/XFields;->getScreen()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_61

    invoke-virtual {v5, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lg/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    :cond_61
    new-instance v0, Lg/j;

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v5}, Lg/j;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    invoke-static {}, Lg/p/b/f;->a()V
    :try_end_6c
    .catchall {:try_start_1a .. :try_end_6c} :catchall_75

    throw v3

    :cond_6d
    :try_start_6d
    invoke-static {}, Lg/p/b/f;->a()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_75

    throw v3

    :cond_71
    :try_start_71
    invoke-static {}, Lg/p/b/f;->a()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    throw v3

    :catchall_75
    move-exception v0

    :try_start_76
    sget-object v5, Lg/g;->b:Lg/g$a;

    invoke-static {v0}, Lg/h;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lg/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    if-eqz v4, :cond_cd

    invoke-virtual {v4}, Lanimebestapp/com/models/XFields;->getScreen1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    invoke-virtual {v3}, Lanimebestapp/com/models/XFields;->getScreen2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->getScreen3()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d5

    :cond_cd
    invoke-static {}, Lg/p/b/f;->a()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_d0} :catch_d1

    throw v3

    :catch_d1
    invoke-static {}, Lg/m/j;->a()Ljava/util/List;

    move-result-object v1

    :cond_d5
    :goto_d5
    return-object v1
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getXfields()Lanimebestapp/com/models/XFields;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lanimebestapp/com/models/Anime;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->title:Ljava/lang/String;

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

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->xfields:Lanimebestapp/com/models/XFields;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lanimebestapp/com/models/XFields;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->rating:Ljava/lang/Object;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/Anime;->category:Ljava/lang/String;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_47
    add-int/2addr v1, v2

    return v1
.end method

.method public final setCategory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/models/Anime;->category:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanimebestapp/com/models/Anime;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " full_story: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/Anime;->full_story:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/Anime;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
