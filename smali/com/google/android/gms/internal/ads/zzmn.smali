###### Class com.google.android.gms.internal.ads.zzmn (com.google.android.gms.internal.ads.zzmn)
.class public final Lcom/google/android/gms/internal/ads/zzmn;
.super Lcom/google/android/gms/internal/ads/zzms;
.source ""


# static fields
.field private static final zzbdh:[I


# instance fields
.field private final zzbdi:Lcom/google/android/gms/internal/ads/zzmw;

.field private final zzbdj:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzmq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzmn;->zzbdh:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzmn;-><init>(Lcom/google/android/gms/internal/ads/zzmw;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzmw;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzms;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmn;->zzbdi:Lcom/google/android/gms/internal/ads/zzmw;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzmq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzmq;-><init>()V

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmn;->zzbdj:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzgo;Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgo;->zzaft:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzof;->zzbg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private static zzd(II)I
    .registers 3

    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    if-ne p1, v0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    return v0

    :cond_8
    if-ne p1, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    sub-int/2addr p0, p1

    return p0
.end method

.method private static zze(IZ)Z
    .registers 3

    const/4 v0, 0x3

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_c

    if-eqz p1, :cond_a

    const/4 p1, 0x2

    if-ne p0, p1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected final zza([Lcom/google/android/gms/internal/ads/zzgw;[Lcom/google/android/gms/internal/ads/zzmk;[[[I)[Lcom/google/android/gms/internal/ads/zzmt;
    .registers 40

    move-object/from16 v0, p1

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzmt;

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzmn;->zzbdj:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzmq;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_12
    const/4 v9, 0x2

    if-ge v6, v1, :cond_25e

    aget-object v13, v0, v6

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/zzgw;->getTrackType()I

    move-result v13

    if-ne v9, v13, :cond_246

    if-nez v7, :cond_22d

    aget-object v7, p2, v6

    aget-object v13, p3, v6

    iget v14, v4, Lcom/google/android/gms/internal/ads/zzmq;->zzbdo:I

    iget v15, v4, Lcom/google/android/gms/internal/ads/zzmq;->zzbdp:I

    iget v11, v4, Lcom/google/android/gms/internal/ads/zzmq;->zzbdq:I

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzmq;->viewportWidth:I

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzmq;->viewportHeight:I

    iget-boolean v10, v4, Lcom/google/android/gms/internal/ads/zzmq;->zzbdt:Z

    iget-boolean v12, v4, Lcom/google/android/gms/internal/ads/zzmq;->zzbdr:Z

    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzmq;->zzbds:Z

    move/from16 v21, v1

    move-object/from16 v20, v4

    move/from16 v25, v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    :goto_42
    iget v8, v7, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    if-ge v4, v8, :cond_20b

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzmk;->zzav(I)Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v8

    move-object/from16 v26, v7

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v27, v2

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    move/from16 v28, v6

    const/4 v2, 0x0

    :goto_58
    iget v6, v8, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    if-ge v2, v6, :cond_66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    :cond_66
    const v2, 0x7fffffff

    if-eq v9, v2, :cond_139

    if-ne v5, v2, :cond_6f

    goto/16 :goto_139

    :cond_6f
    move/from16 v29, v1

    const/4 v6, 0x0

    :goto_72
    iget v1, v8, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    if-ge v6, v1, :cond_103

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzmh;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v1

    move-object/from16 v30, v0

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    if-lez v0, :cond_e9

    move/from16 v31, v12

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    if-lez v12, :cond_e0

    if-eqz v10, :cond_9e

    move/from16 v32, v10

    if-le v0, v12, :cond_8e

    const/4 v10, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v10, 0x0

    :goto_8f
    move/from16 v33, v5

    if-le v9, v5, :cond_95

    const/4 v5, 0x1

    goto :goto_96

    :cond_95
    const/4 v5, 0x0

    :goto_96
    if-eq v10, v5, :cond_a2

    move v5, v9

    move/from16 v34, v5

    move/from16 v10, v33

    goto :goto_a7

    :cond_9e
    move/from16 v33, v5

    move/from16 v32, v10

    :cond_a2
    move v10, v9

    move/from16 v34, v10

    move/from16 v5, v33

    :goto_a7
    mul-int v9, v0, v5

    move/from16 v35, v11

    mul-int v11, v12, v10

    if-lt v9, v11, :cond_ba

    new-instance v5, Landroid/graphics/Point;

    invoke-static {v11, v0}, Lcom/google/android/gms/internal/ads/zzof;->zze(II)I

    move-result v0

    invoke-direct {v5, v10, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v5

    goto :goto_c3

    :cond_ba
    new-instance v0, Landroid/graphics/Point;

    invoke-static {v9, v12}, Lcom/google/android/gms/internal/ads/zzof;->zze(II)I

    move-result v9

    invoke-direct {v0, v9, v5}, Landroid/graphics/Point;-><init>(II)V

    :goto_c3
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    mul-int v9, v5, v1

    iget v10, v0, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    const v11, 0x3f7ae148    # 0.98f

    mul-float v10, v10, v11

    float-to-int v10, v10

    if-lt v5, v10, :cond_f3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float v0, v0, v11

    float-to-int v0, v0

    if-lt v1, v0, :cond_f3

    if-ge v9, v2, :cond_f3

    move v2, v9

    goto :goto_f3

    :cond_e0
    move/from16 v33, v5

    move/from16 v34, v9

    move/from16 v32, v10

    move/from16 v35, v11

    goto :goto_f3

    :cond_e9
    move/from16 v33, v5

    move/from16 v34, v9

    move/from16 v32, v10

    move/from16 v35, v11

    move/from16 v31, v12

    :cond_f3
    :goto_f3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v30

    move/from16 v12, v31

    move/from16 v10, v32

    move/from16 v5, v33

    move/from16 v9, v34

    move/from16 v11, v35

    goto/16 :goto_72

    :cond_103
    move-object/from16 v30, v0

    move/from16 v33, v5

    move/from16 v34, v9

    move/from16 v32, v10

    move/from16 v35, v11

    move/from16 v31, v12

    const v0, 0x7fffffff

    if-eq v2, v0, :cond_147

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_11a
    if-ltz v0, :cond_147

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzmh;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgo;->zzej()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_133

    if-le v1, v2, :cond_136

    :cond_133
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_136
    add-int/lit8 v0, v0, -0x1

    goto :goto_11a

    :cond_139
    :goto_139
    move-object/from16 v30, v0

    move/from16 v29, v1

    move/from16 v33, v5

    move/from16 v34, v9

    move/from16 v32, v10

    move/from16 v35, v11

    move/from16 v31, v12

    :cond_147
    aget-object v0, v13, v4

    move/from16 v2, v22

    move/from16 v5, v23

    move/from16 v6, v24

    const/4 v1, 0x0

    :goto_150
    iget v9, v8, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    if-ge v1, v9, :cond_1eb

    aget v9, v0, v1

    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzmn;->zze(IZ)Z

    move-result v9

    if-eqz v9, :cond_1db

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzmh;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_184

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzgo;->width:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_171

    if-gt v10, v14, :cond_184

    :cond_171
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzgo;->height:I

    if-eq v10, v11, :cond_177

    if-gt v10, v15, :cond_184

    :cond_177
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzgo;->zzaey:I

    if-eq v10, v11, :cond_180

    move/from16 v11, v35

    if-gt v10, v11, :cond_186

    goto :goto_182

    :cond_180
    move/from16 v11, v35

    :goto_182
    const/4 v10, 0x1

    goto :goto_187

    :cond_184
    move/from16 v11, v35

    :cond_186
    const/4 v10, 0x0

    :goto_187
    if-nez v10, :cond_191

    if-eqz v31, :cond_18c

    goto :goto_191

    :cond_18c
    move-object/from16 v23, v0

    move/from16 v22, v3

    goto :goto_1e1

    :cond_191
    :goto_191
    move/from16 v22, v3

    if-eqz v10, :cond_197

    const/4 v12, 0x2

    goto :goto_198

    :cond_197
    const/4 v12, 0x1

    :goto_198
    aget v3, v0, v1

    move-object/from16 v23, v0

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzmn;->zze(IZ)Z

    move-result v3

    if-eqz v3, :cond_1a5

    add-int/lit16 v12, v12, 0x3e8

    :cond_1a5
    if-le v12, v2, :cond_1a9

    const/4 v0, 0x1

    goto :goto_1aa

    :cond_1a9
    const/4 v0, 0x0

    :goto_1aa
    if-ne v12, v2, :cond_1cd

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgo;->zzej()I

    move-result v0

    if-eq v0, v5, :cond_1bb

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgo;->zzej()I

    move-result v0

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzmn;->zzd(II)I

    move-result v0

    goto :goto_1c1

    :cond_1bb
    iget v0, v9, Lcom/google/android/gms/internal/ads/zzgo;->zzaey:I

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzmn;->zzd(II)I

    move-result v0

    :goto_1c1
    if-eqz v3, :cond_1c8

    if-eqz v10, :cond_1c8

    if-lez v0, :cond_1cc

    goto :goto_1ca

    :cond_1c8
    if-gez v0, :cond_1cc

    :goto_1ca
    const/4 v0, 0x1

    goto :goto_1cd

    :cond_1cc
    const/4 v0, 0x0

    :cond_1cd
    :goto_1cd
    if-eqz v0, :cond_1e1

    iget v6, v9, Lcom/google/android/gms/internal/ads/zzgo;->zzaey:I

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgo;->zzej()I

    move-result v5

    move/from16 v29, v1

    move-object/from16 v30, v8

    move v2, v12

    goto :goto_1e1

    :cond_1db
    move-object/from16 v23, v0

    move/from16 v22, v3

    move/from16 v11, v35

    :cond_1e1
    :goto_1e1
    add-int/lit8 v1, v1, 0x1

    move/from16 v35, v11

    move/from16 v3, v22

    move-object/from16 v0, v23

    goto/16 :goto_150

    :cond_1eb
    move/from16 v22, v3

    move/from16 v11, v35

    add-int/lit8 v4, v4, 0x1

    move/from16 v23, v5

    move/from16 v24, v6

    move-object/from16 v7, v26

    move/from16 v6, v28

    move/from16 v1, v29

    move-object/from16 v0, v30

    move/from16 v12, v31

    move/from16 v10, v32

    move/from16 v5, v33

    move/from16 v9, v34

    move/from16 v22, v2

    move-object/from16 v2, v27

    goto/16 :goto_42

    :cond_20b
    move-object/from16 v30, v0

    move/from16 v29, v1

    move-object/from16 v27, v2

    move/from16 v28, v6

    if-nez v30, :cond_218

    const/16 v16, 0x0

    goto :goto_223

    :cond_218
    new-instance v11, Lcom/google/android/gms/internal/ads/zzmp;

    move/from16 v1, v29

    move-object/from16 v0, v30

    invoke-direct {v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzmp;-><init>(Lcom/google/android/gms/internal/ads/zzmh;I)V

    move-object/from16 v16, v11

    :goto_223
    aput-object v16, v27, v28

    aget-object v0, v27, v28

    if-eqz v0, :cond_22b

    const/4 v7, 0x1

    goto :goto_237

    :cond_22b
    const/4 v7, 0x0

    goto :goto_237

    :cond_22d
    move/from16 v21, v1

    move-object/from16 v27, v2

    move-object/from16 v20, v4

    move/from16 v28, v6

    move/from16 v25, v8

    :goto_237
    aget-object v0, p2, v28

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    if-lez v0, :cond_240

    const/16 v19, 0x1

    goto :goto_242

    :cond_240
    const/16 v19, 0x0

    :goto_242
    or-int v0, v25, v19

    move v8, v0

    goto :goto_250

    :cond_246
    move/from16 v21, v1

    move-object/from16 v27, v2

    move-object/from16 v20, v4

    move/from16 v28, v6

    move/from16 v25, v8

    :goto_250
    add-int/lit8 v6, v28, 0x1

    move-object/from16 v3, p0

    move-object/from16 v0, p1

    move-object/from16 v4, v20

    move/from16 v1, v21

    move-object/from16 v2, v27

    goto/16 :goto_12

    :cond_25e
    move-object/from16 v27, v2

    move-object/from16 v20, v4

    move/from16 v25, v8

    move v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_268
    if-ge v1, v0, :cond_451

    aget-object v4, p1, v1

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgw;->getTrackType()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3aa

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3a2

    if-eq v4, v5, :cond_2f8

    aget-object v4, p1, v1

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzgw;->getTrackType()I

    aget-object v4, p2, v1

    aget-object v5, p3, v1

    move-object/from16 v6, v20

    iget-boolean v7, v6, Lcom/google/android/gms/internal/ads/zzmq;->zzbds:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_28a
    iget v12, v4, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    if-ge v8, v12, :cond_2e2

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzmk;->zzav(I)Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v12

    aget-object v13, v5, v8

    move v14, v11

    move v11, v10

    move-object v10, v9

    const/4 v9, 0x0

    :goto_298
    iget v15, v12, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    if-ge v9, v15, :cond_2d8

    aget v15, v13, v9

    invoke-static {v15, v7}, Lcom/google/android/gms/internal/ads/zzmn;->zze(IZ)Z

    move-result v15

    if-eqz v15, :cond_2cd

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzmh;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v15

    iget v15, v15, Lcom/google/android/gms/internal/ads/zzgo;->zzafs:I

    const/16 v19, 0x1

    and-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_2b2

    const/4 v15, 0x1

    goto :goto_2b3

    :cond_2b2
    const/4 v15, 0x0

    :goto_2b3
    move/from16 v21, v0

    if-eqz v15, :cond_2b9

    const/4 v15, 0x2

    goto :goto_2ba

    :cond_2b9
    const/4 v15, 0x1

    :goto_2ba
    aget v0, v13, v9

    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzmn;->zze(IZ)Z

    move-result v0

    if-eqz v0, :cond_2c7

    add-int/lit16 v15, v15, 0x3e8

    :cond_2c7
    if-le v15, v14, :cond_2d1

    move v11, v9

    move-object v10, v12

    move v14, v15

    goto :goto_2d1

    :cond_2cd
    move/from16 v21, v0

    move-object/from16 v20, v4

    :cond_2d1
    :goto_2d1
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v20

    move/from16 v0, v21

    goto :goto_298

    :cond_2d8
    move/from16 v21, v0

    move-object/from16 v20, v4

    add-int/lit8 v8, v8, 0x1

    move-object v9, v10

    move v10, v11

    move v11, v14

    goto :goto_28a

    :cond_2e2
    move/from16 v21, v0

    if-nez v9, :cond_2e8

    const/4 v11, 0x0

    goto :goto_2ed

    :cond_2e8
    new-instance v11, Lcom/google/android/gms/internal/ads/zzmp;

    invoke-direct {v11, v9, v10}, Lcom/google/android/gms/internal/ads/zzmp;-><init>(Lcom/google/android/gms/internal/ads/zzmh;I)V

    :goto_2ed
    aput-object v11, v27, v1

    move/from16 v18, v2

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v15, 0x0

    const/16 v17, 0x2

    goto/16 :goto_444

    :cond_2f8
    move/from16 v21, v0

    move-object/from16 v6, v20

    if-nez v3, :cond_3a6

    aget-object v0, p2, v1

    aget-object v3, p3, v1

    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzmq;->zzbds:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_308
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    if-ge v7, v12, :cond_385

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzmk;->zzav(I)Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v12

    aget-object v13, v3, v7

    move v14, v11

    move v11, v10

    move-object v10, v8

    const/4 v8, 0x0

    :goto_316
    iget v15, v12, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    if-ge v8, v15, :cond_37a

    aget v15, v13, v8

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzmn;->zze(IZ)Z

    move-result v15

    if-eqz v15, :cond_370

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzmh;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v15

    iget v5, v15, Lcom/google/android/gms/internal/ads/zzgo;->zzafs:I

    const/16 v19, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_330

    const/4 v5, 0x1

    goto :goto_331

    :cond_330
    const/4 v5, 0x0

    :goto_331
    iget v9, v15, Lcom/google/android/gms/internal/ads/zzgo;->zzafs:I

    const/16 v17, 0x2

    and-int/lit8 v9, v9, 0x2

    move-object/from16 v23, v0

    const/4 v0, 0x0

    if-eqz v9, :cond_33e

    const/4 v9, 0x1

    goto :goto_33f

    :cond_33e
    const/4 v9, 0x0

    :goto_33f
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzmn;->zza(Lcom/google/android/gms/internal/ads/zzgo;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_34f

    if-eqz v5, :cond_349

    const/4 v9, 0x6

    goto :goto_35f

    :cond_349
    if-nez v9, :cond_34d

    const/4 v9, 0x5

    goto :goto_35f

    :cond_34d
    const/4 v9, 0x4

    goto :goto_35f

    :cond_34f
    if-eqz v5, :cond_353

    const/4 v9, 0x3

    goto :goto_35f

    :cond_353
    if-eqz v9, :cond_374

    const/4 v0, 0x0

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzmn;->zza(Lcom/google/android/gms/internal/ads/zzgo;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35e

    const/4 v9, 0x2

    goto :goto_35f

    :cond_35e
    const/4 v9, 0x1

    :goto_35f
    aget v0, v13, v8

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzmn;->zze(IZ)Z

    move-result v0

    if-eqz v0, :cond_36a

    add-int/lit16 v9, v9, 0x3e8

    :cond_36a
    if-le v9, v14, :cond_374

    move v11, v8

    move v14, v9

    move-object v10, v12

    goto :goto_374

    :cond_370
    move-object/from16 v23, v0

    const/16 v17, 0x2

    :cond_374
    :goto_374
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v23

    const/4 v5, 0x3

    goto :goto_316

    :cond_37a
    move-object/from16 v23, v0

    const/16 v17, 0x2

    add-int/lit8 v7, v7, 0x1

    move-object v8, v10

    move v10, v11

    move v11, v14

    const/4 v5, 0x3

    goto :goto_308

    :cond_385
    const/16 v17, 0x2

    if-nez v8, :cond_38b

    const/4 v11, 0x0

    goto :goto_390

    :cond_38b
    new-instance v11, Lcom/google/android/gms/internal/ads/zzmp;

    invoke-direct {v11, v8, v10}, Lcom/google/android/gms/internal/ads/zzmp;-><init>(Lcom/google/android/gms/internal/ads/zzmh;I)V

    :goto_390
    aput-object v11, v27, v1

    aget-object v0, v27, v1

    if-eqz v0, :cond_398

    const/4 v0, 0x1

    goto :goto_399

    :cond_398
    const/4 v0, 0x0

    :goto_399
    move v3, v0

    move v0, v2

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v15, 0x0

    const/16 v19, 0x1

    goto/16 :goto_448

    :cond_3a2
    move/from16 v21, v0

    move-object/from16 v6, v20

    :cond_3a6
    const/16 v17, 0x2

    goto/16 :goto_43f

    :cond_3aa
    move/from16 v21, v0

    move-object/from16 v6, v20

    const/16 v17, 0x2

    if-nez v2, :cond_43f

    aget-object v0, p2, v1

    aget-object v2, p3, v1

    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzmq;->zzbds:Z

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_3bc
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzmk;->length:I

    if-ge v5, v10, :cond_423

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzmk;->zzav(I)Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v10

    aget-object v11, v2, v5

    move v12, v9

    move v9, v8

    move v8, v7

    const/4 v7, 0x0

    :goto_3ca
    iget v13, v10, Lcom/google/android/gms/internal/ads/zzmh;->length:I

    if-ge v7, v13, :cond_415

    aget v13, v11, v7

    invoke-static {v13, v4}, Lcom/google/android/gms/internal/ads/zzmn;->zze(IZ)Z

    move-result v13

    if-eqz v13, :cond_40a

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzmh;->zzau(I)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v13

    aget v14, v11, v7

    iget v15, v13, Lcom/google/android/gms/internal/ads/zzgo;->zzafs:I

    const/16 v19, 0x1

    and-int/lit8 v15, v15, 0x1

    move-object/from16 v16, v2

    const/4 v2, 0x0

    if-eqz v15, :cond_3e9

    const/4 v15, 0x1

    goto :goto_3ea

    :cond_3e9
    const/4 v15, 0x0

    :goto_3ea
    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/zzmn;->zza(Lcom/google/android/gms/internal/ads/zzgo;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3f6

    if-eqz v15, :cond_3f4

    const/4 v13, 0x4

    goto :goto_3fb

    :cond_3f4
    const/4 v13, 0x3

    goto :goto_3fb

    :cond_3f6
    if-eqz v15, :cond_3fa

    const/4 v13, 0x2

    goto :goto_3fb

    :cond_3fa
    const/4 v13, 0x1

    :goto_3fb
    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzmn;->zze(IZ)Z

    move-result v14

    if-eqz v14, :cond_404

    add-int/lit16 v13, v13, 0x3e8

    :cond_404
    if-le v13, v12, :cond_410

    move v8, v5

    move v9, v7

    move v12, v13

    goto :goto_410

    :cond_40a
    move-object/from16 v16, v2

    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x1

    :cond_410
    :goto_410
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, v16

    goto :goto_3ca

    :cond_415
    move-object/from16 v16, v2

    const/4 v2, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x1

    add-int/lit8 v5, v5, 0x1

    move v7, v8

    move v8, v9

    move v9, v12

    move-object/from16 v2, v16

    goto :goto_3bc

    :cond_423
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v15, 0x0

    const/16 v19, 0x1

    if-ne v7, v5, :cond_42c

    move-object v11, v2

    goto :goto_435

    :cond_42c
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzmk;->zzav(I)Lcom/google/android/gms/internal/ads/zzmh;

    move-result-object v0

    new-instance v11, Lcom/google/android/gms/internal/ads/zzmp;

    invoke-direct {v11, v0, v8}, Lcom/google/android/gms/internal/ads/zzmp;-><init>(Lcom/google/android/gms/internal/ads/zzmh;I)V

    :goto_435
    aput-object v11, v27, v1

    aget-object v0, v27, v1

    if-eqz v0, :cond_43d

    const/4 v0, 0x1

    goto :goto_448

    :cond_43d
    const/4 v0, 0x0

    goto :goto_448

    :cond_43f
    :goto_43f
    move/from16 v18, v2

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v15, 0x0

    :goto_444
    const/16 v19, 0x1

    move/from16 v0, v18

    :goto_448
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    move-object/from16 v20, v6

    move/from16 v0, v21

    goto/16 :goto_268

    :cond_451
    return-object v27
.end method
