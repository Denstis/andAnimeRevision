###### Class animebestapp.com.models.News (animebestapp.com.models.News)
.class public final Lanimebestapp/com/models/News;
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

.field private final descr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "descr"
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

.field private final short_story:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "short_story"
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private final xfields:Lanimebestapp/com/models/NewsXFields;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "xfields"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanimebestapp/com/models/NewsXFields;Ljava/lang/String;)V
    .registers 10

    const-string v0, "title"

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descr"

    invoke-static {p4, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "short_story"

    invoke-static {p5, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "full_story"

    invoke-static {p6, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lanimebestapp/com/models/News;->id:J

    iput-object p3, p0, Lanimebestapp/com/models/News;->title:Ljava/lang/String;

    iput-object p4, p0, Lanimebestapp/com/models/News;->descr:Ljava/lang/String;

    iput-object p5, p0, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

    iput-object p6, p0, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

    iput-object p7, p0, Lanimebestapp/com/models/News;->xfields:Lanimebestapp/com/models/NewsXFields;

    iput-object p8, p0, Lanimebestapp/com/models/News;->category:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lanimebestapp/com/models/News;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanimebestapp/com/models/NewsXFields;Ljava/lang/String;ILjava/lang/Object;)Lanimebestapp/com/models/News;
    .registers 20

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_8

    iget-wide v1, v0, Lanimebestapp/com/models/News;->id:J

    goto :goto_9

    :cond_8
    move-wide v1, p1

    :goto_9
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_10

    iget-object v3, v0, Lanimebestapp/com/models/News;->title:Ljava/lang/String;

    goto :goto_11

    :cond_10
    move-object v3, p3

    :goto_11
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_18

    iget-object v4, v0, Lanimebestapp/com/models/News;->descr:Ljava/lang/String;

    goto :goto_19

    :cond_18
    move-object v4, p4

    :goto_19
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_20

    iget-object v5, v0, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

    goto :goto_21

    :cond_20
    move-object v5, p5

    :goto_21
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_28

    iget-object v6, v0, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

    goto :goto_29

    :cond_28
    move-object v6, p6

    :goto_29
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_30

    iget-object v7, v0, Lanimebestapp/com/models/News;->xfields:Lanimebestapp/com/models/NewsXFields;

    goto :goto_32

    :cond_30
    move-object/from16 v7, p7

    :goto_32
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_39

    iget-object v8, v0, Lanimebestapp/com/models/News;->category:Ljava/lang/String;

    goto :goto_3b

    :cond_39
    move-object/from16 v8, p8

    :goto_3b
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lanimebestapp/com/models/News;->copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanimebestapp/com/models/NewsXFields;Ljava/lang/String;)Lanimebestapp/com/models/News;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/models/News;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->descr:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lanimebestapp/com/models/NewsXFields;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->xfields:Lanimebestapp/com/models/NewsXFields;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanimebestapp/com/models/NewsXFields;Ljava/lang/String;)Lanimebestapp/com/models/News;
    .registers 19

    const-string v0, "title"

    move-object v4, p3

    invoke-static {p3, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descr"

    move-object v5, p4

    invoke-static {p4, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "short_story"

    move-object v6, p5

    invoke-static {p5, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "full_story"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/models/News;

    move-object v1, v0

    move-wide v2, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lanimebestapp/com/models/News;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lanimebestapp/com/models/NewsXFields;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-eq p0, p1, :cond_55

    instance-of v1, p1, Lanimebestapp/com/models/News;

    const/4 v2, 0x0

    if-eqz v1, :cond_54

    check-cast p1, Lanimebestapp/com/models/News;

    iget-wide v3, p0, Lanimebestapp/com/models/News;->id:J

    iget-wide v5, p1, Lanimebestapp/com/models/News;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_54

    iget-object v1, p0, Lanimebestapp/com/models/News;->title:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/models/News;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lanimebestapp/com/models/News;->descr:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/models/News;->descr:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lanimebestapp/com/models/News;->xfields:Lanimebestapp/com/models/NewsXFields;

    iget-object v3, p1, Lanimebestapp/com/models/News;->xfields:Lanimebestapp/com/models/NewsXFields;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lanimebestapp/com/models/News;->category:Ljava/lang/String;

    iget-object p1, p1, Lanimebestapp/com/models/News;->category:Ljava/lang/String;

    invoke-static {v1, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    goto :goto_55

    :cond_54
    return v2

    :cond_55
    :goto_55
    return v0
.end method

.method public final getCategory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->descr:Ljava/lang/String;

    return-object v0
.end method

.method public final getFull_story()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/models/News;->id:J

    return-wide v0
.end method

.method public getIdModel()J
    .registers 3

    iget-wide v0, p0, Lanimebestapp/com/models/News;->id:J

    return-wide v0
.end method

.method public final getPoster()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

    const-string v2, "src=\""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lg/s/e;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    iget-object v8, p0, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

    iget-object v2, p0, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

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

.method public final getPosterFull()Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

    const-string v2, "src=\""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lg/s/e;->b(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    iget-object v8, p0, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

    iget-object v2, p0, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

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

.method public final getShort_story()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getXfields()Lanimebestapp/com/models/NewsXFields;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/models/News;->xfields:Lanimebestapp/com/models/NewsXFields;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lanimebestapp/com/models/News;->id:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/News;->title:Ljava/lang/String;

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

    iget-object v0, p0, Lanimebestapp/com/models/News;->descr:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/News;->xfields:Lanimebestapp/com/models/NewsXFields;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lanimebestapp/com/models/NewsXFields;->hashCode()I

    move-result v0

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lanimebestapp/com/models/News;->category:Ljava/lang/String;

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_54
    add-int/2addr v1, v2

    return v1
.end method

.method public final setCategory(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/models/News;->category:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "News(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lanimebestapp/com/models/News;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/News;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", descr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/News;->descr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", short_story="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/News;->short_story:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", full_story="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/News;->full_story:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", xfields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/News;->xfields:Lanimebestapp/com/models/NewsXFields;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/models/News;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
