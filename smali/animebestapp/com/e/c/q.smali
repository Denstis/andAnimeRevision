###### Class animebestapp.com.e.c.q (animebestapp.com.e.c.q)
.class public final Lanimebestapp/com/e/c/q;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final approve:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "approve"
    .end annotation
.end field

.field private final category:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field private final hash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hash"
    .end annotation
.end field

.field private final limit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limit"
    .end annotation
.end field

.field private final method:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "method"
    .end annotation
.end field

.field private final offset:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation
.end field

.field private final sort:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort"
    .end annotation
.end field

.field private final where:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "where"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lanimebestapp/com/e/c/q;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;ILg/p/b/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 10

    const-string v0, "hash"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "where"

    invoke-static {p8, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lanimebestapp/com/e/c/q;->hash:Ljava/lang/String;

    iput-object p2, p0, Lanimebestapp/com/e/c/q;->method:Ljava/lang/String;

    iput p3, p0, Lanimebestapp/com/e/c/q;->offset:I

    iput p4, p0, Lanimebestapp/com/e/c/q;->limit:I

    iput-object p5, p0, Lanimebestapp/com/e/c/q;->category:Ljava/lang/String;

    iput-object p6, p0, Lanimebestapp/com/e/c/q;->sort:Ljava/lang/String;

    iput p7, p0, Lanimebestapp/com/e/c/q;->approve:I

    iput-object p8, p0, Lanimebestapp/com/e/c/q;->where:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;ILg/p/b/d;)V
    .registers 20

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_9

    const-string v1, "cxbthdf3234ss1d1ssav21sd21sv12f3"

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_11

    const-string v2, "getPostList"

    goto :goto_12

    :cond_11
    move-object v2, p2

    :goto_12
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    goto :goto_1a

    :cond_19
    move v3, p3

    :goto_1a
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_20

    const/4 v5, 0x5

    goto :goto_21

    :cond_20
    move v5, p4

    :goto_21
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_27

    const/4 v6, 0x0

    goto :goto_28

    :cond_27
    move-object v6, p5

    :goto_28
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_2f

    const-string v7, "date"

    goto :goto_30

    :cond_2f
    move-object v7, p6

    :goto_30
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_36

    const/4 v8, 0x1

    goto :goto_38

    :cond_36
    move/from16 v8, p7

    :goto_38
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3f

    new-array v0, v4, [Ljava/lang/String;

    goto :goto_41

    :cond_3f
    move-object/from16 v0, p8

    :goto_41
    move-object p1, p0

    move-object p2, v1

    move-object p3, v2

    move p4, v3

    move p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move/from16 p8, v8

    move-object/from16 p9, v0

    invoke-direct/range {p1 .. p9}, Lanimebestapp/com/e/c/q;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lanimebestapp/com/e/c/q;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;ILjava/lang/Object;)Lanimebestapp/com/e/c/q;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lanimebestapp/com/e/c/q;->hash:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lanimebestapp/com/e/c/q;->method:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget v4, v0, Lanimebestapp/com/e/c/q;->offset:I

    goto :goto_1b

    :cond_1a
    move v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget v5, v0, Lanimebestapp/com/e/c/q;->limit:I

    goto :goto_23

    :cond_22
    move v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lanimebestapp/com/e/c/q;->category:Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lanimebestapp/com/e/c/q;->sort:Ljava/lang/String;

    goto :goto_33

    :cond_32
    move-object v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget v8, v0, Lanimebestapp/com/e/c/q;->approve:I

    goto :goto_3c

    :cond_3a
    move/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget-object v1, v0, Lanimebestapp/com/e/c/q;->where:[Ljava/lang/String;

    goto :goto_45

    :cond_43
    move-object/from16 v1, p8

    :goto_45
    move-object p1, v2

    move-object p2, v3

    move p3, v4

    move p4, v5

    move-object p5, v6

    move-object p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lanimebestapp/com/e/c/q;->copy(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Lanimebestapp/com/e/c/q;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/e/c/q;->offset:I

    return v0
.end method

.method public final component4()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/e/c/q;->limit:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/e/c/q;->approve:I

    return v0
.end method

.method public final component8()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->where:[Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Lanimebestapp/com/e/c/q;
    .registers 19

    const-string v0, "hash"

    move-object v2, p1

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    move-object v3, p2

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "where"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lanimebestapp/com/e/c/q;

    move-object v1, v0

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lanimebestapp/com/e/c/q;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-eq p0, p1, :cond_5f

    instance-of v1, p1, Lanimebestapp/com/e/c/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_5e

    check-cast p1, Lanimebestapp/com/e/c/q;

    iget-object v1, p0, Lanimebestapp/com/e/c/q;->hash:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/e/c/q;->hash:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lanimebestapp/com/e/c/q;->method:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/e/c/q;->method:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget v1, p0, Lanimebestapp/com/e/c/q;->offset:I

    iget v3, p1, Lanimebestapp/com/e/c/q;->offset:I

    if-ne v1, v3, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    if-eqz v1, :cond_5e

    iget v1, p0, Lanimebestapp/com/e/c/q;->limit:I

    iget v3, p1, Lanimebestapp/com/e/c/q;->limit:I

    if-ne v1, v3, :cond_31

    const/4 v1, 0x1

    goto :goto_32

    :cond_31
    const/4 v1, 0x0

    :goto_32
    if-eqz v1, :cond_5e

    iget-object v1, p0, Lanimebestapp/com/e/c/q;->category:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/e/c/q;->category:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lanimebestapp/com/e/c/q;->sort:Ljava/lang/String;

    iget-object v3, p1, Lanimebestapp/com/e/c/q;->sort:Ljava/lang/String;

    invoke-static {v1, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget v1, p0, Lanimebestapp/com/e/c/q;->approve:I

    iget v3, p1, Lanimebestapp/com/e/c/q;->approve:I

    if-ne v1, v3, :cond_50

    const/4 v1, 0x1

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    if-eqz v1, :cond_5e

    iget-object v1, p0, Lanimebestapp/com/e/c/q;->where:[Ljava/lang/String;

    iget-object p1, p1, Lanimebestapp/com/e/c/q;->where:[Ljava/lang/String;

    invoke-static {v1, p1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    goto :goto_5f

    :cond_5e
    return v2

    :cond_5f
    :goto_5f
    return v0
.end method

.method public final getApprove()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/e/c/q;->approve:I

    return v0
.end method

.method public final getCategory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getHash()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public final getLimit()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/e/c/q;->limit:I

    return v0
.end method

.method public final getMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getOffset()I
    .registers 2

    iget v0, p0, Lanimebestapp/com/e/c/q;->offset:I

    return v0
.end method

.method public final getSort()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public final getWhere()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->where:[Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/e/c/q;->hash:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/e/c/q;->method:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lanimebestapp/com/e/c/q;->offset:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lanimebestapp/com/e/c/q;->limit:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/e/c/q;->category:Ljava/lang/String;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/e/c/q;->sort:Ljava/lang/String;

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lanimebestapp/com/e/c/q;->approve:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lanimebestapp/com/e/c/q;->where:[Ljava/lang/String;

    if-eqz v2, :cond_4b

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    :cond_4b
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchRequest(hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/q;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/q;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanimebestapp/com/e/c/q;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanimebestapp/com/e/c/q;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/q;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/q;->sort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", approve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lanimebestapp/com/e/c/q;->approve:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", where="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanimebestapp/com/e/c/q;->where:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
