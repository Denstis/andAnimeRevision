###### Class com.google.android.gms.internal.ads.zzdvw (com.google.android.gms.internal.ads.zzdvw)
.class public final Lcom/google/android/gms/internal/ads/zzdvw;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzhxh:Lcom/google/android/gms/internal/ads/zzdvw;

.field private static final zzhxi:Lcom/google/android/gms/internal/ads/zzdvw;

.field private static final zzhxj:Lcom/google/android/gms/internal/ads/zzdvw;

.field private static final zzhxk:Lcom/google/android/gms/internal/ads/zzdvw;


# instance fields
.field private final a:D

.field private final b:D

.field private final c:D

.field private final d:D

.field private final w:D

.field private final zzhxd:D

.field private final zzhxe:D

.field private final zzhxf:D

.field private final zzhxg:D


# direct methods
.method static constructor <clinit>()V
    .registers 39

    new-instance v19, Lcom/google/android/gms/internal/ads/zzdvw;

    move-object/from16 v0, v19

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/google/android/gms/internal/ads/zzdvw;-><init>(DDDDDDDDD)V

    sput-object v19, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxh:Lcom/google/android/gms/internal/ads/zzdvw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvw;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    invoke-direct/range {v20 .. v38}, Lcom/google/android/gms/internal/ads/zzdvw;-><init>(DDDDDDDDD)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxi:Lcom/google/android/gms/internal/ads/zzdvw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvw;

    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/ads/zzdvw;-><init>(DDDDDDDDD)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxj:Lcom/google/android/gms/internal/ads/zzdvw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvw;

    move-object/from16 v20, v0

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v20 .. v38}, Lcom/google/android/gms/internal/ads/zzdvw;-><init>(DDDDDDDDD)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxk:Lcom/google/android/gms/internal/ads/zzdvw;

    return-void
.end method

.method private constructor <init>(DDDDDDDDD)V
    .registers 22

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxd:D

    move-wide v1, p11

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxe:D

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdvw;->w:D

    move-wide v1, p1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdvw;->a:D

    move-wide v1, p3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdvw;->b:D

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdvw;->c:D

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdvw;->d:D

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxf:D

    move-wide/from16 v1, p17

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxg:D

    return-void
.end method

.method public static zzp(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzdvw;
    .registers 21

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(Ljava/nio/ByteBuffer;)D

    move-result-wide v1

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(Ljava/nio/ByteBuffer;)D

    move-result-wide v3

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbc;->zze(Ljava/nio/ByteBuffer;)D

    move-result-wide v9

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(Ljava/nio/ByteBuffer;)D

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(Ljava/nio/ByteBuffer;)D

    move-result-wide v7

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbc;->zze(Ljava/nio/ByteBuffer;)D

    move-result-wide v11

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(Ljava/nio/ByteBuffer;)D

    move-result-wide v15

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbc;->zzd(Ljava/nio/ByteBuffer;)D

    move-result-wide v17

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbc;->zze(Ljava/nio/ByteBuffer;)D

    move-result-wide v13

    new-instance v19, Lcom/google/android/gms/internal/ads/zzdvw;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v18}, Lcom/google/android/gms/internal/ads/zzdvw;-><init>(DDDDDDDDD)V

    return-object v19
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_76

    const-class v2, Lcom/google/android/gms/internal/ads/zzdvw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_76

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdvw;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzdvw;->a:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdvw;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_1d

    return v1

    :cond_1d
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzdvw;->b:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdvw;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_28

    return v1

    :cond_28
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzdvw;->c:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdvw;->c:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_33

    return v1

    :cond_33
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzdvw;->d:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdvw;->d:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3e

    return v1

    :cond_3e
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxf:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxf:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_49

    return v1

    :cond_49
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxg:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxg:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_54

    return v1

    :cond_54
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxd:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxd:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_5f

    return v1

    :cond_5f
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxe:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxe:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_6a

    return v1

    :cond_6a
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzdvw;->w:D

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdvw;->w:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_75

    return v1

    :cond_75
    return v0

    :cond_76
    :goto_76
    return v1
.end method

.method public final hashCode()I
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxd:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxe:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdvw;->w:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdvw;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdvw;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdvw;->c:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdvw;->d:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxf:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxg:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/lit8 v1, v1, 0x1f

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 22

    move-object/from16 v0, p0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxh:Lcom/google/android/gms/internal/ads/zzdvw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "Rotate 0\u00b0"

    return-object v1

    :cond_d
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxi:Lcom/google/android/gms/internal/ads/zzdvw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "Rotate 90\u00b0"

    return-object v1

    :cond_18
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxj:Lcom/google/android/gms/internal/ads/zzdvw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "Rotate 180\u00b0"

    return-object v1

    :cond_23
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxk:Lcom/google/android/gms/internal/ads/zzdvw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "Rotate 270\u00b0"

    return-object v1

    :cond_2e
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxd:D

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxe:D

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzdvw;->w:D

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzdvw;->a:D

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzdvw;->b:D

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzdvw;->c:D

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzdvw;->d:D

    move-wide v15, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxf:D

    move-wide/from16 v17, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzdvw;->zzhxg:D

    const/16 v0, 0x104

    move-wide/from16 v19, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Matrix{u="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", v="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", w="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", a="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", b="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", c="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", d="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", tx="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", ty="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
