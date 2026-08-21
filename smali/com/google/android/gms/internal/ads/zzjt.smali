###### Class com.google.android.gms.internal.ads.zzjt (com.google.android.gms.internal.ads.zzjt)
.class final Lcom/google/android/gms/internal/ads/zzjt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzaty:I

.field private static final zzaum:I

.field private static final zzaun:I

.field private static final zzauo:I

.field private static final zzaup:I

.field private static final zzauq:I

.field private static final zzaur:I

.field private static final zzaus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "vide"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbi(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzjt;->zzaum:I

    const-string v0, "soun"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbi(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzjt;->zzaun:I

    const-string v0, "text"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbi(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzjt;->zzauo:I

    const-string v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbi(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzjt;->zzaup:I

    const-string v0, "subt"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbi(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzjt;->zzauq:I

    const-string v0, "clcp"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbi(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzjt;->zzaur:I

    const-string v0, "cenc"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbi(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzjt;->zzaus:I

    const-string v0, "meta"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzof;->zzbi(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzjt;->zzaty:I

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzoc;IILcom/google/android/gms/internal/ads/zzjy;I)I
    .registers 20

    move-object v0, p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v1

    :goto_5
    sub-int v2, v1, p1

    const/4 v3, 0x0

    move/from16 v4, p2

    if-ge v2, v4, :cond_cb

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v2

    const/4 v5, 0x1

    if-lez v2, :cond_18

    const/4 v6, 0x1

    goto :goto_19

    :cond_18
    const/4 v6, 0x0

    :goto_19
    const-string v7, "childAtomSize should be positive"

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v6

    sget v7, Lcom/google/android/gms/internal/ads/zzjs;->zzass:I

    if-ne v6, v7, :cond_c6

    add-int/lit8 v6, v1, 0x8

    const/4 v7, 0x0

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    :goto_2c
    sub-int v11, v6, v1

    if-ge v11, v2, :cond_99

    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v12

    sget v13, Lcom/google/android/gms/internal/ads/zzjs;->zzasy:I

    if-ne v12, v13, :cond_48

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_97

    :cond_48
    sget v13, Lcom/google/android/gms/internal/ads/zzjs;->zzast:I

    if-ne v12, v13, :cond_5c

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v8

    sget v12, Lcom/google/android/gms/internal/ads/zzjt;->zzaus:I

    if-ne v8, v12, :cond_5a

    const/4 v8, 0x1

    goto :goto_97

    :cond_5a
    const/4 v8, 0x0

    goto :goto_97

    :cond_5c
    sget v13, Lcom/google/android/gms/internal/ads/zzjs;->zzasu:I

    if-ne v12, v13, :cond_97

    add-int/lit8 v10, v6, 0x8

    :goto_62
    sub-int v12, v10, v6

    if-ge v12, v11, :cond_95

    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v13

    sget v14, Lcom/google/android/gms/internal/ads/zzjs;->zzasv:I

    if-ne v13, v14, :cond_93

    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v10

    if-ne v10, v5, :cond_81

    const/4 v10, 0x1

    goto :goto_82

    :cond_81
    const/4 v10, 0x0

    :goto_82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v12

    const/16 v13, 0x10

    new-array v14, v13, [B

    invoke-virtual {p0, v14, v3, v13}, Lcom/google/android/gms/internal/ads/zzoc;->zze([BII)V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzkk;

    invoke-direct {v13, v10, v12, v14}, Lcom/google/android/gms/internal/ads/zzkk;-><init>(ZI[B)V

    goto :goto_96

    :cond_93
    add-int/2addr v10, v12

    goto :goto_62

    :cond_95
    move-object v13, v7

    :goto_96
    move-object v10, v13

    :cond_97
    :goto_97
    add-int/2addr v6, v11

    goto :goto_2c

    :cond_99
    if-eqz v8, :cond_b1

    if-eqz v9, :cond_9f

    const/4 v6, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v6, 0x0

    :goto_a0
    const-string v7, "frma atom is mandatory"

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v10, :cond_a8

    const/4 v3, 0x1

    :cond_a8
    const-string v5, "schi->tenc atom is mandatory"

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    :cond_b1
    if-eqz v7, :cond_c6

    move-object/from16 v5, p3

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzjy;->zzavd:[Lcom/google/android/gms/internal/ads/zzkk;

    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkk;

    aput-object v1, v0, p4

    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_c6
    move-object/from16 v5, p3

    add-int/2addr v1, v2

    goto/16 :goto_5

    :cond_cb
    return v3
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzjr;Lcom/google/android/gms/internal/ads/zzju;JLcom/google/android/gms/internal/ads/zzin;Z)Lcom/google/android/gms/internal/ads/zzkh;
    .registers 49

    move-object/from16 v0, p0

    sget v1, Lcom/google/android/gms/internal/ads/zzjs;->zzasb:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjr;->zzal(I)Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzjs;->zzasp:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v2

    sget v4, Lcom/google/android/gms/internal/ads/zzjt;->zzaun:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v8, -0x1

    if-ne v2, v4, :cond_22

    const/4 v12, 0x1

    goto :goto_42

    :cond_22
    sget v4, Lcom/google/android/gms/internal/ads/zzjt;->zzaum:I

    if-ne v2, v4, :cond_28

    const/4 v12, 0x2

    goto :goto_42

    :cond_28
    sget v4, Lcom/google/android/gms/internal/ads/zzjt;->zzauo:I

    if-eq v2, v4, :cond_41

    sget v4, Lcom/google/android/gms/internal/ads/zzjt;->zzaup:I

    if-eq v2, v4, :cond_41

    sget v4, Lcom/google/android/gms/internal/ads/zzjt;->zzauq:I

    if-eq v2, v4, :cond_41

    sget v4, Lcom/google/android/gms/internal/ads/zzjt;->zzaur:I

    if-ne v2, v4, :cond_39

    goto :goto_41

    :cond_39
    sget v4, Lcom/google/android/gms/internal/ads/zzjt;->zzaty:I

    if-ne v2, v4, :cond_3f

    const/4 v12, 0x4

    goto :goto_42

    :cond_3f
    const/4 v12, -0x1

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v12, 0x3

    :goto_42
    const/4 v2, 0x0

    if-ne v12, v8, :cond_46

    return-object v2

    :cond_46
    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzasl:I

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(I)I

    move-result v11

    if-nez v11, :cond_60

    const/16 v13, 0x8

    goto :goto_62

    :cond_60
    const/16 v13, 0x10

    :goto_62
    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v13

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v14

    if-nez v11, :cond_74

    const/4 v15, 0x4

    goto :goto_76

    :cond_74
    const/16 v15, 0x8

    :goto_76
    const/4 v9, 0x0

    :goto_77
    if-ge v9, v15, :cond_86

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    add-int v16, v14, v9

    aget-byte v7, v7, v16

    if-eq v7, v8, :cond_83

    const/4 v7, 0x0

    goto :goto_87

    :cond_83
    add-int/lit8 v9, v9, 0x1

    goto :goto_77

    :cond_86
    const/4 v7, 0x1

    :goto_87
    const-wide/16 v16, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v7, :cond_96

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    :goto_93
    move-wide/from16 v14, v18

    goto :goto_a6

    :cond_96
    if-nez v11, :cond_9d

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzio()J

    move-result-wide v14

    goto :goto_a1

    :cond_9d
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzis()J

    move-result-wide v14

    :goto_a1
    cmp-long v7, v14, v16

    if-nez v7, :cond_a6

    goto :goto_93

    :cond_a6
    :goto_a6
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v9

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v11

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v4

    const/high16 v5, -0x10000

    if-nez v7, :cond_cb

    const/high16 v3, 0x10000

    if-ne v9, v3, :cond_cb

    if-ne v11, v5, :cond_cb

    if-nez v4, :cond_cb

    const/16 v7, 0x5a

    goto :goto_e4

    :cond_cb
    if-nez v7, :cond_d8

    if-ne v9, v5, :cond_d8

    const/high16 v3, 0x10000

    if-ne v11, v3, :cond_d8

    if-nez v4, :cond_d8

    const/16 v7, 0x10e

    goto :goto_e4

    :cond_d8
    if-ne v7, v5, :cond_e3

    if-nez v9, :cond_e3

    if-nez v11, :cond_e3

    if-ne v4, v5, :cond_e3

    const/16 v7, 0xb4

    goto :goto_e4

    :cond_e3
    const/4 v7, 0x0

    :goto_e4
    new-instance v3, Lcom/google/android/gms/internal/ads/zzjz;

    invoke-direct {v3, v13, v14, v15, v7}, Lcom/google/android/gms/internal/ads/zzjz;-><init>(IJI)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzjz;->zza(Lcom/google/android/gms/internal/ads/zzjz;)J

    move-result-wide v22

    move-object/from16 v4, p1

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(I)I

    move-result v5

    if-nez v5, :cond_101

    const/16 v5, 0x8

    goto :goto_103

    :cond_101
    const/16 v5, 0x10

    :goto_103
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzio()J

    move-result-wide v4

    cmp-long v7, v22, v18

    if-nez v7, :cond_10f

    goto :goto_11a

    :cond_10f
    const-wide/32 v24, 0xf4240

    move-wide/from16 v26, v4

    invoke-static/range {v22 .. v27}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide v13

    move-wide/from16 v18, v13

    :goto_11a
    sget v7, Lcom/google/android/gms/internal/ads/zzjs;->zzasc:I

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzjr;->zzal(I)Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v7

    sget v9, Lcom/google/android/gms/internal/ads/zzjs;->zzasd:I

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzjr;->zzal(I)Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v7

    sget v9, Lcom/google/android/gms/internal/ads/zzjs;->zzaso:I

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(I)I

    move-result v9

    if-nez v9, :cond_13e

    const/16 v11, 0x8

    goto :goto_140

    :cond_13e
    const/16 v11, 0x10

    :goto_140
    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzio()J

    move-result-wide v13

    if-nez v9, :cond_14b

    const/4 v9, 0x4

    goto :goto_14d

    :cond_14b
    const/16 v9, 0x8

    :goto_14d
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedShort()I

    move-result v1

    shr-int/lit8 v9, v1, 0xa

    and-int/lit8 v9, v9, 0x1f

    add-int/lit8 v9, v9, 0x60

    int-to-char v9, v9

    shr-int/lit8 v11, v1, 0x5

    and-int/lit8 v11, v11, 0x1f

    add-int/lit8 v11, v11, 0x60

    int-to-char v11, v11

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    sget v9, Lcom/google/android/gms/internal/ads/zzjs;->zzasq:I

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzjz;->zzb(Lcom/google/android/gms/internal/ads/zzjz;)I

    move-result v9

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzjz;->zzc(Lcom/google/android/gms/internal/ads/zzjz;)I

    move-result v11

    iget-object v13, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    const/16 v14, 0xc

    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v14

    new-instance v15, Lcom/google/android/gms/internal/ads/zzjy;

    invoke-direct {v15, v14}, Lcom/google/android/gms/internal/ads/zzjy;-><init>(I)V

    const/4 v6, 0x0

    :goto_1a4
    if-ge v6, v14, :cond_66e

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v10

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v2

    move/from16 p1, v14

    if-lez v2, :cond_1b4

    const/4 v8, 0x1

    goto :goto_1b5

    :cond_1b4
    const/4 v8, 0x0

    :goto_1b5
    const-string v14, "childAtomSize should be positive"

    invoke-static {v8, v14}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v8

    move-wide/from16 v37, v4

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzaqy:I

    if-eq v8, v4, :cond_4bf

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzaqz:I

    if-eq v8, v4, :cond_4bf

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzasw:I

    if-eq v8, v4, :cond_4bf

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzati:I

    if-eq v8, v4, :cond_4bf

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzara:I

    if-eq v8, v4, :cond_4bf

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzarb:I

    if-eq v8, v4, :cond_4bf

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzarc:I

    if-eq v8, v4, :cond_4bf

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzauh:I

    if-eq v8, v4, :cond_4bf

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzaui:I

    if-ne v8, v4, :cond_1e6

    goto/16 :goto_4bf

    :cond_1e6
    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzarf:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzasx:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzark:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzarm:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzaro:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzarr:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzarp:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzarq:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzatv:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzatw:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzari:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzarj:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzarg:I

    if-eq v8, v4, :cond_2b6

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzaul:I

    if-ne v8, v4, :cond_220

    goto/16 :goto_2b6

    :cond_220
    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzatg:I

    if-eq v8, v4, :cond_247

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzatr:I

    if-eq v8, v4, :cond_247

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzats:I

    if-eq v8, v4, :cond_247

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzatt:I

    if-eq v8, v4, :cond_247

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzatu:I

    if-ne v8, v4, :cond_235

    goto :goto_247

    :cond_235
    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzauk:I

    if-ne v8, v4, :cond_2f6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/x-camera-motion"

    const/4 v8, -0x1

    const/4 v14, 0x0

    invoke-static {v4, v5, v14, v8, v14}, Lcom/google/android/gms/internal/ads/zzgo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzin;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v4

    goto/16 :goto_2ad

    :cond_247
    :goto_247
    add-int/lit8 v4, v10, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    const-wide v22, 0x7fffffffffffffffL

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzatg:I

    if-ne v8, v4, :cond_261

    const-string v4, "application/ttml+xml"

    :goto_25a
    move-wide/from16 v30, v22

    const/16 v32, 0x0

    move-object/from16 v23, v4

    goto :goto_299

    :cond_261
    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzatr:I

    if-ne v8, v4, :cond_27b

    add-int/lit8 v4, v2, -0x8

    sub-int/2addr v4, v5

    new-array v5, v4, [B

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zze([BII)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "application/x-quicktime-tx3g"

    move-object/from16 v32, v4

    move-wide/from16 v30, v22

    move-object/from16 v23, v5

    goto :goto_299

    :cond_27b
    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzats:I

    if-ne v8, v4, :cond_282

    const-string v4, "application/x-mp4-vtt"

    goto :goto_25a

    :cond_282
    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzatt:I

    if-ne v8, v4, :cond_28f

    const-string v4, "application/ttml+xml"

    move-object/from16 v23, v4

    move-wide/from16 v30, v16

    const/16 v32, 0x0

    goto :goto_299

    :cond_28f
    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzatu:I

    if-ne v8, v4, :cond_2b0

    const/4 v4, 0x1

    iput v4, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzave:I

    const-string v4, "application/x-mp4-cea-608"

    goto :goto_25a

    :goto_299
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    move-object/from16 v27, v13

    invoke-static/range {v22 .. v32}, Lcom/google/android/gms/internal/ads/zzgo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzin;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v4

    :goto_2ad
    iput-object v4, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    goto :goto_2f6

    :cond_2b0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2b6
    :goto_2b6
    add-int/lit8 v4, v10, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    if-eqz p5, :cond_2c9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedShort()I

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    goto :goto_2cf

    :cond_2c9
    const/16 v4, 0x8

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    const/4 v4, 0x0

    :goto_2cf
    if-eqz v4, :cond_301

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d5

    goto :goto_301

    :cond_2d5
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2f6

    const/16 v4, 0x10

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v4

    move/from16 v22, v4

    const/16 v4, 0x14

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    goto :goto_31b

    :cond_2f6
    :goto_2f6
    move-object/from16 v40, v1

    move-object/from16 v41, v3

    move/from16 v42, v11

    move/from16 v39, v12

    :cond_2fe
    :goto_2fe
    const/4 v1, 0x3

    goto/16 :goto_654

    :cond_301
    :goto_301
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedShort()I

    move-result v5

    move/from16 v22, v5

    const/4 v5, 0x6

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->zziq()I

    move-result v5

    move/from16 v23, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_319

    const/16 v4, 0x10

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    :cond_319
    move/from16 v5, v23

    :goto_31b
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v4

    move/from16 v23, v5

    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzasx:I

    if-ne v8, v5, :cond_32c

    invoke-static {v7, v10, v2, v15, v6}, Lcom/google/android/gms/internal/ads/zzjt;->zza(Lcom/google/android/gms/internal/ads/zzoc;IILcom/google/android/gms/internal/ads/zzjy;I)I

    move-result v8

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    :cond_32c
    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzark:I

    if-ne v8, v5, :cond_333

    const-string v5, "audio/ac3"

    goto :goto_37d

    :cond_333
    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzarm:I

    if-ne v8, v5, :cond_33a

    const-string v5, "audio/eac3"

    goto :goto_37d

    :cond_33a
    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzaro:I

    if-ne v8, v5, :cond_341

    const-string v5, "audio/vnd.dts"

    goto :goto_37d

    :cond_341
    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzarp:I

    if-eq v8, v5, :cond_37b

    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzarq:I

    if-ne v8, v5, :cond_34a

    goto :goto_37b

    :cond_34a
    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzarr:I

    if-ne v8, v5, :cond_351

    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_37d

    :cond_351
    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzatv:I

    if-ne v8, v5, :cond_358

    const-string v5, "audio/3gpp"

    goto :goto_37d

    :cond_358
    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzatw:I

    if-ne v8, v5, :cond_35f

    const-string v5, "audio/amr-wb"

    goto :goto_37d

    :cond_35f
    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzari:I

    if-eq v8, v5, :cond_378

    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzarj:I

    if-ne v8, v5, :cond_368

    goto :goto_378

    :cond_368
    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzarg:I

    if-ne v8, v5, :cond_36f

    const-string v5, "audio/mpeg"

    goto :goto_37d

    :cond_36f
    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzaul:I

    if-ne v8, v5, :cond_376

    const-string v5, "audio/alac"

    goto :goto_37d

    :cond_376
    const/4 v5, 0x0

    goto :goto_37d

    :cond_378
    :goto_378
    const-string v5, "audio/raw"

    goto :goto_37d

    :cond_37b
    :goto_37b
    const-string v5, "audio/vnd.dts.hd"

    :goto_37d
    move v8, v4

    move/from16 v39, v12

    move/from16 v4, v22

    move/from16 v33, v23

    const/16 v34, 0x0

    :goto_386
    sub-int v12, v8, v10

    if-ge v12, v2, :cond_47c

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v12

    move-object/from16 v40, v1

    if-lez v12, :cond_397

    const/4 v1, 0x1

    goto :goto_398

    :cond_397
    const/4 v1, 0x0

    :goto_398
    invoke-static {v1, v14}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v1

    move-object/from16 v41, v3

    sget v3, Lcom/google/android/gms/internal/ads/zzjs;->zzasg:I

    if-eq v1, v3, :cond_40a

    if-eqz p5, :cond_3ac

    sget v3, Lcom/google/android/gms/internal/ads/zzjs;->zzarh:I

    if-ne v1, v3, :cond_3ac

    goto :goto_40a

    :cond_3ac
    sget v3, Lcom/google/android/gms/internal/ads/zzjs;->zzarl:I

    if-ne v1, v3, :cond_3c2

    add-int/lit8 v1, v8, 0x8

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v7, v1, v13, v3}, Lcom/google/android/gms/internal/ads/zzhc;->zza(Lcom/google/android/gms/internal/ads/zzoc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzin;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v1

    :goto_3be
    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    :cond_3c0
    const/4 v3, 0x0

    goto :goto_405

    :cond_3c2
    sget v3, Lcom/google/android/gms/internal/ads/zzjs;->zzarn:I

    if-ne v1, v3, :cond_3d5

    add-int/lit8 v1, v8, 0x8

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v7, v1, v13, v3}, Lcom/google/android/gms/internal/ads/zzhc;->zzb(Lcom/google/android/gms/internal/ads/zzoc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzin;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v1

    goto :goto_3be

    :cond_3d5
    sget v3, Lcom/google/android/gms/internal/ads/zzjs;->zzars:I

    if-ne v1, v3, :cond_3f6

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v23, v5

    move/from16 v27, v4

    move/from16 v28, v33

    move-object/from16 v32, v13

    invoke-static/range {v22 .. v32}, Lcom/google/android/gms/internal/ads/zzgo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzin;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v1

    goto :goto_3be

    :cond_3f6
    sget v3, Lcom/google/android/gms/internal/ads/zzjs;->zzaul:I

    if-ne v1, v3, :cond_3c0

    new-array v1, v12, [B

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzoc;->zze([BII)V

    move-object/from16 v34, v1

    :goto_405
    move/from16 v42, v11

    const/4 v0, -0x1

    goto/16 :goto_471

    :cond_40a
    :goto_40a
    sget v3, Lcom/google/android/gms/internal/ads/zzjs;->zzasg:I

    if-ne v1, v3, :cond_413

    move v1, v8

    move/from16 v42, v11

    :goto_411
    const/4 v0, -0x1

    goto :goto_43f

    :cond_413
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v1

    :goto_417
    sub-int v3, v1, v8

    if-ge v3, v12, :cond_43b

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v3

    if-lez v3, :cond_426

    const/4 v0, 0x1

    goto :goto_427

    :cond_426
    const/4 v0, 0x0

    :goto_427
    invoke-static {v0, v14}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v0

    move/from16 v42, v11

    sget v11, Lcom/google/android/gms/internal/ads/zzjs;->zzasg:I

    if-ne v0, v11, :cond_435

    goto :goto_411

    :cond_435
    add-int/2addr v1, v3

    move-object/from16 v0, p0

    move/from16 v11, v42

    goto :goto_417

    :cond_43b
    move/from16 v42, v11

    const/4 v0, -0x1

    const/4 v1, -0x1

    :goto_43f
    if-eq v1, v0, :cond_471

    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzjt;->zzb(Lcom/google/android/gms/internal/ads/zzoc;I)Landroid/util/Pair;

    move-result-object v1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v34, v1

    check-cast v34, [B

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_470

    invoke-static/range {v34 .. v34}, Lcom/google/android/gms/internal/ads/zznu;->zze([B)Landroid/util/Pair;

    move-result-object v1

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v5, v3

    move/from16 v33, v4

    move v4, v1

    goto :goto_471

    :cond_470
    move-object v5, v3

    :cond_471
    :goto_471
    add-int/2addr v8, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v3, v41

    move/from16 v11, v42

    goto/16 :goto_386

    :cond_47c
    move-object/from16 v40, v1

    move-object/from16 v41, v3

    move/from16 v42, v11

    const/4 v0, -0x1

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    if-nez v1, :cond_2fe

    if-eqz v5, :cond_2fe

    const-string v1, "audio/raw"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_494

    const/16 v29, 0x2

    goto :goto_496

    :cond_494
    const/16 v29, -0x1

    :goto_496
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    if-nez v34, :cond_4a5

    const/16 v30, 0x0

    goto :goto_4ab

    :cond_4a5
    invoke-static/range {v34 .. v34}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v30, v1

    :goto_4ab
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v23, v5

    move/from16 v27, v4

    move/from16 v28, v33

    move-object/from16 v33, v13

    invoke-static/range {v22 .. v33}, Lcom/google/android/gms/internal/ads/zzgo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzin;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    goto/16 :goto_2fe

    :cond_4bf
    :goto_4bf
    move-object/from16 v40, v1

    move-object/from16 v41, v3

    move/from16 v42, v11

    move/from16 v39, v12

    const/4 v0, -0x1

    add-int/lit8 v1, v10, 0x8

    const/16 v3, 0x8

    add-int/2addr v1, v3

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    const/16 v1, 0x10

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedShort()I

    move-result v27

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedShort()I

    move-result v28

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0x32

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzasw:I

    if-ne v8, v5, :cond_4f3

    invoke-static {v7, v10, v2, v15, v6}, Lcom/google/android/gms/internal/ads/zzjt;->zza(Lcom/google/android/gms/internal/ads/zzoc;IILcom/google/android/gms/internal/ads/zzjy;I)I

    move-result v8

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    :cond_4f3
    const/4 v3, 0x0

    const/16 v23, 0x0

    const/16 v30, 0x0

    const/high16 v32, 0x3f800000    # 1.0f

    const/16 v33, 0x0

    const/16 v34, -0x1

    :goto_4fe
    sub-int v5, v4, v10

    if-ge v5, v2, :cond_639

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v11

    if-nez v11, :cond_516

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v12

    sub-int/2addr v12, v10

    if-eq v12, v2, :cond_639

    :cond_516
    if-lez v11, :cond_51a

    const/4 v12, 0x1

    goto :goto_51b

    :cond_51a
    const/4 v12, 0x0

    :goto_51b
    invoke-static {v12, v14}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v12

    sget v0, Lcom/google/android/gms/internal/ads/zzjs;->zzase:I

    if-ne v12, v0, :cond_546

    if-nez v23, :cond_52a

    const/4 v0, 0x1

    goto :goto_52b

    :cond_52a
    const/4 v0, 0x0

    :goto_52b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzoh;->zzf(Lcom/google/android/gms/internal/ads/zzoc;)Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzoh;->zzafe:Ljava/util/List;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzoh;->zzaqq:I

    iput v12, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzaqq:I

    if-nez v3, :cond_543

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzoh;->zzbgk:F

    move/from16 v32, v0

    :cond_543
    const-string v0, "video/avc"

    goto :goto_563

    :cond_546
    sget v0, Lcom/google/android/gms/internal/ads/zzjs;->zzasf:I

    if-ne v12, v0, :cond_56a

    if-nez v23, :cond_54e

    const/4 v0, 0x1

    goto :goto_54f

    :cond_54e
    const/4 v0, 0x0

    :goto_54f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzon;->zzh(Lcom/google/android/gms/internal/ads/zzoc;)Lcom/google/android/gms/internal/ads/zzon;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzon;->zzafe:Ljava/util/List;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzon;->zzaqq:I

    iput v0, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzaqq:I

    const-string v0, "video/hevc"

    :goto_563
    move-object/from16 v23, v0

    move-object/from16 v30, v5

    :goto_567
    const/4 v1, 0x3

    goto/16 :goto_633

    :cond_56a
    sget v0, Lcom/google/android/gms/internal/ads/zzjs;->zzauj:I

    if-ne v12, v0, :cond_580

    if-nez v23, :cond_572

    const/4 v0, 0x1

    goto :goto_573

    :cond_572
    const/4 v0, 0x0

    :goto_573
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    sget v0, Lcom/google/android/gms/internal/ads/zzjs;->zzauh:I

    if-ne v8, v0, :cond_57d

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_58e

    :cond_57d
    const-string v0, "video/x-vnd.on2.vp9"

    goto :goto_58e

    :cond_580
    sget v0, Lcom/google/android/gms/internal/ads/zzjs;->zzard:I

    if-ne v12, v0, :cond_591

    if-nez v23, :cond_588

    const/4 v0, 0x1

    goto :goto_589

    :cond_588
    const/4 v0, 0x0

    :goto_589
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    const-string v0, "video/3gpp"

    :goto_58e
    move-object/from16 v23, v0

    goto :goto_567

    :cond_591
    sget v0, Lcom/google/android/gms/internal/ads/zzjs;->zzasg:I

    if-ne v12, v0, :cond_5b2

    if-nez v23, :cond_599

    const/4 v0, 0x1

    goto :goto_59a

    :cond_599
    const/4 v0, 0x0

    :goto_59a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzjt;->zzb(Lcom/google/android/gms/internal/ads/zzoc;I)Landroid/util/Pair;

    move-result-object v0

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v30, v0

    move-object/from16 v23, v5

    goto :goto_567

    :cond_5b2
    sget v0, Lcom/google/android/gms/internal/ads/zzjs;->zzatf:I

    if-ne v12, v0, :cond_5cb

    add-int/lit8 v5, v5, 0x8

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v0

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v3

    int-to-float v0, v0

    int-to-float v3, v3

    div-float v32, v0, v3

    const/4 v1, 0x3

    const/4 v3, 0x1

    goto/16 :goto_633

    :cond_5cb
    sget v0, Lcom/google/android/gms/internal/ads/zzjs;->zzauf:I

    if-ne v12, v0, :cond_5fd

    add-int/lit8 v0, v5, 0x8

    :goto_5d1
    sub-int v12, v0, v5

    if-ge v12, v11, :cond_5f4

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v1

    move/from16 v22, v3

    sget v3, Lcom/google/android/gms/internal/ads/zzjs;->zzaug:I

    if-ne v1, v3, :cond_5ee

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzoc;->data:[B

    add-int/2addr v12, v0

    invoke-static {v1, v0, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_5f7

    :cond_5ee
    add-int/2addr v0, v12

    move/from16 v3, v22

    const/16 v1, 0x10

    goto :goto_5d1

    :cond_5f4
    move/from16 v22, v3

    const/4 v0, 0x0

    :goto_5f7
    move-object/from16 v33, v0

    move/from16 v3, v22

    goto/16 :goto_567

    :cond_5fd
    move/from16 v22, v3

    sget v0, Lcom/google/android/gms/internal/ads/zzjs;->zzaue:I

    if-ne v12, v0, :cond_630

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    if-nez v0, :cond_631

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_62b

    const/4 v3, 0x1

    if-eq v0, v3, :cond_626

    const/4 v3, 0x2

    if-eq v0, v3, :cond_621

    if-eq v0, v1, :cond_61c

    goto :goto_631

    :cond_61c
    move/from16 v3, v22

    const/16 v34, 0x3

    goto :goto_633

    :cond_621
    move/from16 v3, v22

    const/16 v34, 0x2

    goto :goto_633

    :cond_626
    move/from16 v3, v22

    const/16 v34, 0x1

    goto :goto_633

    :cond_62b
    move/from16 v3, v22

    const/16 v34, 0x0

    goto :goto_633

    :cond_630
    const/4 v1, 0x3

    :cond_631
    :goto_631
    move/from16 v3, v22

    :goto_633
    add-int/2addr v4, v11

    const/4 v0, -0x1

    const/16 v1, 0x10

    goto/16 :goto_4fe

    :cond_639
    const/4 v1, 0x3

    if-eqz v23, :cond_654

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/high16 v29, -0x40800000    # -1.0f

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v31, v42

    invoke-static/range {v22 .. v36}, Lcom/google/android/gms/internal/ads/zzgo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzok;Lcom/google/android/gms/internal/ads/zzin;)Lcom/google/android/gms/internal/ads/zzgo;

    move-result-object v0

    iput-object v0, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    :cond_654
    :goto_654
    add-int/2addr v10, v2

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v14, p1

    move-wide/from16 v4, v37

    move/from16 v12, v39

    move-object/from16 v1, v40

    move-object/from16 v3, v41

    move/from16 v11, v42

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/16 v10, 0x8

    goto/16 :goto_1a4

    :cond_66e
    move-object/from16 v40, v1

    move-object/from16 v41, v3

    move-wide/from16 v37, v4

    move/from16 v39, v12

    sget v0, Lcom/google/android/gms/internal/ads/zzjs;->zzasm:I

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzjr;->zzal(I)Lcom/google/android/gms/internal/ads/zzjr;

    move-result-object v0

    if-eqz v0, :cond_6db

    sget v1, Lcom/google/android/gms/internal/ads/zzjs;->zzasn:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v0

    if-nez v0, :cond_689

    goto :goto_6db

    :cond_689
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v2

    new-array v3, v2, [J

    new-array v4, v2, [J

    const/4 v5, 0x0

    :goto_6a1
    if-ge v5, v2, :cond_6d4

    const/4 v6, 0x1

    if-ne v1, v6, :cond_6ab

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzis()J

    move-result-wide v7

    goto :goto_6af

    :cond_6ab
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzio()J

    move-result-wide v7

    :goto_6af
    aput-wide v7, v3, v5

    if-ne v1, v6, :cond_6b8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->readLong()J

    move-result-wide v7

    goto :goto_6bd

    :cond_6b8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v7

    int-to-long v7, v7

    :goto_6bd
    aput-wide v7, v4, v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzoc;->readShort()S

    move-result v7

    if-ne v7, v6, :cond_6cc

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6a1

    :cond_6cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d4
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_6e0

    :cond_6db
    :goto_6db
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    :goto_6e0
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    if-nez v2, :cond_6e5

    return-object v0

    :cond_6e5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkh;

    invoke-static/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/zzjz;->zzb(Lcom/google/android/gms/internal/ads/zzjz;)I

    move-result v11

    move-object/from16 v2, v40

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget v3, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzave:I

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzavd:[Lcom/google/android/gms/internal/ads/zzkk;

    iget v5, v15, Lcom/google/android/gms/internal/ads/zzjy;->zzaqq:I

    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v23, v6

    check-cast v23, [J

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v24, v1

    check-cast v24, [J

    move-object v10, v0

    move/from16 v12, v39

    move-wide/from16 v15, v37

    move-wide/from16 v17, v18

    move-object/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v4

    move/from16 v22, v5

    invoke-direct/range {v10 .. v24}, Lcom/google/android/gms/internal/ads/zzkh;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzgo;I[Lcom/google/android/gms/internal/ads/zzkk;I[J[J)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzkh;Lcom/google/android/gms/internal/ads/zzjr;Lcom/google/android/gms/internal/ads/zzja;)Lcom/google/android/gms/internal/ads/zzkj;
    .registers 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget v3, Lcom/google/android/gms/internal/ads/zzjs;->zzatn:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v3

    if-eqz v3, :cond_14

    new-instance v4, Lcom/google/android/gms/internal/ads/zzjx;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzjx;-><init>(Lcom/google/android/gms/internal/ads/zzju;)V

    goto :goto_21

    :cond_14
    sget v3, Lcom/google/android/gms/internal/ads/zzjs;->zzato:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v3

    if-eqz v3, :cond_4e5

    new-instance v4, Lcom/google/android/gms/internal/ads/zzka;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzka;-><init>(Lcom/google/android/gms/internal/ads/zzju;)V

    :goto_21
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzjv;->zzgj()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_38

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkj;

    new-array v7, v5, [J

    new-array v8, v5, [I

    const/4 v9, 0x0

    new-array v10, v5, [J

    new-array v11, v5, [I

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzkj;-><init>([J[II[J[I)V

    return-object v0

    :cond_38
    sget v6, Lcom/google/android/gms/internal/ads/zzjs;->zzatp:I

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_49

    sget v6, Lcom/google/android/gms/internal/ads/zzjs;->zzatq:I

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_4a

    :cond_49
    const/4 v8, 0x0

    :goto_4a
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    sget v9, Lcom/google/android/gms/internal/ads/zzjs;->zzatm:I

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    sget v10, Lcom/google/android/gms/internal/ads/zzjs;->zzatj:I

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    sget v11, Lcom/google/android/gms/internal/ads/zzjs;->zzatk:I

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_68

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    goto :goto_69

    :cond_68
    move-object v11, v12

    :goto_69
    sget v13, Lcom/google/android/gms/internal/ads/zzjs;->zzatl:I

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzjr;->zzak(I)Lcom/google/android/gms/internal/ads/zzju;

    move-result-object v1

    if-eqz v1, :cond_74

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    goto :goto_75

    :cond_74
    move-object v1, v12

    :goto_75
    new-instance v13, Lcom/google/android/gms/internal/ads/zzjw;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/android/gms/internal/ads/zzjw;-><init>(Lcom/google/android/gms/internal/ads/zzoc;Lcom/google/android/gms/internal/ads/zzoc;Z)V

    const/16 v6, 0xc

    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v9

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v14

    if-eqz v1, :cond_96

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v15

    goto :goto_97

    :cond_96
    const/4 v15, 0x0

    :goto_97
    const/16 v16, -0x1

    if-eqz v11, :cond_ad

    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v6

    if-lez v6, :cond_ab

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    goto :goto_ae

    :cond_ab
    move-object v11, v12

    goto :goto_ae

    :cond_ad
    const/4 v6, 0x0

    :goto_ae
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzjv;->zzgl()Z

    move-result v12

    if-eqz v12, :cond_c8

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzgo;->zzafc:Ljava/lang/String;

    const-string v5, "audio/raw"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    if-nez v8, :cond_c8

    if-nez v15, :cond_c8

    if-nez v6, :cond_c8

    const/4 v5, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v5, 0x0

    :goto_c9
    const-wide/16 v18, 0x0

    if-nez v5, :cond_207

    new-array v5, v3, [J

    new-array v12, v3, [I

    new-array v7, v3, [J

    move/from16 p1, v6

    new-array v6, v3, [I

    move/from16 v0, p1

    move-object/from16 v27, v10

    move v10, v14

    move/from16 v25, v15

    move/from16 v2, v16

    move-wide/from16 v21, v18

    move-wide/from16 v23, v21

    const/16 p1, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v26, 0x0

    move v14, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_ee
    if-ge v8, v3, :cond_194

    move-wide/from16 v28, v21

    move/from16 v21, p1

    :goto_f4
    if-nez v21, :cond_10e

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzjw;->zzgm()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    move/from16 v22, v9

    move/from16 v30, v10

    iget-wide v9, v13, Lcom/google/android/gms/internal/ads/zzjw;->zzauv:J

    move-wide/from16 v28, v9

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzjw;->zzauu:I

    move/from16 v21, v9

    move/from16 v9, v22

    move/from16 v10, v30

    goto :goto_f4

    :cond_10e
    move/from16 v22, v9

    move/from16 v30, v10

    if-eqz v1, :cond_125

    :goto_114
    if-nez v26, :cond_123

    if-lez v25, :cond_123

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v26

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v16

    add-int/lit8 v25, v25, -0x1

    goto :goto_114

    :cond_123
    add-int/lit8 v26, v26, -0x1

    :cond_125
    move/from16 v9, v16

    aput-wide v28, v5, v8

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzjv;->zzgk()I

    move-result v10

    aput v10, v12, v8

    aget v10, v12, v8

    if-le v10, v15, :cond_139

    aget v10, v12, v8

    move/from16 v16, v3

    move v15, v10

    goto :goto_13b

    :cond_139
    move/from16 v16, v3

    :goto_13b
    move-object v10, v4

    int-to-long v3, v9

    add-long v3, v23, v3

    aput-wide v3, v7, v8

    if-nez v11, :cond_145

    const/4 v3, 0x1

    goto :goto_146

    :cond_145
    const/4 v3, 0x0

    :goto_146
    aput v3, v6, v8

    if-ne v8, v2, :cond_156

    const/4 v3, 0x1

    aput v3, v6, v8

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_156

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v2

    sub-int/2addr v2, v3

    :cond_156
    move v4, v0

    move/from16 p1, v2

    move/from16 v0, v30

    int-to-long v2, v0

    add-long v23, v23, v2

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_171

    if-lez v22, :cond_171

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v0

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v2

    add-int/lit8 v3, v22, -0x1

    move v14, v0

    move v0, v2

    goto :goto_173

    :cond_171
    move/from16 v3, v22

    :goto_173
    aget v2, v12, v8

    move/from16 v22, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v21, v21, -0x1

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v39, v2

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 p1, v21

    move/from16 v16, v9

    move/from16 v9, v22

    move-wide/from16 v21, v39

    move-object/from16 v41, v10

    move v10, v0

    move v0, v4

    move-object/from16 v4, v41

    goto/16 :goto_ee

    :cond_194
    move/from16 v16, v3

    move/from16 v22, v9

    if-nez v26, :cond_19c

    const/4 v2, 0x1

    goto :goto_19d

    :cond_19c
    const/4 v2, 0x0

    :goto_19d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    :goto_1a0
    if-lez v25, :cond_1b4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzir()I

    move-result v2

    if-nez v2, :cond_1aa

    const/4 v2, 0x1

    goto :goto_1ab

    :cond_1aa
    const/4 v2, 0x0

    :goto_1ab
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    add-int/lit8 v25, v25, -0x1

    goto :goto_1a0

    :cond_1b4
    if-nez v0, :cond_1c0

    if-nez v14, :cond_1c0

    if-nez p1, :cond_1c0

    if-eqz v22, :cond_1bd

    goto :goto_1c0

    :cond_1bd
    move-object/from16 v0, p0

    goto :goto_201

    :cond_1c0
    :goto_1c0
    move v4, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->id:I

    const/16 v2, 0xd7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesInChunk "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v22

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AtomParsers"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_201
    move-wide/from16 v1, v23

    move/from16 v24, v15

    goto/16 :goto_2a6

    :cond_207
    move/from16 v16, v3

    move-object v10, v4

    iget v1, v13, Lcom/google/android/gms/internal/ads/zzjw;->length:I

    new-array v2, v1, [J

    new-array v1, v1, [I

    :goto_210
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzjw;->zzgm()Z

    move-result v3

    if-eqz v3, :cond_221

    iget v3, v13, Lcom/google/android/gms/internal/ads/zzjw;->index:I

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzjw;->zzauv:J

    aput-wide v4, v2, v3

    iget v4, v13, Lcom/google/android/gms/internal/ads/zzjw;->zzauu:I

    aput v4, v1, v3

    goto :goto_210

    :cond_221
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzjv;->zzgk()I

    move-result v3

    int-to-long v4, v14

    const/16 v6, 0x2000

    div-int/2addr v6, v3

    array-length v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_22c
    if-ge v8, v7, :cond_238

    aget v10, v1, v8

    invoke-static {v10, v6}, Lcom/google/android/gms/internal/ads/zzof;->zze(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_22c

    :cond_238
    new-array v7, v9, [J

    new-array v8, v9, [I

    new-array v10, v9, [J

    new-array v9, v9, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v24, 0x0

    :goto_245
    array-length v14, v1

    if-ge v11, v14, :cond_287

    aget v14, v1, v11

    aget-wide v21, v2, v11

    move v15, v12

    move/from16 v12, v24

    :goto_24f
    if-lez v14, :cond_27d

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v23

    aput-wide v21, v7, v13

    mul-int v24, v3, v23

    aput v24, v8, v13

    move-object/from16 v25, v1

    aget v1, v8, v13

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v26, v2

    int-to-long v1, v15

    mul-long v1, v1, v4

    aput-wide v1, v10, v13

    const/4 v1, 0x1

    aput v1, v9, v13

    aget v1, v8, v13

    int-to-long v1, v1

    add-long v21, v21, v1

    add-int v15, v15, v23

    sub-int v14, v14, v23

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    goto :goto_24f

    :cond_27d
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    add-int/lit8 v11, v11, 0x1

    move/from16 v24, v12

    move v12, v15

    goto :goto_245

    :cond_287
    new-instance v1, Lcom/google/android/gms/internal/ads/zzkb;

    const/16 v27, 0x0

    move-object/from16 v21, v1

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v9

    invoke-direct/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzkb;-><init>([J[II[J[ILcom/google/android/gms/internal/ads/zzkc;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzkb;->zzamv:[J

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzkb;->zzamu:[I

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzkb;->zzavi:I

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzkb;->zzavj:[J

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzkb;->zzavk:[I

    move/from16 v24, v2

    move-wide/from16 v1, v18

    :goto_2a6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxf:[J

    if-eqz v3, :cond_4c8

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzja;->zzgf()Z

    move-result v3

    if-eqz v3, :cond_2b2

    goto/16 :goto_4c8

    :cond_2b2
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxf:[J

    array-length v4, v3

    const/4 v10, 0x1

    if-ne v4, v10, :cond_345

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzkh;->type:I

    if-ne v4, v10, :cond_345

    array-length v4, v7

    const/4 v10, 0x2

    if-lt v4, v10, :cond_345

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxg:[J

    const/4 v10, 0x0

    aget-wide v13, v4, v10

    aget-wide v25, v3, v10

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzct:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxc:J

    move-wide/from16 v27, v3

    move-wide/from16 v29, v8

    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide v3

    add-long/2addr v3, v13

    aget-wide v8, v7, v10

    cmp-long v10, v8, v13

    if-gtz v10, :cond_345

    const/4 v8, 0x1

    aget-wide v9, v7, v8

    cmp-long v11, v13, v9

    if-gez v11, :cond_345

    array-length v9, v7

    sub-int/2addr v9, v8

    aget-wide v8, v7, v9

    cmp-long v10, v8, v3

    if-gez v10, :cond_345

    cmp-long v8, v3, v1

    if-gtz v8, :cond_345

    sub-long v25, v1, v3

    const/4 v1, 0x0

    aget-wide v2, v7, v1

    sub-long v27, v13, v2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzgo;->zzafn:I

    int-to-long v1, v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzct:J

    move-wide/from16 v29, v1

    move-wide/from16 v31, v3

    invoke-static/range {v27 .. v32}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzafx:Lcom/google/android/gms/internal/ads/zzgo;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzgo;->zzafn:I

    int-to-long v3, v3

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzct:J

    move-wide/from16 v27, v3

    move-wide/from16 v29, v8

    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide v3

    cmp-long v8, v1, v18

    if-nez v8, :cond_31a

    cmp-long v8, v3, v18

    if-eqz v8, :cond_345

    :cond_31a
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v1, v8

    if-gtz v10, :cond_345

    cmp-long v10, v3, v8

    if-gtz v10, :cond_345

    long-to-int v2, v1

    move-object/from16 v1, p2

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzja;->zzafp:I

    long-to-int v2, v3

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzja;->zzafq:I

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzct:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzof;->zza([JJJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkj;

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    move-object/from16 v25, v7

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzkj;-><init>([J[II[J[I)V

    return-object v0

    :cond_345
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxf:[J

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_381

    const/16 v17, 0x0

    aget-wide v2, v1, v17

    cmp-long v1, v2, v18

    if-nez v1, :cond_381

    const/4 v1, 0x0

    :goto_354
    array-length v2, v7

    if-ge v1, v2, :cond_371

    aget-wide v2, v7, v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxg:[J

    aget-wide v8, v4, v17

    sub-long v18, v2, v8

    const-wide/32 v20, 0xf4240

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzct:J

    move-wide/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide v2

    aput-wide v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v17, 0x0

    goto :goto_354

    :cond_371
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkj;

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    move-object/from16 v25, v7

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzkj;-><init>([J[II[J[I)V

    return-object v0

    :cond_381
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkh;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_388

    const/4 v1, 0x1

    goto :goto_389

    :cond_388
    const/4 v1, 0x0

    :goto_389
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_38d
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxf:[J

    array-length v10, v9

    const-wide/16 v13, -0x1

    if-ge v2, v10, :cond_3c6

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxg:[J

    move-object/from16 p1, v12

    aget-wide v11, v10, v2

    cmp-long v10, v11, v13

    if-eqz v10, :cond_3c1

    aget-wide v25, v9, v2

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzct:J

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxc:J

    move-wide/from16 v27, v9

    move-wide/from16 v29, v13

    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide v9

    const/4 v13, 0x1

    invoke-static {v7, v11, v12, v13, v13}, Lcom/google/android/gms/internal/ads/zzof;->zzb([JJZZ)I

    move-result v14

    add-long/2addr v11, v9

    const/4 v9, 0x0

    invoke-static {v7, v11, v12, v1, v9}, Lcom/google/android/gms/internal/ads/zzof;->zzb([JJZZ)I

    move-result v10

    sub-int v9, v10, v14

    add-int/2addr v4, v9

    if-eq v8, v14, :cond_3be

    const/4 v8, 0x1

    goto :goto_3bf

    :cond_3be
    const/4 v8, 0x0

    :goto_3bf
    or-int/2addr v3, v8

    move v8, v10

    :cond_3c1
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p1

    goto :goto_38d

    :cond_3c6
    move-object/from16 p1, v12

    move/from16 v2, v16

    if-eq v4, v2, :cond_3ce

    const/4 v2, 0x1

    goto :goto_3cf

    :cond_3ce
    const/4 v2, 0x0

    :goto_3cf
    or-int/2addr v2, v3

    if-eqz v2, :cond_3d5

    new-array v3, v4, [J

    goto :goto_3d6

    :cond_3d5
    move-object v3, v5

    :goto_3d6
    if-eqz v2, :cond_3db

    new-array v12, v4, [I

    goto :goto_3dd

    :cond_3db
    move-object/from16 v12, p1

    :goto_3dd
    if-eqz v2, :cond_3e1

    const/16 v24, 0x0

    :cond_3e1
    if-eqz v2, :cond_3e6

    new-array v8, v4, [I

    goto :goto_3e7

    :cond_3e6
    move-object v8, v6

    :goto_3e7
    new-array v4, v4, [J

    move/from16 v28, v24

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_3ed
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxf:[J

    array-length v15, v11

    if-ge v9, v15, :cond_498

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxg:[J

    move-object/from16 v16, v3

    move-object/from16 v29, v4

    aget-wide v3, v15, v9

    aget-wide v30, v11, v9

    cmp-long v11, v3, v13

    if-eqz v11, :cond_478

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzct:J

    move-object v11, v8

    move v15, v9

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxc:J

    move-wide/from16 v21, v30

    move-wide/from16 v23, v13

    move-wide/from16 v25, v8

    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide v8

    add-long/2addr v8, v3

    const/4 v13, 0x1

    invoke-static {v7, v3, v4, v13, v13}, Lcom/google/android/gms/internal/ads/zzof;->zzb([JJZZ)I

    move-result v14

    const/4 v13, 0x0

    invoke-static {v7, v8, v9, v1, v13}, Lcom/google/android/gms/internal/ads/zzof;->zzb([JJZZ)I

    move-result v8

    if-eqz v2, :cond_42f

    sub-int v9, v8, v14

    move-object/from16 v13, v16

    invoke-static {v5, v14, v13, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v16, v1

    move-object/from16 v1, p1

    invoke-static {v1, v14, v12, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v14, v11, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_435

    :cond_42f
    move-object/from16 v13, v16

    move/from16 v16, v1

    move-object/from16 v1, p1

    :goto_435
    move/from16 v9, v28

    :goto_437
    if-ge v14, v8, :cond_471

    const-wide/32 v23, 0xf4240

    move-object/from16 p1, v5

    move-object/from16 v27, v6

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzaxc:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v5

    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide v5

    aget-wide v21, v7, v14

    sub-long v33, v21, v3

    const-wide/32 v35, 0xf4240

    move-wide/from16 v21, v3

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzct:J

    move-wide/from16 v37, v3

    invoke-static/range {v33 .. v38}, Lcom/google/android/gms/internal/ads/zzof;->zza(JJJ)J

    move-result-wide v3

    add-long/2addr v5, v3

    aput-wide v5, v29, v10

    if-eqz v2, :cond_466

    aget v3, v12, v10

    if-le v3, v9, :cond_466

    aget v9, v1, v14

    :cond_466
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, p1

    move-wide/from16 v3, v21

    move-object/from16 v6, v27

    goto :goto_437

    :cond_471
    move-object/from16 p1, v5

    move-object/from16 v27, v6

    move/from16 v28, v9

    goto :goto_484

    :cond_478
    move-object/from16 v27, v6

    move-object v11, v8

    move v15, v9

    move-object/from16 v13, v16

    move/from16 v16, v1

    move-object/from16 v1, p1

    move-object/from16 p1, v5

    :goto_484
    add-long v18, v18, v30

    add-int/lit8 v9, v15, 0x1

    move-object/from16 v5, p1

    move-object/from16 p1, v1

    move-object v8, v11

    move-object v3, v13

    move/from16 v1, v16

    move-object/from16 v6, v27

    move-object/from16 v4, v29

    const-wide/16 v13, -0x1

    goto/16 :goto_3ed

    :cond_498
    move-object v13, v3

    move-object/from16 v29, v4

    move-object v11, v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_49e
    array-length v2, v11

    if-ge v0, v2, :cond_4b0

    if-nez v1, :cond_4b0

    aget v2, v11, v0

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_4ab

    const/4 v2, 0x1

    goto :goto_4ac

    :cond_4ab
    const/4 v2, 0x0

    :goto_4ac
    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_49e

    :cond_4b0
    if-eqz v1, :cond_4c0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkj;

    move-object/from16 v25, v0

    move-object/from16 v26, v13

    move-object/from16 v27, v12

    move-object/from16 v30, v11

    invoke-direct/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzkj;-><init>([J[II[J[I)V

    return-object v0

    :cond_4c0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v1, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c8
    :goto_4c8
    move-object/from16 p1, v5

    move-object/from16 v27, v6

    move-object v1, v12

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzkh;->zzct:J

    const-wide/32 v4, 0xf4240

    invoke-static {v7, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzof;->zza([JJJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkj;

    move-object/from16 v21, v0

    move-object/from16 v22, p1

    move-object/from16 v23, v1

    move-object/from16 v25, v7

    move-object/from16 v26, v27

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzkj;-><init>([J[II[J[I)V

    return-object v0

    :cond_4e5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgv;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;)V

    goto :goto_4ee

    :goto_4ed
    throw v0

    :goto_4ee
    goto :goto_4ed
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzju;Z)Lcom/google/android/gms/internal/ads/zzkx;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzju;->zzaut:Lcom/google/android/gms/internal/ads/zzoc;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->zzim()I

    move-result v1

    if-lt v1, p1, :cond_75

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v3

    sget v4, Lcom/google/android/gms/internal/ads/zzjs;->zzaty:I

    if-ne v3, v4, :cond_6f

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    add-int/2addr v1, v2

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v2

    if-ge v2, v1, :cond_6e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/gms/internal/ads/zzjs;->zzatz:I

    if-ne v4, v5, :cond_68

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    add-int/2addr v2, v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->getPosition()I

    move-result v1

    if-ge v1, v2, :cond_5c

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzke;->zzd(Lcom/google/android/gms/internal/ads/zzoc;)Lcom/google/android/gms/internal/ads/zzkx$zza;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_5c
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6e

    new-instance p0, Lcom/google/android/gms/internal/ads/zzkx;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzkx;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_68
    add-int/lit8 v3, v3, -0x8

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    goto :goto_2a

    :cond_6e
    return-object v0

    :cond_6f
    add-int/lit8 v2, v2, -0x8

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    goto :goto_b

    :cond_75
    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzoc;I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzoc;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbg(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzjt;->zzc(Lcom/google/android/gms/internal/ads/zzoc;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    :cond_1d
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    :cond_28
    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_30

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    :cond_30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzjt;->zzc(Lcom/google/android/gms/internal/ads/zzoc;)I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_80

    const/16 v2, 0x21

    if-eq v0, v2, :cond_7d

    const/16 v2, 0x23

    if-eq v0, v2, :cond_7a

    const/16 v2, 0x40

    if-eq v0, v2, :cond_77

    const/16 v2, 0x6b

    if-eq v0, v2, :cond_70

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_6d

    const/16 v2, 0xa6

    if-eq v0, v2, :cond_6a

    packed-switch v0, :pswitch_data_9a

    packed-switch v0, :pswitch_data_a4

    goto :goto_82

    :pswitch_5c
    const-string p0, "audio/vnd.dts.hd"

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_63
    const-string p0, "audio/vnd.dts"

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6a
    const-string v1, "audio/eac3"

    goto :goto_82

    :cond_6d
    const-string v1, "audio/ac3"

    goto :goto_82

    :cond_70
    const-string p0, "audio/mpeg"

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_77
    :pswitch_77
    const-string v1, "audio/mp4a-latm"

    goto :goto_82

    :cond_7a
    const-string v1, "video/hevc"

    goto :goto_82

    :cond_7d
    const-string v1, "video/avc"

    goto :goto_82

    :cond_80
    const-string v1, "video/mp4v-es"

    :goto_82
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoc;->zzbh(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzjt;->zzc(Lcom/google/android/gms/internal/ads/zzoc;)I

    move-result p1

    new-array v0, p1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzoc;->zze([BII)V

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_9a
    .packed-switch 0x66
        :pswitch_77
        :pswitch_77
        :pswitch_77
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0xa9
        :pswitch_63
        :pswitch_5c
        :pswitch_5c
        :pswitch_63
    .end packed-switch
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzoc;)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoc;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method
