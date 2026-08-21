###### Class b.h.h.b (b.h.h.b)
.class public Lb/h/h/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/h/b$b;,
        Lb/h/h/b$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;I)I
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_26

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int v1, v1, v2

    if-lez v1, :cond_1a

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int v1, v1, v2

    if-gtz v1, :cond_23

    :cond_1a
    const/16 v1, 0x65

    if-eq v0, v1, :cond_23

    const/16 v1, 0x45

    if-eq v0, v1, :cond_23

    return p1

    :cond_23
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_26
    return p1
.end method

.method private static a(Ljava/lang/String;ILb/h/h/b$a;)V
    .registers 11

    const/4 v0, 0x0

    iput-boolean v0, p2, Lb/h/h/b$a;->b:Z

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-eq v5, v6, :cond_33

    const/16 v6, 0x45

    if-eq v5, v6, :cond_31

    const/16 v6, 0x65

    if-eq v5, v6, :cond_31

    packed-switch v5, :pswitch_data_3e

    goto :goto_2f

    :pswitch_22
    if-nez v3, :cond_27

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_35

    :cond_27
    :goto_27
    iput-boolean v7, p2, Lb/h/h/b$a;->b:Z

    goto :goto_33

    :pswitch_2a
    if-eq v1, p1, :cond_2f

    if-nez v2, :cond_2f

    goto :goto_27

    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    goto :goto_35

    :cond_31
    const/4 v2, 0x1

    goto :goto_35

    :cond_33
    :goto_33
    :pswitch_33
    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_35
    if-eqz v4, :cond_38

    goto :goto_3b

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3b
    :goto_3b
    iput v1, p2, Lb/h/h/b$a;->a:I

    return-void

    :pswitch_data_3e
    .packed-switch 0x2c
        :pswitch_33
        :pswitch_2a
        :pswitch_22
    .end packed-switch
.end method

.method private static a(Ljava/util/ArrayList;C[F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/h/h/b$b;",
            ">;C[F)V"
        }
    .end annotation

    new-instance v0, Lb/h/h/b$b;

    invoke-direct {v0, p1, p2}, Lb/h/h/b$b;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a([Lb/h/h/b$b;[Lb/h/h/b$b;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2c

    if-nez p1, :cond_6

    goto :goto_2c

    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_2a

    aget-object v2, p0, v1

    iget-char v2, v2, Lb/h/h/b$b;->a:C

    aget-object v3, p1, v1

    iget-char v3, v3, Lb/h/h/b$b;->a:C

    if-ne v2, v3, :cond_29

    aget-object v2, p0, v1

    iget-object v2, v2, Lb/h/h/b$b;->b:[F

    array-length v2, v2

    aget-object v3, p1, v1

    iget-object v3, v3, Lb/h/h/b$b;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_29
    :goto_29
    return v0

    :cond_2a
    const/4 p0, 0x1

    return p0

    :cond_2c
    :goto_2c
    return v0
.end method

.method static a([FII)[F
    .registers 5

    if-gt p1, p2, :cond_1a

    array-length v0, p0

    if-ltz p1, :cond_14

    if-gt p1, v0, :cond_14

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p2, p2, [F

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_14
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/lang/String;)[Lb/h/h/b$b;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_36

    invoke-static {p0, v3}, Lb/h/h/b;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_30

    invoke-static {v4}, Lb/h/h/b;->c(Ljava/lang/String;)[F

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v0, v4, v5}, Lb/h/h/b;->a(Ljava/util/ArrayList;C[F)V

    :cond_30
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_d

    :cond_36
    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_48

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v2, [F

    invoke-static {v0, p0, v1}, Lb/h/h/b;->a(Ljava/util/ArrayList;C[F)V

    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lb/h/h/b$b;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lb/h/h/b$b;

    return-object p0
.end method

.method public static a([Lb/h/h/b$b;)[Lb/h/h/b$b;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [Lb/h/h/b$b;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_17

    new-instance v2, Lb/h/h/b$b;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lb/h/h/b$b;-><init>(Lb/h/h/b$b;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Lb/h/h/b;->a(Ljava/lang/String;)[Lb/h/h/b$b;

    move-result-object v1

    if-eqz v1, :cond_27

    :try_start_b
    invoke-static {v1, v0}, Lb/h/h/b$b;->a([Lb/h/h/b$b;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b([Lb/h/h/b$b;[Lb/h/h/b$b;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_27

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    iget-char v3, v3, Lb/h/h/b$b;->a:C

    iput-char v3, v2, Lb/h/h/b$b;->a:C

    const/4 v2, 0x0

    :goto_e
    aget-object v3, p1, v1

    iget-object v3, v3, Lb/h/h/b$b;->b:[F

    array-length v3, v3

    if-ge v2, v3, :cond_24

    aget-object v3, p0, v1

    iget-object v3, v3, Lb/h/h/b$b;->b:[F

    aget-object v4, p1, v1

    iget-object v4, v4, Lb/h/h/b$b;->b:[F

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    return-void
.end method

.method private static c(Ljava/lang/String;)[F
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_64

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_12

    goto :goto_64

    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    new-instance v2, Lb/h/h/b$a;

    invoke-direct {v2}, Lb/h/h/b$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_23
    if-ge v4, v3, :cond_42

    invoke-static {p0, v4, v2}, Lb/h/h/b;->a(Ljava/lang/String;ILb/h/h/b$a;)V

    iget v6, v2, Lb/h/h/b$a;->a:I

    if-ge v4, v6, :cond_39

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v5

    move v5, v7

    :cond_39
    iget-boolean v4, v2, Lb/h/h/b$a;->b:Z

    if-eqz v4, :cond_3f

    move v4, v6

    goto :goto_23

    :cond_3f
    add-int/lit8 v4, v6, 0x1

    goto :goto_23

    :cond_42
    invoke-static {v1, v0, v5}, Lb/h/h/b;->a([FII)[F

    move-result-object p0
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_46} :catch_47

    return-object p0

    :catch_47
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_64
    :goto_64
    new-array p0, v0, [F

    return-object p0
.end method

###### Class b.h.h.b.a (b.h.h.b$a)
.class Lb/h/h/b$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Z


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class b.h.h.b.C0099b (b.h.h.b$b)
.class public Lb/h/h/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/h/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:C

.field public b:[F


# direct methods
.method constructor <init>(C[F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lb/h/h/b$b;->a:C

    iput-object p2, p0, Lb/h/h/b$b;->b:[F

    return-void
.end method

.method constructor <init>(Lb/h/h/b$b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-char v0, p1, Lb/h/h/b$b;->a:C

    iput-char v0, p0, Lb/h/h/b$b;->a:C

    iget-object p1, p1, Lb/h/h/b$b;->b:[F

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lb/h/h/b;->a([FII)[F

    move-result-object p1

    iput-object p1, p0, Lb/h/h/b$b;->b:[F

    return-void
.end method

.method private static a(Landroid/graphics/Path;DDDDDDDDD)V
    .registers 67

    move-wide/from16 v0, p5

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v4, p17, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    neg-double v13, v0

    mul-double v15, v13, v5

    mul-double v17, v15, v11

    mul-double v19, p7, v7

    mul-double v21, v19, v9

    sub-double v17, v17, v21

    mul-double v13, v13, v7

    mul-double v11, v11, v13

    mul-double v21, p7, v5

    mul-double v9, v9, v21

    add-double/2addr v11, v9

    int-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, p17, v9

    const/16 v23, 0x0

    move-wide/from16 v23, p9

    move-wide/from16 v27, p11

    move-wide/from16 v29, v11

    move-wide/from16 v25, v17

    const/4 v11, 0x0

    move-wide/from16 v17, p15

    :goto_4c
    if-ge v11, v4, :cond_f0

    add-double v31, v17, v9

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v35

    mul-double v37, v0, v5

    mul-double v37, v37, v35

    add-double v37, p1, v37

    mul-double v39, v19, v33

    sub-double v2, v37, v39

    mul-double v37, v0, v7

    mul-double v37, v37, v35

    add-double v37, p3, v37

    mul-double v39, v21, v33

    add-double v0, v37, v39

    mul-double v37, v15, v33

    mul-double v39, v19, v35

    sub-double v37, v37, v39

    mul-double v33, v33, v13

    mul-double v35, v35, v21

    add-double v33, v33, v35

    sub-double v17, v31, v17

    const-wide/high16 v35, 0x4000000000000000L    # 2.0

    div-double v35, v17, v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->tan(D)D

    move-result-wide v35

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    const-wide/high16 v39, 0x4008000000000000L    # 3.0

    mul-double v43, v35, v39

    mul-double v43, v43, v35

    const-wide/high16 v35, 0x4010000000000000L    # 4.0

    add-double v43, v43, v35

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v41

    const-wide/high16 v43, 0x3ff0000000000000L    # 1.0

    sub-double v41, v41, v43

    mul-double v17, v17, v41

    div-double v17, v17, v39

    mul-double v25, v25, v17

    move v12, v4

    move-wide/from16 v39, v5

    add-double v4, v23, v25

    mul-double v29, v29, v17

    move-wide/from16 p13, v7

    add-double v6, v27, v29

    mul-double v23, v17, v37

    move-wide/from16 p7, v9

    sub-double v8, v2, v23

    mul-double v17, v17, v33

    move/from16 p9, v12

    move-wide/from16 v23, v13

    sub-double v12, v0, v17

    const/4 v10, 0x0

    move-object/from16 v14, p0

    invoke-virtual {v14, v10, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    double-to-float v4, v4

    double-to-float v5, v6

    double-to-float v6, v8

    double-to-float v7, v12

    double-to-float v8, v2

    double-to-float v9, v0

    move-object/from16 v41, p0

    move/from16 v42, v4

    move/from16 v43, v5

    move/from16 v44, v6

    move/from16 v45, v7

    move/from16 v46, v8

    move/from16 v47, v9

    invoke-virtual/range {v41 .. v47}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v9, p7

    move/from16 v4, p9

    move-wide/from16 v7, p13

    move-wide/from16 v27, v0

    move-wide/from16 v13, v23

    move-wide/from16 v17, v31

    move-wide/from16 v29, v33

    move-wide/from16 v25, v37

    move-wide/from16 v5, v39

    move-wide/from16 v0, p5

    move-wide/from16 v23, v2

    move-wide/from16 v2, v35

    goto/16 :goto_4c

    :cond_f0
    return-void
.end method

.method private static a(Landroid/graphics/Path;FFFFFFFZZ)V
    .registers 51

    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v0, p5

    move/from16 v2, p6

    move/from16 v7, p7

    move/from16 v9, p9

    float-to-double v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v15, v13, v4

    move/from16 v6, p2

    move-wide/from16 v17, v13

    float-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v21, v13, v10

    add-double v15, v15, v21

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v15, v6

    neg-float v8, v1

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v10

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v21, v13, v4

    add-double v8, v8, v21

    move-wide/from16 v21, v13

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v13

    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v4

    move/from16 v12, p4

    move-wide/from16 v23, v8

    float-to-double v8, v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v25, v8, v10

    add-double v1, v1, v25

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    neg-float v12, v3

    move-wide/from16 v25, v6

    float-to-double v6, v12

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v4

    add-double/2addr v6, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v13

    sub-double v8, v15, v1

    sub-double v27, v23, v6

    add-double v29, v15, v1

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    div-double v29, v29, v31

    add-double v33, v23, v6

    div-double v33, v33, v31

    mul-double v31, v8, v8

    mul-double v35, v27, v27

    move-wide/from16 v37, v10

    add-double v10, v31, v35

    const-string v12, "PathParser"

    const-wide/16 v31, 0x0

    cmpl-double v35, v10, v31

    if-nez v35, :cond_92

    const-string v0, " Points are coincident"

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_92
    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    div-double v35, v35, v10

    const-wide/high16 v39, 0x3fd0000000000000L    # 0.25

    sub-double v35, v35, v39

    cmpg-double v39, v35, v31

    if-gez v39, :cond_d5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Points are too far apart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide v4, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v1, v4

    double-to-float v1, v1

    mul-float v5, v0, v1

    mul-float v6, p6, v1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lb/h/h/b$b;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    return-void

    :cond_d5
    invoke-static/range {v35 .. v36}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v8, v8, v10

    mul-double v10, v10, v27

    move/from16 v0, p8

    move/from16 v3, p9

    if-ne v0, v3, :cond_e8

    sub-double v29, v29, v10

    add-double v33, v33, v8

    goto :goto_ec

    :cond_e8
    add-double v29, v29, v10

    sub-double v33, v33, v8

    :goto_ec
    sub-double v8, v23, v33

    sub-double v10, v15, v29

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v23

    sub-double v6, v6, v33

    sub-double v1, v1, v29

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double v0, v0, v23

    cmpl-double v2, v0, v31

    if-ltz v2, :cond_104

    const/4 v2, 0x1

    goto :goto_105

    :cond_104
    const/4 v2, 0x0

    :goto_105
    if-eq v3, v2, :cond_113

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v6, v0, v31

    if-lez v6, :cond_112

    sub-double/2addr v0, v2

    goto :goto_113

    :cond_112
    add-double/2addr v0, v2

    :cond_113
    :goto_113
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v29, v29, v25

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v33, v33, v13

    mul-double v2, v29, v4

    mul-double v10, v33, v37

    sub-double v7, v2, v10

    move-wide/from16 v2, v25

    mul-double v29, v29, v37

    mul-double v33, v33, v4

    add-double v9, v29, v33

    move-object/from16 v6, p0

    move-wide v11, v2

    move-wide/from16 v2, v17

    move-wide/from16 v4, v21

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v21, v23

    move-wide/from16 v23, v0

    invoke-static/range {v6 .. v24}, Lb/h/h/b$b;->a(Landroid/graphics/Path;DDDDDDDDD)V

    return-void
.end method

.method private static a(Landroid/graphics/Path;[FCC[F)V
    .registers 29

    move-object/from16 v10, p0

    move/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v13, 0x0

    aget v0, p1, v13

    const/4 v14, 0x1

    aget v1, p1, v14

    const/4 v15, 0x2

    aget v2, p1, v15

    const/16 v16, 0x3

    aget v3, p1, v16

    const/16 v17, 0x4

    aget v4, p1, v17

    const/16 v18, 0x5

    aget v5, p1, v18

    sparse-switch v11, :sswitch_data_31c

    :goto_1e
    :sswitch_1e
    const/16 v19, 0x2

    goto :goto_39

    :sswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Path;->close()V

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v0, v4

    move v2, v0

    move v1, v5

    move v3, v1

    goto :goto_1e

    :sswitch_2c
    const/16 v19, 0x4

    goto :goto_39

    :sswitch_2f
    const/16 v19, 0x1

    goto :goto_39

    :sswitch_32
    const/4 v6, 0x6

    const/16 v19, 0x6

    goto :goto_39

    :sswitch_36
    const/4 v6, 0x7

    const/16 v19, 0x7

    :goto_39
    move v8, v0

    move v7, v1

    move/from16 v20, v4

    move/from16 v21, v5

    const/4 v9, 0x0

    move/from16 v0, p2

    :goto_42
    array-length v1, v12

    if-ge v9, v1, :cond_30a

    const/16 v1, 0x41

    if-eq v11, v1, :cond_2c4

    const/16 v1, 0x43

    if-eq v11, v1, :cond_299

    const/16 v5, 0x48

    if-eq v11, v5, :cond_28b

    const/16 v5, 0x51

    if-eq v11, v5, :cond_26a

    const/16 v6, 0x56

    if-eq v11, v6, :cond_25c

    const/16 v6, 0x61

    if-eq v11, v6, :cond_20f

    const/16 v6, 0x63

    if-eq v11, v6, :cond_1e2

    const/16 v15, 0x68

    if-eq v11, v15, :cond_1d5

    const/16 v15, 0x71

    if-eq v11, v15, :cond_1b6

    const/16 v14, 0x76

    if-eq v11, v14, :cond_1aa

    const/16 v14, 0x4c

    if-eq v11, v14, :cond_199

    const/16 v14, 0x4d

    if-eq v11, v14, :cond_179

    const/16 v14, 0x53

    const/high16 v22, 0x40000000    # 2.0f

    if-eq v11, v14, :cond_148

    const/16 v13, 0x54

    if-eq v11, v13, :cond_121

    const/16 v4, 0x6c

    if-eq v11, v4, :cond_10e

    const/16 v4, 0x6d

    if-eq v11, v4, :cond_f1

    const/16 v4, 0x73

    if-eq v11, v4, :cond_bb

    const/16 v1, 0x74

    if-eq v11, v1, :cond_93

    :goto_8f
    move/from16 v22, v9

    goto/16 :goto_300

    :cond_93
    if-eq v0, v15, :cond_a1

    const/16 v1, 0x74

    if-eq v0, v1, :cond_a1

    if-eq v0, v5, :cond_a1

    if-ne v0, v13, :cond_9e

    goto :goto_a1

    :cond_9e
    const/4 v0, 0x0

    const/4 v4, 0x0

    goto :goto_a5

    :cond_a1
    :goto_a1
    sub-float v4, v8, v2

    sub-float v0, v7, v3

    :goto_a5
    add-int/lit8 v1, v9, 0x0

    aget v2, v12, v1

    add-int/lit8 v3, v9, 0x1

    aget v5, v12, v3

    invoke-virtual {v10, v4, v0, v2, v5}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    add-float/2addr v4, v8

    add-float/2addr v0, v7

    aget v1, v12, v1

    add-float/2addr v8, v1

    aget v1, v12, v3

    add-float/2addr v7, v1

    move v3, v0

    move v2, v4

    goto :goto_8f

    :cond_bb
    if-eq v0, v6, :cond_c9

    const/16 v4, 0x73

    if-eq v0, v4, :cond_c9

    if-eq v0, v1, :cond_c9

    if-ne v0, v14, :cond_c6

    goto :goto_c9

    :cond_c6
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_cf

    :cond_c9
    :goto_c9
    sub-float v0, v8, v2

    sub-float v1, v7, v3

    move v2, v1

    move v1, v0

    :goto_cf
    add-int/lit8 v13, v9, 0x0

    aget v3, v12, v13

    add-int/lit8 v14, v9, 0x1

    aget v4, v12, v14

    add-int/lit8 v15, v9, 0x2

    aget v5, v12, v15

    add-int/lit8 v22, v9, 0x3

    aget v6, v12, v22

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    aget v0, v12, v13

    add-float/2addr v0, v8

    aget v1, v12, v14

    add-float/2addr v1, v7

    aget v2, v12, v15

    add-float/2addr v8, v2

    aget v2, v12, v22

    goto/16 :goto_20a

    :cond_f1
    add-int/lit8 v0, v9, 0x0

    aget v1, v12, v0

    add-float/2addr v8, v1

    add-int/lit8 v1, v9, 0x1

    aget v4, v12, v1

    add-float/2addr v7, v4

    if-lez v9, :cond_105

    aget v0, v12, v0

    aget v1, v12, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    goto :goto_8f

    :cond_105
    aget v0, v12, v0

    aget v1, v12, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->rMoveTo(FF)V

    goto/16 :goto_193

    :cond_10e
    add-int/lit8 v0, v9, 0x0

    aget v1, v12, v0

    add-int/lit8 v4, v9, 0x1

    aget v5, v12, v4

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v0, v12, v0

    add-float/2addr v8, v0

    aget v0, v12, v4

    :goto_11e
    add-float/2addr v7, v0

    goto/16 :goto_8f

    :cond_121
    if-eq v0, v15, :cond_12b

    const/16 v1, 0x74

    if-eq v0, v1, :cond_12b

    if-eq v0, v5, :cond_12b

    if-ne v0, v13, :cond_131

    :cond_12b
    mul-float v8, v8, v22

    sub-float/2addr v8, v2

    mul-float v7, v7, v22

    sub-float/2addr v7, v3

    :cond_131
    add-int/lit8 v0, v9, 0x0

    aget v1, v12, v0

    add-int/lit8 v2, v9, 0x1

    aget v3, v12, v2

    invoke-virtual {v10, v8, v7, v1, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    aget v0, v12, v0

    aget v1, v12, v2

    move v3, v7

    move v2, v8

    move/from16 v22, v9

    move v8, v0

    move v7, v1

    goto/16 :goto_300

    :cond_148
    if-eq v0, v6, :cond_152

    const/16 v4, 0x73

    if-eq v0, v4, :cond_152

    if-eq v0, v1, :cond_152

    if-ne v0, v14, :cond_158

    :cond_152
    mul-float v8, v8, v22

    sub-float/2addr v8, v2

    mul-float v7, v7, v22

    sub-float/2addr v7, v3

    :cond_158
    move v2, v7

    move v1, v8

    add-int/lit8 v7, v9, 0x0

    aget v3, v12, v7

    add-int/lit8 v8, v9, 0x1

    aget v4, v12, v8

    add-int/lit8 v13, v9, 0x2

    aget v5, v12, v13

    add-int/lit8 v14, v9, 0x3

    aget v6, v12, v14

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    aget v0, v12, v7

    aget v1, v12, v8

    aget v8, v12, v13

    aget v7, v12, v14

    goto/16 :goto_20b

    :cond_179
    add-int/lit8 v0, v9, 0x0

    aget v8, v12, v0

    add-int/lit8 v1, v9, 0x1

    aget v7, v12, v1

    if-lez v9, :cond_18c

    aget v0, v12, v0

    aget v1, v12, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8f

    :cond_18c
    aget v0, v12, v0

    aget v1, v12, v1

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_193
    move/from16 v21, v7

    move/from16 v20, v8

    goto/16 :goto_8f

    :cond_199
    add-int/lit8 v0, v9, 0x0

    aget v1, v12, v0

    add-int/lit8 v4, v9, 0x1

    aget v5, v12, v4

    invoke-virtual {v10, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    aget v8, v12, v0

    aget v7, v12, v4

    goto/16 :goto_8f

    :cond_1aa
    add-int/lit8 v0, v9, 0x0

    aget v1, v12, v0

    const/4 v4, 0x0

    invoke-virtual {v10, v4, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v0, v12, v0

    goto/16 :goto_11e

    :cond_1b6
    add-int/lit8 v0, v9, 0x0

    aget v1, v12, v0

    add-int/lit8 v2, v9, 0x1

    aget v3, v12, v2

    add-int/lit8 v4, v9, 0x2

    aget v5, v12, v4

    add-int/lit8 v6, v9, 0x3

    aget v13, v12, v6

    invoke-virtual {v10, v1, v3, v5, v13}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    aget v0, v12, v0

    add-float/2addr v0, v8

    aget v1, v12, v2

    add-float/2addr v1, v7

    aget v2, v12, v4

    add-float/2addr v8, v2

    aget v2, v12, v6

    goto :goto_20a

    :cond_1d5
    add-int/lit8 v0, v9, 0x0

    aget v1, v12, v0

    const/4 v4, 0x0

    invoke-virtual {v10, v1, v4}, Landroid/graphics/Path;->rLineTo(FF)V

    aget v0, v12, v0

    add-float/2addr v8, v0

    goto/16 :goto_8f

    :cond_1e2
    add-int/lit8 v0, v9, 0x0

    aget v1, v12, v0

    add-int/lit8 v0, v9, 0x1

    aget v2, v12, v0

    add-int/lit8 v13, v9, 0x2

    aget v3, v12, v13

    add-int/lit8 v14, v9, 0x3

    aget v4, v12, v14

    add-int/lit8 v15, v9, 0x4

    aget v5, v12, v15

    add-int/lit8 v22, v9, 0x5

    aget v6, v12, v22

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    aget v0, v12, v13

    add-float/2addr v0, v8

    aget v1, v12, v14

    add-float/2addr v1, v7

    aget v2, v12, v15

    add-float/2addr v8, v2

    aget v2, v12, v22

    :goto_20a
    add-float/2addr v7, v2

    :goto_20b
    move v2, v0

    move v3, v1

    goto/16 :goto_8f

    :cond_20f
    add-int/lit8 v13, v9, 0x5

    aget v0, v12, v13

    add-float v3, v0, v8

    add-int/lit8 v14, v9, 0x6

    aget v0, v12, v14

    add-float v4, v0, v7

    add-int/lit8 v0, v9, 0x0

    aget v5, v12, v0

    add-int/lit8 v0, v9, 0x1

    aget v6, v12, v0

    add-int/lit8 v0, v9, 0x2

    aget v15, v12, v0

    add-int/lit8 v0, v9, 0x3

    aget v0, v12, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_233

    const/16 v22, 0x1

    goto :goto_235

    :cond_233
    const/16 v22, 0x0

    :goto_235
    add-int/lit8 v0, v9, 0x4

    aget v0, v12, v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_240

    const/16 v23, 0x1

    goto :goto_242

    :cond_240
    const/16 v23, 0x0

    :goto_242
    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    move v11, v7

    move v7, v15

    move v15, v8

    move/from16 v8, v22

    move/from16 v22, v9

    move/from16 v9, v23

    invoke-static/range {v0 .. v9}, Lb/h/h/b$b;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    aget v0, v12, v13

    add-float v8, v15, v0

    aget v0, v12, v14

    add-float v7, v11, v0

    goto/16 :goto_2fe

    :cond_25c
    move v15, v8

    move/from16 v22, v9

    add-int/lit8 v9, v22, 0x0

    aget v0, v12, v9

    invoke-virtual {v10, v15, v0}, Landroid/graphics/Path;->lineTo(FF)V

    aget v7, v12, v9

    goto/16 :goto_300

    :cond_26a
    move/from16 v22, v9

    add-int/lit8 v9, v22, 0x0

    aget v0, v12, v9

    add-int/lit8 v1, v22, 0x1

    aget v2, v12, v1

    add-int/lit8 v3, v22, 0x2

    aget v4, v12, v3

    add-int/lit8 v5, v22, 0x3

    aget v6, v12, v5

    invoke-virtual {v10, v0, v2, v4, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    aget v0, v12, v9

    aget v1, v12, v1

    aget v8, v12, v3

    aget v7, v12, v5

    move v2, v0

    move v3, v1

    goto/16 :goto_300

    :cond_28b
    move v11, v7

    move/from16 v22, v9

    add-int/lit8 v9, v22, 0x0

    aget v0, v12, v9

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Path;->lineTo(FF)V

    aget v8, v12, v9

    goto/16 :goto_300

    :cond_299
    move/from16 v22, v9

    add-int/lit8 v9, v22, 0x0

    aget v1, v12, v9

    add-int/lit8 v9, v22, 0x1

    aget v2, v12, v9

    add-int/lit8 v9, v22, 0x2

    aget v3, v12, v9

    add-int/lit8 v7, v22, 0x3

    aget v4, v12, v7

    add-int/lit8 v8, v22, 0x4

    aget v5, v12, v8

    add-int/lit8 v11, v22, 0x5

    aget v6, v12, v11

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    aget v8, v12, v8

    aget v0, v12, v11

    aget v1, v12, v9

    aget v2, v12, v7

    move v7, v0

    move v3, v2

    move v2, v1

    goto :goto_300

    :cond_2c4
    move v11, v7

    move v15, v8

    move/from16 v22, v9

    add-int/lit8 v13, v22, 0x5

    aget v3, v12, v13

    add-int/lit8 v14, v22, 0x6

    aget v4, v12, v14

    add-int/lit8 v9, v22, 0x0

    aget v5, v12, v9

    add-int/lit8 v9, v22, 0x1

    aget v6, v12, v9

    add-int/lit8 v9, v22, 0x2

    aget v7, v12, v9

    add-int/lit8 v9, v22, 0x3

    aget v0, v12, v9

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2e7

    const/4 v8, 0x1

    goto :goto_2e8

    :cond_2e7
    const/4 v8, 0x0

    :goto_2e8
    add-int/lit8 v9, v22, 0x4

    aget v0, v12, v9

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2f2

    const/4 v9, 0x1

    goto :goto_2f3

    :cond_2f2
    const/4 v9, 0x0

    :goto_2f3
    move-object/from16 v0, p0

    move v1, v15

    move v2, v11

    invoke-static/range {v0 .. v9}, Lb/h/h/b$b;->a(Landroid/graphics/Path;FFFFFFFZZ)V

    aget v8, v12, v13

    aget v7, v12, v14

    :goto_2fe
    move v3, v7

    move v2, v8

    :goto_300
    add-int v9, v22, v19

    move/from16 v0, p3

    move v11, v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x2

    goto/16 :goto_42

    :cond_30a
    move v11, v7

    move v15, v8

    const/4 v0, 0x0

    aput v15, p1, v0

    const/4 v0, 0x1

    aput v11, p1, v0

    const/4 v0, 0x2

    aput v2, p1, v0

    aput v3, p1, v16

    aput v20, p1, v17

    aput v21, p1, v18

    return-void

    :sswitch_data_31c
    .sparse-switch
        0x41 -> :sswitch_36
        0x43 -> :sswitch_32
        0x48 -> :sswitch_2f
        0x4c -> :sswitch_1e
        0x4d -> :sswitch_1e
        0x51 -> :sswitch_2c
        0x53 -> :sswitch_2c
        0x54 -> :sswitch_1e
        0x56 -> :sswitch_2f
        0x5a -> :sswitch_21
        0x61 -> :sswitch_36
        0x63 -> :sswitch_32
        0x68 -> :sswitch_2f
        0x6c -> :sswitch_1e
        0x6d -> :sswitch_1e
        0x71 -> :sswitch_2c
        0x73 -> :sswitch_2c
        0x74 -> :sswitch_1e
        0x76 -> :sswitch_2f
        0x7a -> :sswitch_21
    .end sparse-switch
.end method

.method public static a([Lb/h/h/b$b;Landroid/graphics/Path;)V
    .registers 7

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/16 v1, 0x6d

    const/4 v2, 0x0

    :goto_6
    array-length v3, p0

    if-ge v2, v3, :cond_1b

    aget-object v3, p0, v2

    iget-char v3, v3, Lb/h/h/b$b;->a:C

    aget-object v4, p0, v2

    iget-object v4, v4, Lb/h/h/b$b;->b:[F

    invoke-static {p1, v0, v1, v3, v4}, Lb/h/h/b$b;->a(Landroid/graphics/Path;[FCC[F)V

    aget-object v1, p0, v2

    iget-char v1, v1, Lb/h/h/b$b;->a:C

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    return-void
.end method


# virtual methods
.method public a(Lb/h/h/b$b;Lb/h/h/b$b;F)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Lb/h/h/b$b;->b:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1b

    iget-object v2, p0, Lb/h/h/b$b;->b:[F

    aget v1, v1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p3

    mul-float v1, v1, v3

    iget-object v3, p2, Lb/h/h/b$b;->b:[F

    aget v3, v3, v0

    mul-float v3, v3, p3

    add-float/2addr v1, v3

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    return-void
.end method
