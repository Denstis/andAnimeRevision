###### Class com.google.android.gms.internal.ads.zzdsk (com.google.android.gms.internal.ads.zzdsk)
.class final Lcom/google/android/gms/internal/ads/zzdsk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdsv<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zzgqj:Lsun/misc/Unsafe;

.field private static final zzhmz:[I


# instance fields
.field private final zzhna:[I

.field private final zzhnb:[Ljava/lang/Object;

.field private final zzhnc:I

.field private final zzhnd:I

.field private final zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

.field private final zzhnf:Z

.field private final zzhng:Z

.field private final zzhnh:Z

.field private final zzhni:Z

.field private final zzhnj:[I

.field private final zzhnk:I

.field private final zzhnl:I

.field private final zzhnm:Lcom/google/android/gms/internal/ads/zzdso;

.field private final zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

.field private final zzhno:Lcom/google/android/gms/internal/ads/zzdtn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "**>;"
        }
    .end annotation
.end field

.field private final zzhnp:Lcom/google/android/gms/internal/ads/zzdql;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;"
        }
    .end annotation
.end field

.field private final zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhmz:[I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt;->zzbcc()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzdsg;ZZ[IIILcom/google/android/gms/internal/ads/zzdso;Lcom/google/android/gms/internal/ads/zzdrq;Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdrz;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/ads/zzdsg;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/ads/zzdso;",
            "Lcom/google/android/gms/internal/ads/zzdrq;",
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdrz;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnb:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnd:I

    instance-of p1, p5, Lcom/google/android/gms/internal/ads/zzdqw;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhng:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnh:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_1c

    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/ads/zzdql;->zzm(Lcom/google/android/gms/internal/ads/zzdsg;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnk:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnl:I

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnm:Lcom/google/android/gms/internal/ads/zzdso;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdtn;Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzau(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/zzdpl;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    add-int/lit8 v13, v6, 0x2

    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_16e

    goto/16 :goto_16c

    :pswitch_28
    const/4 v7, 0x3

    if-ne v5, v7, :cond_16c

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v7, v2, 0x4

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move v6, v7

    move-object/from16 v7, p13

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;[BIIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4b

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4c

    :cond_4b
    const/4 v15, 0x0

    :goto_4c
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    if-nez v15, :cond_52

    goto/16 :goto_144

    :cond_52
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzdqx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_144

    :pswitch_58
    if-nez v5, :cond_16c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdpy;->zzez(J)J

    move-result-wide v3

    goto/16 :goto_140

    :pswitch_66
    if-nez v5, :cond_16c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdpy;->zzft(I)I

    move-result v3

    goto/16 :goto_133

    :pswitch_74
    if-nez v5, :cond_16c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgt(I)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v5

    if-eqz v5, :cond_98

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzdrc;->zzf(I)Z

    move-result v5

    if-eqz v5, :cond_89

    goto :goto_98

    :cond_89
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzav(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzdtq;->zzc(ILjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_16d

    :cond_98
    :goto_98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v2, v3

    goto/16 :goto_168

    :pswitch_a2
    if-ne v5, v15, :cond_16c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zze([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    goto/16 :goto_144

    :pswitch_ac
    if-ne v5, v15, :cond_16c

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v2

    move/from16 v5, p4

    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;[BIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_c3

    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_c4

    :cond_c3
    const/4 v15, 0x0

    :goto_c4
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    if-nez v15, :cond_ca

    goto/16 :goto_144

    :cond_ca
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzdqx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_144

    :pswitch_d0
    if-ne v5, v15, :cond_16c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-nez v4, :cond_dd

    const-string v3, ""

    goto :goto_144

    :cond_dd
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_f1

    add-int v5, v2, v4

    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzdtw;->zzl([BII)Z

    move-result v5

    if-eqz v5, :cond_ec

    goto :goto_f1

    :cond_ec
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbaj()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_f1
    :goto_f1
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdqx;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    goto/16 :goto_168

    :pswitch_fe
    if-nez v5, :cond_16c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_10e

    const/4 v15, 0x1

    goto :goto_10f

    :cond_10e
    const/4 v15, 0x0

    :goto_10f
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_144

    :pswitch_114
    if-ne v5, v7, :cond_16c

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzf([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_152

    :pswitch_11f
    const/4 v2, 0x1

    if-ne v5, v2, :cond_16c

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzg([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_163

    :pswitch_12b
    if-nez v5, :cond_16c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    :goto_133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_144

    :pswitch_138
    if-nez v5, :cond_16c

    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    :goto_140
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_144
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_168

    :pswitch_148
    if-ne v5, v7, :cond_16c

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzi([BI)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_152
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x4

    goto :goto_168

    :pswitch_158
    const/4 v2, 0x1

    if-ne v5, v2, :cond_16c

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzh([BI)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :goto_163
    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 v2, v4, 0x8

    :goto_168
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_16d

    :cond_16c
    :goto_16c
    move v2, v4

    :goto_16d
    return v2

    :pswitch_data_16e
    .packed-switch 0x33
        :pswitch_158
        :pswitch_148
        :pswitch_138
        :pswitch_138
        :pswitch_12b
        :pswitch_11f
        :pswitch_114
        :pswitch_fe
        :pswitch_d0
        :pswitch_ac
        :pswitch_a2
        :pswitch_12b
        :pswitch_74
        :pswitch_114
        :pswitch_11f
        :pswitch_66
        :pswitch_58
        :pswitch_28
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/zzdpl;)I
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdrd;

    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzdrd;->zzaxi()Z

    move-result v12

    const/4 v13, 0x1

    if-nez v12, :cond_36

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_2c

    const/16 v12, 0xa

    goto :goto_2d

    :cond_2c
    shl-int/2addr v12, v13

    :goto_2d
    invoke-interface {v11, v12}, Lcom/google/android/gms/internal/ads/zzdrd;->zzfl(I)Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    invoke-virtual {v12, v1, v9, v10, v11}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_36
    const/4 v9, 0x5

    const-wide/16 v14, 0x0

    const/4 v10, 0x2

    packed-switch p11, :pswitch_data_3da

    goto/16 :goto_3d7

    :pswitch_3f
    const/4 v1, 0x3

    if-ne v6, v1, :cond_3d7

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;[BIIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    :goto_5a
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ge v4, v5, :cond_3d7

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v9, :cond_3d7

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;[BIIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    goto :goto_5a

    :pswitch_7a
    if-ne v6, v10, :cond_9e

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdru;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    add-int/2addr v2, v1

    :goto_85
    if-ge v1, v2, :cond_95

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdpy;->zzez(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzdru;->zzfl(J)V

    goto :goto_85

    :cond_95
    if-ne v1, v2, :cond_99

    goto/16 :goto_3d8

    :cond_99
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_9e
    if-nez v6, :cond_3d7

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdru;

    :goto_a2
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzdpy;->zzez(J)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzdru;->zzfl(J)V

    if-ge v1, v5, :cond_3d8

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v6, :cond_3d8

    goto :goto_a2

    :pswitch_ba
    if-ne v6, v10, :cond_de

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdqy;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    add-int/2addr v2, v1

    :goto_c5
    if-ge v1, v2, :cond_d5

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdpy;->zzft(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzdqy;->zzgp(I)V

    goto :goto_c5

    :cond_d5
    if-ne v1, v2, :cond_d9

    goto/16 :goto_3d8

    :cond_d9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_de
    if-nez v6, :cond_3d7

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdqy;

    :goto_e2
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdpy;->zzft(I)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzdqy;->zzgp(I)V

    if-ge v1, v5, :cond_3d8

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v6, :cond_3d8

    goto :goto_e2

    :pswitch_fa
    if-ne v6, v10, :cond_101

    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdrd;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    goto :goto_112

    :cond_101
    if-nez v6, :cond_3d7

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v11

    move-object/from16 v7, p14

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BIILcom/google/android/gms/internal/ads/zzdrd;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    :goto_112
    check-cast v1, Lcom/google/android/gms/internal/ads/zzdqw;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbbx()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v4

    if-ne v3, v4, :cond_11d

    const/4 v3, 0x0

    :cond_11d
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgt(I)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    move/from16 v6, p6

    invoke-static {v6, v11, v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzdrc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdtq;

    if-eqz v3, :cond_12f

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    :cond_12f
    :goto_12f
    move v1, v2

    goto/16 :goto_3d8

    :pswitch_132
    if-ne v6, v10, :cond_3d7

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ltz v4, :cond_178

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_173

    if-nez v4, :cond_148

    :goto_142
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdpm;->zzhgb:Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_150

    :cond_148
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/ads/zzdpm;->zzh([BII)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v6

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v4

    :goto_150
    if-ge v1, v5, :cond_3d8

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v6, :cond_3d8

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ltz v4, :cond_16e

    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_169

    if-nez v4, :cond_148

    goto :goto_142

    :cond_169
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_16e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_173
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_178
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :pswitch_17d
    if-ne v6, v10, :cond_3d7

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v11

    move-object/from16 p12, p14

    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;I[BIILcom/google/android/gms/internal/ads/zzdrd;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    goto/16 :goto_3d8

    :pswitch_197
    if-ne v6, v10, :cond_3d7

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v14

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    if-nez v6, :cond_1e4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ltz v6, :cond_1df

    if-nez v6, :cond_1b2

    :goto_1ae
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1bd

    :cond_1b2
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdqx;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_1b9
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v4, v6

    :goto_1bd
    if-ge v4, v5, :cond_3d7

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v8, :cond_3d7

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ltz v6, :cond_1da

    if-nez v6, :cond_1d2

    goto :goto_1ae

    :cond_1d2
    new-instance v8, Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdqx;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1b9

    :cond_1da
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_1df
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_1e4
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ltz v6, :cond_235

    if-nez v6, :cond_1ee

    :goto_1ea
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_201

    :cond_1ee
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzdtw;->zzl([BII)Z

    move-result v9

    if-eqz v9, :cond_230

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzdqx;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :goto_1fd
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v8

    :goto_201
    if-ge v4, v5, :cond_3d7

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v8, :cond_3d7

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ltz v6, :cond_22b

    if-nez v6, :cond_216

    goto :goto_1ea

    :cond_216
    add-int v8, v4, v6

    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzdtw;->zzl([BII)Z

    move-result v9

    if-eqz v9, :cond_226

    new-instance v9, Ljava/lang/String;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzdqx;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_1fd

    :cond_226
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbaj()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_22b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_230
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbaj()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_235
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbad()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :pswitch_23a
    const/4 v1, 0x0

    if-ne v6, v10, :cond_262

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdpk;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    add-int/2addr v4, v2

    :goto_246
    if-ge v2, v4, :cond_259

    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v2

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    cmp-long v8, v5, v14

    if-eqz v8, :cond_254

    const/4 v5, 0x1

    goto :goto_255

    :cond_254
    const/4 v5, 0x0

    :goto_255
    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzdpk;->addBoolean(Z)V

    goto :goto_246

    :cond_259
    if-ne v2, v4, :cond_25d

    goto/16 :goto_12f

    :cond_25d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_262
    if-nez v6, :cond_3d7

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdpk;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_272

    :goto_270
    const/4 v6, 0x1

    goto :goto_273

    :cond_272
    const/4 v6, 0x0

    :goto_273
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzdpk;->addBoolean(Z)V

    if-ge v4, v5, :cond_3d7

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v8, :cond_3d7

    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    cmp-long v6, v8, v14

    if-eqz v6, :cond_272

    goto :goto_270

    :pswitch_28b
    if-ne v6, v10, :cond_2ab

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdqy;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    add-int/2addr v2, v1

    :goto_296
    if-ge v1, v2, :cond_2a2

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzf([BI)I

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzdqy;->zzgp(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_296

    :cond_2a2
    if-ne v1, v2, :cond_2a6

    goto/16 :goto_3d8

    :cond_2a6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_2ab
    if-ne v6, v9, :cond_3d7

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdqy;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzf([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzdqy;->zzgp(I)V

    :goto_2b6
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_3d8

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v6, :cond_3d8

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdpi;->zzf([BI)I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzdqy;->zzgp(I)V

    goto :goto_2b6

    :pswitch_2ca
    if-ne v6, v10, :cond_2ea

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdru;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    add-int/2addr v2, v1

    :goto_2d5
    if-ge v1, v2, :cond_2e1

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzg([BI)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzdru;->zzfl(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_2d5

    :cond_2e1
    if-ne v1, v2, :cond_2e5

    goto/16 :goto_3d8

    :cond_2e5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_2ea
    if-ne v6, v13, :cond_3d7

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdru;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzg([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzdru;->zzfl(J)V

    :goto_2f5
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_3d8

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v6, :cond_3d8

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdpi;->zzg([BI)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzdru;->zzfl(J)V

    goto :goto_2f5

    :pswitch_309
    if-ne v6, v10, :cond_311

    invoke-static {v3, v4, v11, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdrd;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    goto/16 :goto_3d8

    :cond_311
    if-nez v6, :cond_3d7

    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v11

    move-object/from16 p10, p14

    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BIILcom/google/android/gms/internal/ads/zzdrd;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    goto/16 :goto_3d8

    :pswitch_323
    if-ne v6, v10, :cond_343

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdru;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    add-int/2addr v2, v1

    :goto_32e
    if-ge v1, v2, :cond_33a

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzdru;->zzfl(J)V

    goto :goto_32e

    :cond_33a
    if-ne v1, v2, :cond_33e

    goto/16 :goto_3d8

    :cond_33e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_343
    if-nez v6, :cond_3d7

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdru;

    :goto_347
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzdru;->zzfl(J)V

    if-ge v1, v5, :cond_3d8

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v6, :cond_3d8

    goto :goto_347

    :pswitch_35b
    if-ne v6, v10, :cond_37a

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdqs;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    add-int/2addr v2, v1

    :goto_366
    if-ge v1, v2, :cond_372

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzi([BI)F

    move-result v4

    invoke-virtual {v11, v4}, Lcom/google/android/gms/internal/ads/zzdqs;->zzh(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_366

    :cond_372
    if-ne v1, v2, :cond_375

    goto :goto_3d8

    :cond_375
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_37a
    if-ne v6, v9, :cond_3d7

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdqs;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzi([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzdqs;->zzh(F)V

    :goto_385
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_3d8

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v6, :cond_3d8

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdpi;->zzi([BI)F

    move-result v1

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzdqs;->zzh(F)V

    goto :goto_385

    :pswitch_399
    if-ne v6, v10, :cond_3b8

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdqi;

    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    add-int/2addr v2, v1

    :goto_3a4
    if-ge v1, v2, :cond_3b0

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzh([BI)D

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/google/android/gms/internal/ads/zzdqi;->zzd(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3a4

    :cond_3b0
    if-ne v1, v2, :cond_3b3

    goto :goto_3d8

    :cond_3b3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    throw v1

    :cond_3b8
    if-ne v6, v13, :cond_3d7

    check-cast v11, Lcom/google/android/gms/internal/ads/zzdqi;

    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzdpi;->zzh([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzdqi;->zzd(D)V

    :goto_3c3
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_3d8

    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ne v2, v6, :cond_3d8

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdpi;->zzh([BI)D

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzdqi;->zzd(D)V

    goto :goto_3c3

    :cond_3d7
    :goto_3d7
    move v1, v4

    :cond_3d8
    :goto_3d8
    return v1

    nop

    :pswitch_data_3da
    .packed-switch 0x12
        :pswitch_399
        :pswitch_35b
        :pswitch_323
        :pswitch_323
        :pswitch_309
        :pswitch_2ca
        :pswitch_28b
        :pswitch_23a
        :pswitch_197
        :pswitch_17d
        :pswitch_132
        :pswitch_309
        :pswitch_fa
        :pswitch_28b
        :pswitch_2ca
        :pswitch_ba
        :pswitch_7a
        :pswitch_399
        :pswitch_35b
        :pswitch_323
        :pswitch_323
        :pswitch_309
        :pswitch_2ca
        :pswitch_28b
        :pswitch_23a
        :pswitch_309
        :pswitch_fa
        :pswitch_28b
        :pswitch_2ca
        :pswitch_ba
        :pswitch_7a
        :pswitch_3f
    .end packed-switch
.end method

.method private final zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/zzdpl;)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgs(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v0, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzap(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v2, p5}, Lcom/google/android/gms/internal/ads/zzdrz;->zzar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p6, p7, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v1, v2

    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {p1, p5}, Lcom/google/android/gms/internal/ads/zzdrz;->zzas(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrx;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {p5, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzan(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p5

    invoke-static {p2, p3, p8}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p3

    iget p6, p8, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    if-ltz p6, :cond_97

    sub-int p7, p4, p3

    if-gt p6, p7, :cond_97

    add-int/2addr p6, p3

    iget-object p7, p1, Lcom/google/android/gms/internal/ads/zzdrx;->zzhmu:Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdrx;->zzcfq:Ljava/lang/Object;

    :goto_3e
    if-ge p3, p6, :cond_8c

    add-int/lit8 v1, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_4c

    invoke-static {p3, p2, v1, p8}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget p3, p8, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    :cond_4c
    move v2, v1

    ushr-int/lit8 v1, p3, 0x3

    and-int/lit8 v3, p3, 0x7

    const/4 v4, 0x1

    if-eq v1, v4, :cond_72

    const/4 v4, 0x2

    if-eq v1, v4, :cond_58

    goto :goto_87

    :cond_58
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdrx;->zzhmv:Lcom/google/android/gms/internal/ads/zzdue;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdue;->zzbch()I

    move-result v1

    if-ne v3, v1, :cond_87

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzdrx;->zzhmv:Lcom/google/android/gms/internal/ads/zzdue;

    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzdrx;->zzcfq:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zza([BIILcom/google/android/gms/internal/ads/zzdue;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p3

    iget-object v0, p8, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    goto :goto_3e

    :cond_72
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdrx;->zzhmt:Lcom/google/android/gms/internal/ads/zzdue;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdue;->zzbch()I

    move-result v1

    if-ne v3, v1, :cond_87

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzdrx;->zzhmt:Lcom/google/android/gms/internal/ads/zzdue;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p4

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zza([BIILcom/google/android/gms/internal/ads/zzdue;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p3

    iget-object p7, p8, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    goto :goto_3e

    :cond_87
    :goto_87
    invoke-static {p3, p2, v2, p4, p8}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p3

    goto :goto_3e

    :cond_8c
    if-ne p3, p6, :cond_92

    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p6

    :cond_92
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbai()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1

    :cond_97
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    goto :goto_9d

    :goto_9c
    throw p1

    :goto_9d
    goto :goto_9c
.end method

.method private static zza([BIILcom/google/android/gms/internal/ads/zzdue;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdpl;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/zzdue;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdsj;->zzhgt:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_9a

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zzd([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p0

    goto/16 :goto_99

    :pswitch_19
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdpy;->zzez(J)J

    move-result-wide p1

    goto :goto_42

    :pswitch_24
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpy;->zzft(I)I

    move-result p1

    goto :goto_4d

    :pswitch_2f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzdsr;->zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object p3

    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;[BIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p0

    goto :goto_99

    :pswitch_3c
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    :goto_42
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_51

    :pswitch_47
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    :goto_4d
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_51
    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    goto :goto_99

    :pswitch_54
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzi([BI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_6e

    :pswitch_5d
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzg([BI)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_7b

    :pswitch_66
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzf([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_6e
    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x4

    goto :goto_99

    :pswitch_73
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdpi;->zzh([BI)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_7b
    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    add-int/lit8 p0, p1, 0x8

    goto :goto_99

    :pswitch_80
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zze([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p0

    goto :goto_99

    :pswitch_85
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-eqz v0, :cond_93

    const/4 p1, 0x1

    goto :goto_94

    :cond_93
    const/4 p1, 0x0

    :goto_94
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_51

    :goto_99
    return p0

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_85
        :pswitch_80
        :pswitch_73
        :pswitch_66
        :pswitch_66
        :pswitch_5d
        :pswitch_5d
        :pswitch_54
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_3c
        :pswitch_3c
        :pswitch_2f
        :pswitch_24
        :pswitch_19
        :pswitch_13
    .end packed-switch
.end method

.method static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdse;Lcom/google/android/gms/internal/ads/zzdso;Lcom/google/android/gms/internal/ads/zzdrq;Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdrz;)Lcom/google/android/gms/internal/ads/zzdsk;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/ads/zzdse;",
            "Lcom/google/android/gms/internal/ads/zzdso;",
            "Lcom/google/android/gms/internal/ads/zzdrq;",
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "**>;",
            "Lcom/google/android/gms/internal/ads/zzdql<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzdrz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdsk<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdst;

    if-eqz v1, :cond_444

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdst;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzbay()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhle:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    const/4 v11, 0x1

    goto :goto_15

    :cond_14
    const/4 v11, 0x0

    :goto_15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzbbg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_3f

    and-int/lit16 v5, v5, 0x1fff

    move v8, v5

    const/4 v5, 0x1

    const/16 v9, 0xd

    :goto_2c
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_3c

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v8, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2c

    :cond_3c
    shl-int/2addr v5, v9

    or-int/2addr v5, v8

    goto :goto_40

    :cond_3f
    const/4 v10, 0x1

    :goto_40
    add-int/lit8 v8, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_5f

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_4c
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_5c

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_4c

    :cond_5c
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    goto :goto_60

    :cond_5f
    move v12, v8

    :goto_60
    if-nez v9, :cond_6e

    sget-object v8, Lcom/google/android/gms/internal/ads/zzdsk;->zzhmz:[I

    move-object v15, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_1a0

    :cond_6e
    add-int/lit8 v8, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_8e

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_7a
    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_8a

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_7a

    :cond_8a
    shl-int/2addr v8, v10

    or-int/2addr v8, v9

    move v9, v8

    goto :goto_8f

    :cond_8e
    move v12, v8

    :goto_8f
    add-int/lit8 v8, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_ae

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_9b
    add-int/lit8 v13, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_ab

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v12

    or-int/2addr v10, v8

    add-int/lit8 v12, v12, 0xd

    move v8, v13

    goto :goto_9b

    :cond_ab
    shl-int/2addr v8, v12

    or-int/2addr v10, v8

    goto :goto_af

    :cond_ae
    move v13, v8

    :goto_af
    add-int/lit8 v8, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_cf

    and-int/lit16 v12, v12, 0x1fff

    const/16 v13, 0xd

    :goto_bb
    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_cb

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v13

    or-int/2addr v12, v8

    add-int/lit8 v13, v13, 0xd

    move v8, v14

    goto :goto_bb

    :cond_cb
    shl-int/2addr v8, v13

    or-int/2addr v8, v12

    move v12, v8

    goto :goto_d0

    :cond_cf
    move v14, v8

    :goto_d0
    add-int/lit8 v8, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_f0

    and-int/lit16 v13, v13, 0x1fff

    const/16 v14, 0xd

    :goto_dc
    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_ec

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v14

    or-int/2addr v13, v8

    add-int/lit8 v14, v14, 0xd

    move v8, v15

    goto :goto_dc

    :cond_ec
    shl-int/2addr v8, v14

    or-int/2addr v8, v13

    move v13, v8

    goto :goto_f1

    :cond_f0
    move v15, v8

    :goto_f1
    add-int/lit8 v8, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_113

    and-int/lit16 v14, v14, 0x1fff

    const/16 v15, 0xd

    :goto_fd
    add-int/lit8 v16, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_10e

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v15

    or-int/2addr v14, v8

    add-int/lit8 v15, v15, 0xd

    move/from16 v8, v16

    goto :goto_fd

    :cond_10e
    shl-int/2addr v8, v15

    or-int/2addr v8, v14

    move v14, v8

    move/from16 v8, v16

    :cond_113
    add-int/lit8 v15, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_136

    and-int/lit16 v8, v8, 0x1fff

    const/16 v16, 0xd

    :goto_11f
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_131

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v8, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_11f

    :cond_131
    shl-int v15, v15, v16

    or-int/2addr v8, v15

    move/from16 v15, v17

    :cond_136
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_162

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v15

    move/from16 v15, v34

    :goto_148
    add-int/lit8 v18, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_15b

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_148

    :cond_15b
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v3, v18

    goto :goto_164

    :cond_162
    move/from16 v3, v16

    :goto_164
    add-int/lit8 v16, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_18f

    and-int/lit16 v3, v3, 0x1fff

    const/16 v17, 0xd

    move/from16 v34, v16

    move/from16 v16, v3

    move/from16 v3, v34

    :goto_176
    add-int/lit8 v18, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_189

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int v16, v16, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v18

    goto :goto_176

    :cond_189
    shl-int v3, v3, v17

    or-int v3, v16, v3

    move/from16 v16, v18

    :cond_18f
    add-int v17, v3, v8

    add-int v15, v17, v15

    new-array v15, v15, [I

    shl-int/lit8 v17, v9, 0x1

    add-int v10, v17, v10

    move/from16 v34, v16

    move/from16 v16, v9

    move v9, v12

    move/from16 v12, v34

    :goto_1a0
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzbbh()[Ljava/lang/Object;

    move-result-object v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzbba()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move/from16 v18, v10

    mul-int/lit8 v10, v14, 0x3

    new-array v10, v10, [I

    shl-int/2addr v14, v4

    new-array v14, v14, [Ljava/lang/Object;

    add-int v20, v3, v8

    move/from16 v22, v3

    move/from16 v23, v20

    const/4 v8, 0x0

    const/16 v21, 0x0

    :goto_1c0
    if-ge v12, v2, :cond_41a

    add-int/lit8 v24, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v4, 0xd800

    if-lt v12, v4, :cond_1f4

    and-int/lit16 v12, v12, 0x1fff

    const/16 v26, 0xd

    move/from16 v34, v24

    move/from16 v24, v12

    move/from16 v12, v34

    :goto_1d7
    add-int/lit8 v27, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v4, :cond_1ed

    and-int/lit16 v4, v12, 0x1fff

    shl-int v4, v4, v26

    or-int v24, v24, v4

    add-int/lit8 v26, v26, 0xd

    move/from16 v12, v27

    const v4, 0xd800

    goto :goto_1d7

    :cond_1ed
    shl-int v4, v12, v26

    or-int v12, v24, v4

    move/from16 v4, v27

    goto :goto_1f6

    :cond_1f4
    move/from16 v4, v24

    :goto_1f6
    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_22a

    and-int/lit16 v4, v4, 0x1fff

    const/16 v27, 0xd

    move/from16 v34, v24

    move/from16 v24, v4

    move/from16 v4, v34

    :goto_20d
    add-int/lit8 v28, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v2, :cond_223

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v27

    or-int v24, v24, v2

    add-int/lit8 v27, v27, 0xd

    move/from16 v4, v28

    const v2, 0xd800

    goto :goto_20d

    :cond_223
    shl-int v2, v4, v27

    or-int v4, v24, v2

    move/from16 v2, v28

    goto :goto_22c

    :cond_22a
    move/from16 v2, v24

    :goto_22c
    move/from16 v24, v3

    and-int/lit16 v3, v4, 0xff

    move/from16 v27, v11

    and-int/lit16 v11, v4, 0x400

    if-eqz v11, :cond_23b

    add-int/lit8 v11, v8, 0x1

    aput v21, v15, v8

    move v8, v11

    :cond_23b
    const/16 v11, 0x33

    move/from16 v30, v8

    if-lt v3, v11, :cond_2e1

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v8, 0xd800

    if-lt v2, v8, :cond_26a

    and-int/lit16 v2, v2, 0x1fff

    const/16 v32, 0xd

    :goto_250
    add-int/lit8 v33, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v8, :cond_265

    and-int/lit16 v8, v11, 0x1fff

    shl-int v8, v8, v32

    or-int/2addr v2, v8

    add-int/lit8 v32, v32, 0xd

    move/from16 v11, v33

    const v8, 0xd800

    goto :goto_250

    :cond_265
    shl-int v8, v11, v32

    or-int/2addr v2, v8

    move/from16 v11, v33

    :cond_26a
    add-int/lit8 v8, v3, -0x33

    move/from16 v32, v11

    const/16 v11, 0x9

    if-eq v8, v11, :cond_28e

    const/16 v11, 0x11

    if-ne v8, v11, :cond_277

    goto :goto_28e

    :cond_277
    const/16 v11, 0xc

    if-ne v8, v11, :cond_28c

    and-int/lit8 v8, v5, 0x1

    const/4 v11, 0x1

    if-ne v8, v11, :cond_28c

    div-int/lit8 v8, v21, 0x3

    shl-int/2addr v8, v11

    add-int/2addr v8, v11

    add-int/lit8 v11, v18, 0x1

    aget-object v18, v17, v18

    aput-object v18, v14, v8

    move/from16 v18, v11

    :cond_28c
    const/4 v11, 0x1

    goto :goto_29b

    :cond_28e
    :goto_28e
    div-int/lit8 v8, v21, 0x3

    const/4 v11, 0x1

    shl-int/2addr v8, v11

    add-int/2addr v8, v11

    add-int/lit8 v25, v18, 0x1

    aget-object v18, v17, v18

    aput-object v18, v14, v8

    move/from16 v18, v25

    :goto_29b
    shl-int/2addr v2, v11

    aget-object v8, v17, v2

    instance-of v11, v8, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_2a5

    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_2ad

    :cond_2a5
    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v17, v2

    :goto_2ad
    move v11, v9

    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v9, v8

    add-int/lit8 v2, v2, 0x1

    aget-object v8, v17, v2

    move/from16 v28, v9

    instance-of v9, v8, Ljava/lang/reflect/Field;

    if-eqz v9, :cond_2c0

    check-cast v8, Ljava/lang/reflect/Field;

    goto :goto_2c8

    :cond_2c0
    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v17, v2

    :goto_2c8
    invoke-virtual {v6, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v2, v8

    move-object/from16 v31, v1

    move v8, v2

    move-object v1, v7

    move/from16 v25, v18

    move/from16 v9, v28

    const/4 v2, 0x0

    const/16 v19, 0x1

    move/from16 v28, v11

    move/from16 v18, v13

    move v13, v12

    move/from16 v12, v32

    goto/16 :goto_3e2

    :cond_2e1
    move v11, v9

    add-int/lit8 v8, v18, 0x1

    aget-object v9, v17, v18

    check-cast v9, Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    move/from16 v18, v13

    const/16 v13, 0x9

    if-eq v3, v13, :cond_361

    const/16 v13, 0x11

    if-ne v3, v13, :cond_2f8

    goto/16 :goto_361

    :cond_2f8
    const/16 v13, 0x1b

    if-eq v3, v13, :cond_350

    const/16 v13, 0x31

    if-ne v3, v13, :cond_301

    goto :goto_350

    :cond_301
    const/16 v13, 0xc

    if-eq v3, v13, :cond_33e

    const/16 v13, 0x1e

    if-eq v3, v13, :cond_33e

    const/16 v13, 0x2c

    if-ne v3, v13, :cond_30e

    goto :goto_33e

    :cond_30e
    const/16 v13, 0x32

    if-ne v3, v13, :cond_33a

    add-int/lit8 v13, v22, 0x1

    aput v21, v15, v22

    div-int/lit8 v22, v21, 0x3

    const/16 v25, 0x1

    shl-int/lit8 v22, v22, 0x1

    add-int/lit8 v28, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v22

    and-int/lit16 v8, v4, 0x800

    if-eqz v8, :cond_333

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v8, v28, 0x1

    aget-object v28, v17, v28

    aput-object v28, v14, v22

    move/from16 v28, v11

    move/from16 v22, v13

    goto :goto_36e

    :cond_333
    move/from16 v22, v13

    move/from16 v8, v28

    move/from16 v28, v11

    goto :goto_36e

    :cond_33a
    move/from16 v28, v11

    const/4 v11, 0x1

    goto :goto_36e

    :cond_33e
    :goto_33e
    and-int/lit8 v13, v5, 0x1

    move/from16 v28, v11

    const/4 v11, 0x1

    if-ne v13, v11, :cond_36e

    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    add-int/lit8 v25, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v13

    goto :goto_35d

    :cond_350
    :goto_350
    move/from16 v28, v11

    const/4 v11, 0x1

    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    add-int/lit8 v25, v8, 0x1

    aget-object v8, v17, v8

    aput-object v8, v14, v13

    :goto_35d
    move v13, v12

    move/from16 v8, v25

    goto :goto_36f

    :cond_361
    :goto_361
    move/from16 v28, v11

    const/4 v11, 0x1

    div-int/lit8 v13, v21, 0x3

    shl-int/2addr v13, v11

    add-int/2addr v13, v11

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v14, v13

    :cond_36e
    :goto_36e
    move v13, v12

    :goto_36f
    invoke-virtual {v6, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v9, v11

    and-int/lit8 v11, v5, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3c9

    const/16 v11, 0x11

    if-gt v3, v11, :cond_3c9

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const v12, 0xd800

    if-lt v2, v12, :cond_3a3

    and-int/lit16 v2, v2, 0x1fff

    const/16 v19, 0xd

    :goto_38c
    add-int/lit8 v29, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_39e

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v19

    or-int/2addr v2, v11

    add-int/lit8 v19, v19, 0xd

    move/from16 v11, v29

    goto :goto_38c

    :cond_39e
    shl-int v11, v11, v19

    or-int/2addr v2, v11

    move/from16 v11, v29

    :cond_3a3
    const/16 v19, 0x1

    shl-int/lit8 v25, v16, 0x1

    div-int/lit8 v29, v2, 0x20

    add-int v25, v25, v29

    aget-object v12, v17, v25

    move-object/from16 v31, v1

    instance-of v1, v12, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3b6

    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_3be

    :cond_3b6
    check-cast v12, Ljava/lang/String;

    invoke-static {v7, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    aput-object v12, v17, v25

    :goto_3be
    move-object v1, v7

    move/from16 v25, v8

    invoke-virtual {v6, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    rem-int/lit8 v2, v2, 0x20

    goto :goto_3d3

    :cond_3c9
    move-object/from16 v31, v1

    move-object v1, v7

    move/from16 v25, v8

    const/16 v19, 0x1

    move v11, v2

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_3d3
    const/16 v7, 0x12

    if-lt v3, v7, :cond_3e1

    const/16 v7, 0x31

    if-gt v3, v7, :cond_3e1

    add-int/lit8 v7, v23, 0x1

    aput v9, v15, v23

    move/from16 v23, v7

    :cond_3e1
    move v12, v11

    :goto_3e2
    add-int/lit8 v7, v21, 0x1

    aput v13, v10, v21

    add-int/lit8 v11, v7, 0x1

    and-int/lit16 v13, v4, 0x200

    if-eqz v13, :cond_3ef

    const/high16 v13, 0x20000000

    goto :goto_3f0

    :cond_3ef
    const/4 v13, 0x0

    :goto_3f0
    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_3f7

    const/high16 v4, 0x10000000

    goto :goto_3f8

    :cond_3f7
    const/4 v4, 0x0

    :goto_3f8
    or-int/2addr v4, v13

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v4

    or-int/2addr v3, v9

    aput v3, v10, v7

    add-int/lit8 v21, v11, 0x1

    shl-int/lit8 v2, v2, 0x14

    or-int/2addr v2, v8

    aput v2, v10, v11

    move-object v7, v1

    move/from16 v13, v18

    move/from16 v3, v24

    move/from16 v18, v25

    move/from16 v2, v26

    move/from16 v11, v27

    move/from16 v9, v28

    move/from16 v8, v30

    move-object/from16 v1, v31

    const/4 v4, 0x1

    goto/16 :goto_1c0

    :cond_41a
    move/from16 v24, v3

    move/from16 v28, v9

    move/from16 v27, v11

    move/from16 v18, v13

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdst;->zzbba()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    const/4 v12, 0x0

    move-object v5, v1

    move-object v6, v10

    move-object v7, v14

    move/from16 v8, v28

    move/from16 v9, v18

    move-object v10, v0

    move-object v13, v15

    move/from16 v14, v24

    move/from16 v15, v20

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/ads/zzdsk;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzdsg;ZZ[IIILcom/google/android/gms/internal/ads/zzdso;Lcom/google/android/gms/internal/ads/zzdrq;Lcom/google/android/gms/internal/ads/zzdtn;Lcom/google/android/gms/internal/ads/zzdql;Lcom/google/android/gms/internal/ads/zzdrz;)V

    return-object v1

    :cond_444
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdtk;->zzbay()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhle:I

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    goto :goto_453

    :goto_452
    throw v0

    :goto_453
    goto :goto_452
.end method

.method private final zza(IILjava/util/Map;Lcom/google/android/gms/internal/ads/zzdrc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/android/gms/internal/ads/zzdrc;",
            "TUB;",
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgs(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzas(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrx;

    move-result-object p1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_12
    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p4, v1}, Lcom/google/android/gms/internal/ads/zzdrc;->zzf(I)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez p5, :cond_34

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzdtn;->zzbbw()Ljava/lang/Object;

    move-result-object p5

    :cond_34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdry;->zza(Lcom/google/android/gms/internal/ads/zzdrx;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzfo(I)Lcom/google/android/gms/internal/ads/zzdpu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpu;->zzaxt()Lcom/google/android/gms/internal/ads/zzdqf;

    move-result-object v2

    :try_start_48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzdry;->zza(Lcom/google/android/gms/internal/ads/zzdqf;Lcom/google/android/gms/internal/ads/zzdrx;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_5e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpu;->zzaxs()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v0

    invoke-virtual {p6, p5, p2, v0}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzdpm;)V

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    :catch_5e
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_65
    return-object p5
.end method

.method private final zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "ITUB;",
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v3, v0, p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_14

    return-object p3

    :cond_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgt(I)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v5

    if-nez v5, :cond_1b

    return-object p3

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzan(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    move-object v1, p0

    move v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(IILjava/util/Map;Lcom/google/android/gms/internal/ads/zzdrc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static zza(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_69

    :goto_68
    throw v1

    :goto_69
    goto :goto_68
.end method

.method private static zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V
    .registers 4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzduk;->zzg(ILjava/lang/String;)V

    return-void

    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdtn;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdtn<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/ads/zzduk;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzduk;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzduk;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    if-eqz p3, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgs(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/ads/zzdrz;->zzas(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrx;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/ads/zzdrz;->zzao(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILcom/google/android/gms/internal/ads/zzdrx;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private final zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzdsw;)V
    .registers 6

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgw(I)Z

    move-result v0

    const v1, 0xfffff

    if-eqz v0, :cond_13

    and-int/2addr p2, v1

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayb()Ljava/lang/String;

    move-result-object p2

    :goto_f
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhng:Z

    and-int/2addr p2, v1

    if-eqz v0, :cond_1e

    int-to-long v0, p2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzdsw;->readString()Ljava/lang/String;

    move-result-object p2

    goto :goto_f

    :cond_1e
    int-to-long v0, p2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayc()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p2

    goto :goto_f
.end method

.method private final zza(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    invoke-static {v2, p2}, Lcom/google/android/gms/internal/ads/zzdqx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzf(Ljava/lang/Object;I)V

    return-void

    :cond_27
    if-eqz p2, :cond_2f

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzf(Ljava/lang/Object;I)V

    :cond_2f
    return-void
.end method

.method private final zza(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgv(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private final zza(Ljava/lang/Object;III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnh:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_9
    and-int p1, p3, p4

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private static zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzdsv;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzaw(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzam(II)I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnc:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnd:I

    if-gt p1, v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzan(II)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private final zzan(II)I
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-gt p2, v0, :cond_1e

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v3, v3, v2

    if-ne p1, v3, :cond_16

    return v2

    :cond_16
    if-ge p1, v3, :cond_1b

    add-int/lit8 v0, v1, -0x1

    goto :goto_7

    :cond_1b
    add-int/lit8 p2, v1, 0x1

    goto :goto_7

    :cond_1e
    const/4 p1, -0x1

    return p1
.end method

.method private static zzav(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdtq;
    .registers 3

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdqw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbbx()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbby()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    :cond_10
    return-object v0
.end method

.method private final zzb(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgv(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzduk;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-eqz v3, :cond_23

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v3

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqm;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_25

    :cond_23
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_25
    const/4 v6, -0x1

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    array-length v7, v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2e
    if-ge v5, v7, :cond_47d

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v12

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v14, v13, v5

    const/high16 v15, 0xff00000

    and-int/2addr v15, v12

    ushr-int/lit8 v15, v15, 0x14

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnh:Z

    const v16, 0xfffff

    if-nez v4, :cond_62

    const/16 v4, 0x11

    if-gt v15, v4, :cond_62

    add-int/lit8 v4, v5, 0x2

    aget v4, v13, v4

    and-int v13, v4, v16

    move-object/from16 v17, v10

    if-eq v13, v6, :cond_58

    int-to-long v9, v13

    invoke-virtual {v8, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    goto :goto_59

    :cond_58
    move v13, v6

    :goto_59
    ushr-int/lit8 v4, v4, 0x14

    const/4 v6, 0x1

    shl-int v9, v6, v4

    move v6, v13

    move-object/from16 v10, v17

    goto :goto_67

    :cond_62
    move-object/from16 v17, v10

    move-object/from16 v10, v17

    const/4 v9, 0x0

    :goto_67
    if-eqz v10, :cond_86

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Ljava/util/Map$Entry;)I

    move-result v4

    if-gt v4, v14, :cond_86

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzduk;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_67

    :cond_84
    const/4 v10, 0x0

    goto :goto_67

    :cond_86
    and-int v4, v12, v16

    int-to-long v12, v4

    packed-switch v15, :pswitch_data_49e

    :cond_8c
    :goto_8c
    const/4 v15, 0x0

    goto/16 :goto_479

    :pswitch_8f
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto :goto_8c

    :pswitch_a1
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzh(IJ)V

    goto :goto_8c

    :pswitch_af
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzac(II)V

    goto :goto_8c

    :pswitch_bd
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzp(IJ)V

    goto :goto_8c

    :pswitch_cb
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzak(II)V

    goto :goto_8c

    :pswitch_d9
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzal(II)V

    goto :goto_8c

    :pswitch_e7
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzab(II)V

    goto :goto_8c

    :pswitch_f5
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    goto :goto_8c

    :pswitch_105
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_8c

    :pswitch_118
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    goto/16 :goto_8c

    :pswitch_127
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzj(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzg(IZ)V

    goto/16 :goto_8c

    :pswitch_136
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzad(II)V

    goto/16 :goto_8c

    :pswitch_145
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzi(IJ)V

    goto/16 :goto_8c

    :pswitch_154
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzaa(II)V

    goto/16 :goto_8c

    :pswitch_163
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzg(IJ)V

    goto/16 :goto_8c

    :pswitch_172
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzo(IJ)V

    goto/16 :goto_8c

    :pswitch_181
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzg(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zza(IF)V

    goto/16 :goto_8c

    :pswitch_190
    invoke-direct {v0, v1, v14, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zzf(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ID)V

    goto/16 :goto_8c

    :pswitch_19f
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v14, v4, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Lcom/google/android/gms/internal/ads/zzduk;ILjava/lang/Object;I)V

    goto/16 :goto_8c

    :pswitch_1a8
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v12

    invoke-static {v4, v9, v2, v12}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_8c

    :pswitch_1bb
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v14, 0x1

    goto/16 :goto_276

    :pswitch_1c8
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    goto/16 :goto_280

    :pswitch_1cf
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    goto/16 :goto_290

    :pswitch_1d6
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    goto/16 :goto_2a0

    :pswitch_1dd
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    goto/16 :goto_2b0

    :pswitch_1e4
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    goto/16 :goto_2c0

    :pswitch_1eb
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_1fb
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_20b
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_21b
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_22b
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_23b
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_24b
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_25b
    const/4 v14, 0x1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_26b
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v14, 0x0

    :goto_276
    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_27b
    const/4 v14, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    :goto_280
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_28b
    const/4 v14, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    :goto_290
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_29b
    const/4 v14, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    :goto_2a0
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_2ab
    const/4 v14, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    :goto_2b0
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_2bb
    const/4 v14, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    :goto_2c0
    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzdsx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_8c

    :pswitch_2cb
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;)V

    goto/16 :goto_8c

    :pswitch_2da
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v12

    invoke-static {v4, v9, v2, v12}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_8c

    :pswitch_2ed
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;)V

    goto/16 :goto_8c

    :pswitch_2fc
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/ads/zzdsx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_479

    :pswitch_30c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/ads/zzdsx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_479

    :pswitch_31c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/ads/zzdsx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_479

    :pswitch_32c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/ads/zzdsx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_479

    :pswitch_33c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/ads/zzdsx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_479

    :pswitch_34c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_479

    :pswitch_35c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_479

    :pswitch_36c
    const/4 v15, 0x0

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v5

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v4, v9, v2, v15}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_479

    :pswitch_37c
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_479

    :pswitch_38e
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzh(IJ)V

    goto/16 :goto_479

    :pswitch_39c
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzac(II)V

    goto/16 :goto_479

    :pswitch_3aa
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzp(IJ)V

    goto/16 :goto_479

    :pswitch_3b8
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzak(II)V

    goto/16 :goto_479

    :pswitch_3c6
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzal(II)V

    goto/16 :goto_479

    :pswitch_3d4
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzab(II)V

    goto/16 :goto_479

    :pswitch_3e2
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    goto/16 :goto_479

    :pswitch_3f2
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v9

    invoke-interface {v2, v14, v4, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_479

    :pswitch_404
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v14, v4, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    goto/16 :goto_479

    :pswitch_412
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdtt;->zzm(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzg(IZ)V

    goto :goto_479

    :pswitch_41f
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzad(II)V

    goto :goto_479

    :pswitch_42c
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzi(IJ)V

    goto :goto_479

    :pswitch_439
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zzaa(II)V

    goto :goto_479

    :pswitch_446
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzg(IJ)V

    goto :goto_479

    :pswitch_453
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzo(IJ)V

    goto :goto_479

    :pswitch_460
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdtt;->zzn(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v14, v4}, Lcom/google/android/gms/internal/ads/zzduk;->zza(IF)V

    goto :goto_479

    :pswitch_46d
    const/4 v15, 0x0

    and-int v4, v11, v9

    if-eqz v4, :cond_479

    invoke-static {v1, v12, v13}, Lcom/google/android/gms/internal/ads/zzdtt;->zzo(Ljava/lang/Object;J)D

    move-result-wide v12

    invoke-interface {v2, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ID)V

    :cond_479
    :goto_479
    add-int/lit8 v5, v5, 0x3

    goto/16 :goto_2e

    :cond_47d
    move-object/from16 v17, v10

    move-object/from16 v4, v17

    :goto_481
    if-eqz v4, :cond_497

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v5, v2, v4}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzduk;Ljava/util/Map$Entry;)V

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_495

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    goto :goto_481

    :cond_495
    const/4 v4, 0x0

    goto :goto_481

    :cond_497
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Lcom/google/android/gms/internal/ads/zzdtn;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void

    nop

    :pswitch_data_49e
    .packed-switch 0x0
        :pswitch_46d
        :pswitch_460
        :pswitch_453
        :pswitch_446
        :pswitch_439
        :pswitch_42c
        :pswitch_41f
        :pswitch_412
        :pswitch_404
        :pswitch_3f2
        :pswitch_3e2
        :pswitch_3d4
        :pswitch_3c6
        :pswitch_3b8
        :pswitch_3aa
        :pswitch_39c
        :pswitch_38e
        :pswitch_37c
        :pswitch_36c
        :pswitch_35c
        :pswitch_34c
        :pswitch_33c
        :pswitch_32c
        :pswitch_31c
        :pswitch_30c
        :pswitch_2fc
        :pswitch_2ed
        :pswitch_2da
        :pswitch_2cb
        :pswitch_2bb
        :pswitch_2ab
        :pswitch_29b
        :pswitch_28b
        :pswitch_27b
        :pswitch_26b
        :pswitch_25b
        :pswitch_24b
        :pswitch_23b
        :pswitch_22b
        :pswitch_21b
        :pswitch_20b
        :pswitch_1fb
        :pswitch_1eb
        :pswitch_1e4
        :pswitch_1dd
        :pswitch_1d6
        :pswitch_1cf
        :pswitch_1c8
        :pswitch_1bb
        :pswitch_1a8
        :pswitch_19f
        :pswitch_190
        :pswitch_181
        :pswitch_172
        :pswitch_163
        :pswitch_154
        :pswitch_145
        :pswitch_136
        :pswitch_127
        :pswitch_118
        :pswitch_105
        :pswitch_f5
        :pswitch_e7
        :pswitch_d9
        :pswitch_cb
        :pswitch_bd
        :pswitch_af
        :pswitch_a1
        :pswitch_8f
    .end packed-switch
.end method

.method private final zzb(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2b

    if-eqz p2, :cond_2b

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzdqx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzb(Ljava/lang/Object;II)V

    return-void

    :cond_2b
    if-eqz p2, :cond_33

    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzb(Ljava/lang/Object;II)V

    :cond_33
    return-void
.end method

.method private final zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private static zze(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final zze(Ljava/lang/Object;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnh:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_e2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_f6

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_20
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_27

    return v3

    :cond_27
    return v2

    :pswitch_28
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_31

    return v3

    :cond_31
    return v2

    :pswitch_32
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_39

    return v3

    :cond_39
    return v2

    :pswitch_3a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_43

    return v3

    :cond_43
    return v2

    :pswitch_44
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4b

    return v3

    :cond_4b
    return v2

    :pswitch_4c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_53

    return v3

    :cond_53
    return v2

    :pswitch_54
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5b

    return v3

    :cond_5b
    return v2

    :pswitch_5c
    sget-object p2, Lcom/google/android/gms/internal/ads/zzdpm;->zzhgb:Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    return v3

    :cond_69
    return v2

    :pswitch_6a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_71

    return v3

    :cond_71
    return v2

    :pswitch_72
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_84

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_83

    return v3

    :cond_83
    return v2

    :cond_84
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz p2, :cond_92

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdpm;->zzhgb:Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzdpm;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    return v3

    :cond_91
    return v2

    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_98
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzm(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :pswitch_9d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a4

    return v3

    :cond_a4
    return v2

    :pswitch_a5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_ae

    return v3

    :cond_ae
    return v2

    :pswitch_af
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_b6

    return v3

    :cond_b6
    return v2

    :pswitch_b7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_c0

    return v3

    :cond_c0
    return v2

    :pswitch_c1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_ca

    return v3

    :cond_ca
    return v2

    :pswitch_cb
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzn(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_d5

    return v3

    :cond_d5
    return v2

    :pswitch_d6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzo(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_e1

    return v3

    :cond_e1
    return v2

    :cond_e2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgv(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f4

    return v3

    :cond_f4
    return v2

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_cb
        :pswitch_c1
        :pswitch_b7
        :pswitch_af
        :pswitch_a5
        :pswitch_9d
        :pswitch_98
        :pswitch_72
        :pswitch_6a
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_3a
        :pswitch_32
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method private static zzf(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final zzf(Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnh:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgv(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static zzg(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;
    .registers 5

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnb:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdsv;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnb:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdsr;->zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnb:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final zzgs(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnb:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzgt(I)Lcom/google/android/gms/internal/ads/zzdrc;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnb:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrc;

    return-object p1
.end method

.method private final zzgu(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzgv(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzgw(I)Z
    .registers 2

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private final zzgx(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnc:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnd:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zzan(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private static zzh(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzi(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzj(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1ba

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_1e4

    goto/16 :goto_1b3

    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgv(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b3

    goto/16 :goto_197

    :pswitch_3c
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1b3

    :pswitch_4a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b3

    goto/16 :goto_1b2

    :pswitch_60
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1b3

    goto/16 :goto_197

    :pswitch_74
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1b3

    goto/16 :goto_1b2

    :pswitch_86
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1b3

    goto/16 :goto_197

    :pswitch_9a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1b3

    goto/16 :goto_1b2

    :pswitch_ac
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1b3

    goto/16 :goto_197

    :pswitch_be
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1b3

    goto/16 :goto_1b2

    :pswitch_d0
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b3

    goto/16 :goto_197

    :pswitch_e6
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b3

    goto/16 :goto_1b2

    :pswitch_fc
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b3

    goto/16 :goto_197

    :pswitch_112
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzm(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzm(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1b3

    goto/16 :goto_1b2

    :pswitch_124
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1b3

    goto :goto_197

    :pswitch_135
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1b3

    goto :goto_1b2

    :pswitch_148
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1b3

    goto :goto_197

    :pswitch_159
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1b3

    goto :goto_1b2

    :pswitch_16c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1b3

    goto :goto_197

    :pswitch_17f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzn(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzn(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1b3

    :goto_197
    goto :goto_1b2

    :pswitch_198
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzc(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1b2

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzo(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1b3

    :cond_1b2
    :goto_1b2
    const/4 v3, 0x0

    :cond_1b3
    :goto_1b3
    if-nez v3, :cond_1b6

    return v1

    :cond_1b6
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    :cond_1ba
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1cd

    return v1

    :cond_1cd
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-eqz v0, :cond_1e2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqm;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1e2
    return v3

    nop

    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_198
        :pswitch_17f
        :pswitch_16c
        :pswitch_159
        :pswitch_148
        :pswitch_135
        :pswitch_124
        :pswitch_112
        :pswitch_fc
        :pswitch_e6
        :pswitch_d0
        :pswitch_be
        :pswitch_ac
        :pswitch_9a
        :pswitch_86
        :pswitch_74
        :pswitch_60
        :pswitch_4a
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final hashCode(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_12e

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_14e

    goto/16 :goto_12a

    :pswitch_20
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_61

    :pswitch_27
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto/16 :goto_a8

    :pswitch_2f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_4b

    :pswitch_36
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto/16 :goto_a8

    :pswitch_3e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_4b

    :pswitch_45
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    :goto_4b
    goto :goto_93

    :pswitch_4c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_93

    :pswitch_53
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto/16 :goto_d1

    :pswitch_5b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    :goto_61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    goto/16 :goto_d7

    :pswitch_69
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto/16 :goto_ea

    :pswitch_71
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzj(Ljava/lang/Object;J)Z

    move-result v3

    goto/16 :goto_fd

    :pswitch_7f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_93

    :pswitch_86
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_a8

    :pswitch_8d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    :goto_93
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_129

    :pswitch_9b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    goto :goto_a8

    :pswitch_a2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    :goto_a8
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v3

    goto/16 :goto_125

    :pswitch_b0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzg(Ljava/lang/Object;J)F

    move-result v3

    goto :goto_116

    :pswitch_bd
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_12a

    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzf(Ljava/lang/Object;J)D

    move-result-wide v3

    goto :goto_121

    :pswitch_ca
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e6

    goto :goto_e2

    :goto_d1
    :pswitch_d1
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    :goto_d7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_129

    :pswitch_dc
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e6

    :goto_e2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_e6
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_12a

    :goto_ea
    :pswitch_ea
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_129

    :pswitch_f7
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzm(Ljava/lang/Object;J)Z

    move-result v3

    :goto_fd
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdqx;->zzbj(Z)I

    move-result v3

    goto :goto_129

    :pswitch_102
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_129

    :pswitch_109
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v3

    goto :goto_125

    :pswitch_110
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzn(Ljava/lang/Object;J)F

    move-result v3

    :goto_116
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_129

    :pswitch_11b
    mul-int/lit8 v2, v2, 0x35

    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzo(Ljava/lang/Object;J)D

    move-result-wide v3

    :goto_121
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    :goto_125
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdqx;->zzfk(J)I

    move-result v3

    :goto_129
    add-int/2addr v2, v3

    :cond_12a
    :goto_12a
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_12e
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzay(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-eqz v0, :cond_14c

    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_14c
    return v2

    nop

    :pswitch_data_14e
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_110
        :pswitch_109
        :pswitch_109
        :pswitch_102
        :pswitch_109
        :pswitch_102
        :pswitch_f7
        :pswitch_ea
        :pswitch_dc
        :pswitch_d1
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_109
        :pswitch_102
        :pswitch_109
        :pswitch_ca
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_bd
        :pswitch_b0
        :pswitch_a2
        :pswitch_9b
        :pswitch_8d
        :pswitch_86
        :pswitch_7f
        :pswitch_71
        :pswitch_69
        :pswitch_5b
        :pswitch_53
        :pswitch_4c
        :pswitch_45
        :pswitch_3e
        :pswitch_36
        :pswitch_2f
        :pswitch_27
        :pswitch_20
    .end packed-switch
.end method

.method public final newInstance()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnm:Lcom/google/android/gms/internal/ads/zzdso;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdso;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzdpl;)I
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            ")I"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    :goto_17
    if-ge v0, v13, :cond_469

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_28

    invoke-static {v0, v12, v3, v9}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    move v4, v0

    move v5, v3

    goto :goto_2a

    :cond_28
    move v5, v0

    move v4, v3

    :goto_2a
    ushr-int/lit8 v3, v5, 0x3

    and-int/lit8 v0, v5, 0x7

    const/4 v8, 0x3

    if-le v3, v1, :cond_37

    div-int/2addr v2, v8

    invoke-direct {v15, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzam(II)I

    move-result v1

    goto :goto_3b

    :cond_37
    invoke-direct {v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgx(I)I

    move-result v1

    :goto_3b
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_4e

    move/from16 v24, v3

    move v2, v4

    move/from16 v19, v6

    move/from16 v17, v7

    move-object/from16 v26, v10

    move v6, v11

    const/16 v18, 0x0

    move v7, v5

    goto/16 :goto_3ce

    :cond_4e
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    add-int/lit8 v18, v2, 0x1

    aget v8, v1, v18

    const/high16 v18, 0xff00000

    and-int v18, v8, v18

    ushr-int/lit8 v11, v18, 0x14

    const v18, 0xfffff

    move/from16 v19, v5

    and-int v5, v8, v18

    int-to-long v12, v5

    const/16 v5, 0x11

    move/from16 v20, v8

    if-gt v11, v5, :cond_2c7

    add-int/lit8 v5, v2, 0x2

    aget v1, v1, v5

    ushr-int/lit8 v5, v1, 0x14

    const/4 v8, 0x1

    shl-int v22, v8, v5

    and-int v1, v1, v18

    const/4 v5, -0x1

    if-eq v1, v7, :cond_82

    if-eq v7, v5, :cond_7c

    int-to-long v8, v7

    invoke-virtual {v10, v14, v8, v9, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7c
    int-to-long v6, v1

    invoke-virtual {v10, v14, v6, v7}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v7, v1

    :cond_82
    const/4 v1, 0x5

    packed-switch v11, :pswitch_data_4b6

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move/from16 v8, v19

    const/16 v18, -0x1

    :goto_92
    move v7, v4

    goto/16 :goto_2b7

    :pswitch_95
    const/4 v8, 0x3

    if-ne v0, v8, :cond_d4

    shl-int/lit8 v0, v3, 0x3

    or-int/lit8 v8, v0, 0x4

    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    move-object/from16 v1, p2

    move v9, v2

    move v2, v4

    move v11, v3

    move/from16 v3, p4

    move v4, v8

    move/from16 v8, v19

    const/16 v18, -0x1

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;[BIIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_b9

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    goto :goto_c3

    :cond_b9
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_c3
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v6, v6, v22

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v8

    move v2, v9

    move v1, v11

    move/from16 v11, p5

    move-object v9, v5

    goto/16 :goto_17

    :cond_d4
    move v9, v2

    move v11, v3

    move/from16 v8, v19

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    goto/16 :goto_230

    :pswitch_e0
    move-object/from16 v5, p6

    move v9, v2

    move v11, v3

    move/from16 v8, v19

    const/16 v18, -0x1

    if-nez v0, :cond_108

    move-wide v2, v12

    move-object/from16 v12, p2

    invoke-static {v12, v4, v5}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v13

    iget-wide v0, v5, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpy;->zzez(J)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v13

    move-object v13, v5

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    move/from16 v0, p3

    goto/16 :goto_2ad

    :cond_108
    move-object/from16 v12, p2

    move-object v13, v5

    goto/16 :goto_230

    :pswitch_10d
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_230

    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    iget v1, v13, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpy;->zzft(I)I

    move-result v1

    :cond_124
    :goto_124
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_16d

    :pswitch_128
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_230

    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    iget v1, v13, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgt(I)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v4

    if-eqz v4, :cond_124

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzdrc;->zzf(I)Z

    move-result v4

    if-eqz v4, :cond_148

    goto :goto_124

    :cond_148
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzav(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/ads/zzdtq;->zzc(ILjava/lang/Object;)V

    goto/16 :goto_2ad

    :pswitch_156
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_230

    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/zzdpi;->zze([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_16d
    or-int v6, v6, v22

    goto/16 :goto_2ad

    :pswitch_171
    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_19b

    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    move/from16 v5, p4

    invoke-static {v0, v12, v4, v5, v13}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;[BIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_190

    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    goto :goto_1c0

    :cond_190
    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, v13, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzdqx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1c0

    :cond_19b
    move/from16 v5, p4

    goto/16 :goto_230

    :pswitch_19f
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x2

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_230

    const/high16 v0, 0x20000000

    and-int v0, v20, v0

    if-nez v0, :cond_1ba

    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/zzdpi;->zzc([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    goto :goto_1be

    :cond_1ba
    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/zzdpi;->zzd([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    :goto_1be
    iget-object v1, v13, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    :goto_1c0
    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_204

    :pswitch_1c4
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-nez v0, :cond_230

    invoke-static {v12, v4, v13}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    move/from16 p3, v0

    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    const-wide/16 v19, 0x0

    cmp-long v4, v0, v19

    if-eqz v4, :cond_1e3

    const/4 v0, 0x1

    goto :goto_1e4

    :cond_1e3
    const/4 v0, 0x0

    :goto_1e4
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JZ)V

    or-int v6, v6, v22

    move/from16 v0, p3

    goto :goto_206

    :pswitch_1ec
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_230

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzdpi;->zzf([BI)I

    move-result v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_204
    or-int v6, v6, v22

    :goto_206
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v11, p5

    move v13, v5

    goto/16 :goto_17

    :pswitch_20f
    move/from16 v5, p4

    move v9, v2

    move v11, v3

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x1

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    if-ne v0, v1, :cond_230

    invoke-static {v12, v4}, Lcom/google/android/gms/internal/ads/zzdpi;->zzg([BI)J

    move-result-wide v19

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 p3, v7

    move v7, v4

    move-wide/from16 v4, v19

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_2a7

    :cond_230
    :goto_230
    move/from16 p3, v7

    goto/16 :goto_92

    :pswitch_234
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_2b7

    invoke-static {v12, v7, v13}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    iget v1, v13, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    invoke-virtual {v10, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_2a9

    :pswitch_24f
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-nez v0, :cond_2b7

    invoke-static {v12, v7, v13}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v7

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    or-int v6, v6, v22

    move v0, v7

    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    move/from16 v7, p3

    goto :goto_2b1

    :pswitch_275
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_2b7

    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zzi([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v7, 0x4

    goto :goto_2a9

    :pswitch_28f
    move v9, v2

    move v11, v3

    move/from16 p3, v7

    move-wide v2, v12

    move/from16 v8, v19

    const/4 v1, 0x1

    const/16 v18, -0x1

    move-object/from16 v12, p2

    move-object/from16 v13, p6

    move v7, v4

    if-ne v0, v1, :cond_2b7

    invoke-static {v12, v7}, Lcom/google/android/gms/internal/ads/zzdpi;->zzh([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JD)V

    :goto_2a7
    add-int/lit8 v0, v7, 0x8

    :goto_2a9
    or-int v6, v6, v22

    move/from16 v7, p3

    :goto_2ad
    move v3, v8

    move v2, v9

    move v1, v11

    move-object v9, v13

    :goto_2b1
    move/from16 v13, p4

    move/from16 v11, p5

    goto/16 :goto_17

    :cond_2b7
    :goto_2b7
    move/from16 v17, p3

    move/from16 v19, v6

    move v2, v7

    move v7, v8

    move/from16 v18, v9

    move-object/from16 v26, v10

    move/from16 v24, v11

    move/from16 v6, p5

    goto/16 :goto_3ce

    :cond_2c7
    move v5, v3

    move/from16 v17, v7

    move/from16 v8, v19

    const/16 v18, -0x1

    move v7, v4

    move-wide/from16 v27, v12

    move-object/from16 v12, p2

    move-object v13, v9

    move v9, v2

    move-wide/from16 v2, v27

    const/16 v1, 0x1b

    if-ne v11, v1, :cond_32c

    const/4 v1, 0x2

    if-ne v0, v1, :cond_31f

    invoke-virtual {v10, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdrd;->zzaxi()Z

    move-result v1

    if-nez v1, :cond_2fc

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2f3

    const/16 v1, 0xa

    goto :goto_2f5

    :cond_2f3
    shl-int/lit8 v1, v1, 0x1

    :goto_2f5
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrd;->zzfl(I)Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object v0

    invoke-virtual {v10, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2fc
    move-object v11, v0

    invoke-direct {v15, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    move v1, v8

    move-object/from16 v2, p2

    move v3, v7

    move/from16 v4, p4

    move v7, v5

    move-object v5, v11

    move/from16 v19, v6

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;I[BIILcom/google/android/gms/internal/ads/zzdrd;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    move/from16 v11, p5

    move v1, v7

    move v3, v8

    move v2, v9

    move-object v9, v13

    move/from16 v7, v17

    move/from16 v6, v19

    move/from16 v13, p4

    goto/16 :goto_17

    :cond_31f
    move/from16 v19, v6

    move/from16 v24, v5

    move v15, v7

    move/from16 v25, v8

    move/from16 v18, v9

    move-object/from16 v26, v10

    goto/16 :goto_3a9

    :cond_32c
    move/from16 v19, v6

    move v6, v5

    const/16 v1, 0x31

    if-gt v11, v1, :cond_37b

    move/from16 v5, v20

    int-to-long v4, v5

    move v1, v0

    move-object/from16 v0, p0

    move/from16 p3, v1

    move-object/from16 v1, p1

    move-wide/from16 v22, v2

    move-object/from16 v2, p2

    move v3, v7

    move-wide/from16 v20, v4

    move/from16 v4, p4

    move v5, v8

    move/from16 v24, v6

    move v15, v7

    move/from16 v7, p3

    move/from16 v25, v8

    move v8, v9

    move/from16 v18, v9

    move-object/from16 v26, v10

    move-wide/from16 v9, v20

    move-wide/from16 v12, v22

    move-object/from16 v14, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    if-ne v0, v15, :cond_361

    goto/16 :goto_3ca

    :cond_361
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v7, v17

    move/from16 v2, v18

    move/from16 v6, v19

    move/from16 v1, v24

    move/from16 v3, v25

    :goto_377
    move-object/from16 v10, v26

    goto/16 :goto_17

    :cond_37b
    move/from16 p3, v0

    move-wide/from16 v22, v2

    move/from16 v24, v6

    move v15, v7

    move/from16 v25, v8

    move/from16 v18, v9

    move-object/from16 v26, v10

    move/from16 v5, v20

    const/16 v0, 0x32

    move/from16 v7, p3

    if-ne v11, v0, :cond_3af

    const/4 v0, 0x2

    if-ne v7, v0, :cond_3a9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move-wide/from16 v6, v22

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    if-ne v0, v15, :cond_361

    goto :goto_3ca

    :cond_3a9
    :goto_3a9
    move/from16 v6, p5

    move v2, v15

    :goto_3ac
    move/from16 v7, v25

    goto :goto_3ce

    :cond_3af
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v25

    move/from16 v6, v24

    move v9, v11

    move-wide/from16 v10, v22

    move/from16 v12, v18

    move-object/from16 v13, p6

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    if-ne v0, v15, :cond_44f

    :goto_3ca
    move/from16 v6, p5

    move v2, v0

    goto :goto_3ac

    :goto_3ce
    if-ne v7, v6, :cond_3df

    if-nez v6, :cond_3d3

    goto :goto_3df

    :cond_3d3
    const/4 v4, -0x1

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move v3, v7

    move/from16 v0, v17

    move/from16 v1, v19

    goto/16 :goto_478

    :cond_3df
    :goto_3df
    move-object/from16 v8, p0

    iget-boolean v0, v8, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-eqz v0, :cond_427

    move-object/from16 v9, p6

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzdpl;->zzhga:Lcom/google/android/gms/internal/ads/zzdqj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqj;->zzaza()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v1

    if-eq v0, v1, :cond_424

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzdsk;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzdpl;->zzhga:Lcom/google/android/gms/internal/ads/zzdqj;

    move/from16 v10, v24

    invoke-virtual {v1, v0, v10}, Lcom/google/android/gms/internal/ads/zzdqj;->zza(Lcom/google/android/gms/internal/ads/zzdsg;I)Lcom/google/android/gms/internal/ads/zzdqw$zze;

    move-result-object v0

    if-nez v0, :cond_414

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzav(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BIILcom/google/android/gms/internal/ads/zzdtq;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v11, v6

    move v3, v7

    move-object v15, v8

    goto :goto_460

    :cond_414
    move-object/from16 v11, p1

    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zzb;->zzazz()Lcom/google/android/gms/internal/ads/zzdqm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdqw$zzb;->zzhku:Lcom/google/android/gms/internal/ads/zzdqm;

    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0

    :cond_424
    move-object/from16 v11, p1

    goto :goto_42b

    :cond_427
    move-object/from16 v11, p1

    move-object/from16 v9, p6

    :goto_42b
    move/from16 v10, v24

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzav(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v4

    move v0, v7

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BIILcom/google/android/gms/internal/ads/zzdtq;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move v3, v7

    move-object v15, v8

    move v1, v10

    move-object v14, v11

    move/from16 v7, v17

    move/from16 v2, v18

    move-object/from16 v10, v26

    move v11, v6

    move/from16 v6, v19

    goto/16 :goto_17

    :cond_44f
    move/from16 v10, v24

    move/from16 v7, v25

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move v3, v7

    :goto_460
    move v1, v10

    move/from16 v7, v17

    move/from16 v2, v18

    move/from16 v6, v19

    goto/16 :goto_377

    :cond_469
    move/from16 v19, v6

    move/from16 v17, v7

    move-object/from16 v26, v10

    move v6, v11

    move-object v11, v14

    move-object v8, v15

    move v2, v0

    move/from16 v0, v17

    move/from16 v1, v19

    const/4 v4, -0x1

    :goto_478
    if-eq v0, v4, :cond_480

    int-to-long v4, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v11, v4, v5, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_480
    const/4 v0, 0x0

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnk:I

    :goto_483
    iget v4, v8, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnl:I

    if-ge v1, v4, :cond_496

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    aget v4, v4, v1

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-direct {v8, v11, v4, v0, v5}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdtq;

    add-int/lit8 v1, v1, 0x1

    goto :goto_483

    :cond_496
    if-eqz v0, :cond_49d

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v1, v11, v0}, Lcom/google/android/gms/internal/ads/zzdtn;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_49d
    move/from16 v0, p4

    if-nez v6, :cond_4a9

    if-ne v2, v0, :cond_4a4

    goto :goto_4ad

    :cond_4a4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbai()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0

    :cond_4a9
    if-gt v2, v0, :cond_4ae

    if-ne v3, v6, :cond_4ae

    :goto_4ad
    return v2

    :cond_4ae
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbai()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    goto :goto_4b4

    :goto_4b3
    throw v0

    :goto_4b4
    goto :goto_4b3

    nop

    :pswitch_data_4b6
    .packed-switch 0x0
        :pswitch_28f
        :pswitch_275
        :pswitch_24f
        :pswitch_24f
        :pswitch_234
        :pswitch_20f
        :pswitch_1ec
        :pswitch_1c4
        :pswitch_19f
        :pswitch_171
        :pswitch_156
        :pswitch_234
        :pswitch_128
        :pswitch_1ec
        :pswitch_20f
        :pswitch_10d
        :pswitch_e0
        :pswitch_95
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsw;Lcom/google/android/gms/internal/ads/zzdqj;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzdsw;",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_533

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    const/4 v9, 0x0

    move-object v0, v9

    move-object v10, v0

    :cond_9
    :goto_9
    :try_start_9
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzays()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgx(I)I

    move-result v2
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_51b

    if-gez v2, :cond_77

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2f

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnk:I

    :goto_1a
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnl:I

    if-ge p2, p3, :cond_29

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    aget p3, p3, p2

    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    :cond_29
    if-eqz v10, :cond_2e

    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/ads/zzdtn;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2e
    return-void

    :cond_2f
    :try_start_2f
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-nez v2, :cond_35

    move-object v2, v9

    goto :goto_3c

    :cond_35
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhne:Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-virtual {v8, p3, v2, v1}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdsg;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    :goto_3c
    if-eqz v2, :cond_51

    if-nez v0, :cond_44

    invoke-virtual {v8, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzaj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v0

    :cond_44
    move-object v11, v0

    move-object v0, v8

    move-object v1, p2

    move-object v3, p3

    move-object v4, v11

    move-object v5, v10

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzdsw;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdqj;Lcom/google/android/gms/internal/ads/zzdqm;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v11

    goto :goto_9

    :cond_51
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Lcom/google/android/gms/internal/ads/zzdsw;)Z

    if-nez v10, :cond_5a

    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzaz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    :cond_5a
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsw;)Z

    move-result v1
    :try_end_5e
    .catchall {:try_start_2f .. :try_end_5e} :catchall_51b

    if-nez v1, :cond_9

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnk:I

    :goto_62
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnl:I

    if-ge p2, p3, :cond_71

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    aget p3, p3, p2

    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_62

    :cond_71
    if-eqz v10, :cond_76

    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/ads/zzdtn;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_76
    return-void

    :cond_77
    :try_start_77
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v3
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_51b

    const/high16 v4, 0xff00000

    and-int/2addr v4, v3

    ushr-int/lit8 v4, v4, 0x14

    const v5, 0xfffff

    packed-switch v4, :pswitch_data_53c

    if-nez v10, :cond_4d7

    :try_start_88
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdtn;->zzbbw()Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_4d7

    :pswitch_8e
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v5

    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zzb(Lcom/google/android/gms/internal/ads/zzdsv;Lcom/google/android/gms/internal/ads/zzdqj;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_9b
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_9

    :pswitch_a0
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayi()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9b

    :pswitch_ae
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayh()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9b

    :pswitch_bc
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayg()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9b

    :pswitch_ca
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayf()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9b

    :pswitch_d8
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaye()I

    move-result v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgt(I)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v6

    if-eqz v6, :cond_ef

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/zzdrc;->zzf(I)Z

    move-result v6

    if-eqz v6, :cond_e9

    goto :goto_ef

    :cond_e9
    invoke-static {v1, v4, v10, v7}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_9

    :cond_ef
    :goto_ef
    and-int/2addr v3, v5

    int-to-long v5, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9b

    :pswitch_f9
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayd()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9b

    :pswitch_107
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayc()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9b

    :pswitch_111
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    and-int/2addr v3, v5

    if-eqz v4, :cond_12e

    int-to-long v3, v3

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v6

    invoke-interface {p2, v6, p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zza(Lcom/google/android/gms/internal/ads/zzdsv;Lcom/google/android/gms/internal/ads/zzdqj;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzdqx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9b

    :cond_12e
    int-to-long v3, v3

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v5

    invoke-interface {p2, v5, p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zza(Lcom/google/android/gms/internal/ads/zzdsv;Lcom/google/android/gms/internal/ads/zzdqj;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9b

    :pswitch_13f
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzdsw;)V

    goto/16 :goto_9b

    :pswitch_144
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaya()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9b

    :pswitch_153
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxz()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9b

    :pswitch_162
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxy()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9b

    :pswitch_171
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxx()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9b

    :pswitch_180
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxv()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9b

    :pswitch_18f
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxw()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9b

    :pswitch_19e
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->readFloat()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9b

    :pswitch_1ad
    and-int/2addr v3, v5

    int-to-long v3, v3

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->readDouble()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9b

    :pswitch_1bc
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgs(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v2

    and-int/2addr v2, v5

    int-to-long v2, v2

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1d6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1ed

    :cond_1d6
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzdrz;->zzap(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ed

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v5, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzar(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v6, v5, v4}, Lcom/google/android/gms/internal/ads/zzdrz;->zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v4, v5

    :cond_1ed
    :goto_1ed
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzdrz;->zzan(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzas(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrx;

    move-result-object v1

    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zza(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdrx;Lcom/google/android/gms/internal/ads/zzdqj;)V

    goto/16 :goto_9

    :pswitch_1fe
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdsv;Lcom/google/android/gms/internal/ads/zzdqj;)V

    goto/16 :goto_9

    :pswitch_210
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_219
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzz(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_21e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_227
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzy(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_22c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_235
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzx(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_23a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_243
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzw(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_248
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int/2addr v3, v5

    int-to-long v5, v3

    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzdsw;->zzv(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgt(I)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v2

    :goto_257
    invoke-static {v1, v3, v2, v10, v7}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzdrc;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_9

    :pswitch_25d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_266
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzu(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_26b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_274
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzr(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_279
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_282
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzq(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_287
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_290
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzp(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_295
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_29e
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzo(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_2a3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_2ac
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzm(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_2b1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_2ba
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzn(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_2bf
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_2c8
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzl(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_2cd
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    :goto_2d6
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzk(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_2db
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_219

    :pswitch_2e6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_227

    :pswitch_2f1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_235

    :pswitch_2fc
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_243

    :pswitch_307
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int/2addr v3, v5

    int-to-long v5, v3

    invoke-virtual {v4, p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/google/android/gms/internal/ads/zzdsw;->zzv(Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgt(I)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v2

    goto/16 :goto_257

    :pswitch_318
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_266

    :pswitch_323
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzt(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_331
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v1

    and-int v2, v3, v5

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    invoke-virtual {v4, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdsv;Lcom/google/android/gms/internal/ads/zzdqj;)V

    goto/16 :goto_9

    :pswitch_343
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgw(I)Z

    move-result v1

    if-eqz v1, :cond_357

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->zzs(Ljava/util/List;)V

    goto/16 :goto_9

    :cond_357
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/ads/zzdsw;->readStringList(Ljava/util/List;)V

    goto/16 :goto_9

    :pswitch_365
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_274

    :pswitch_370
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_282

    :pswitch_37b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_290

    :pswitch_386
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_29e

    :pswitch_391
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2ac

    :pswitch_39c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2ba

    :pswitch_3a7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2c8

    :pswitch_3b2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    and-int v2, v3, v5

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2d6

    :pswitch_3bd
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3db

    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v2

    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zzb(Lcom/google/android/gms/internal/ads/zzdsv;Lcom/google/android/gms/internal/ads/zzdqj;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3d6
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_9

    :cond_3db
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v1

    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zzb(Lcom/google/android/gms/internal/ads/zzdsv;Lcom/google/android/gms/internal/ads/zzdqj;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_3e9
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzf(Ljava/lang/Object;I)V

    goto/16 :goto_9

    :pswitch_3ee
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayi()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JJ)V

    goto :goto_3e9

    :pswitch_3f9
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayh()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    goto :goto_3e9

    :pswitch_404
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayg()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JJ)V

    goto :goto_3e9

    :pswitch_40f
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayf()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    goto :goto_3e9

    :pswitch_41a
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaye()I

    move-result v4

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgt(I)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v6

    if-eqz v6, :cond_42a

    invoke-interface {v6, v4}, Lcom/google/android/gms/internal/ads/zzdrc;->zzf(I)Z

    move-result v6

    if-eqz v6, :cond_e9

    :cond_42a
    and-int v1, v3, v5

    int-to-long v5, v1

    invoke-static {p1, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    goto :goto_3e9

    :pswitch_431
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayd()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    goto :goto_3e9

    :pswitch_43c
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzayc()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3e9

    :pswitch_447
    invoke-direct {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_462

    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v2

    invoke-interface {p2, v2, p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zza(Lcom/google/android/gms/internal/ads/zzdsv;Lcom/google/android/gms/internal/ads/zzdqj;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdqx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_3d6

    :cond_462
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v1

    invoke-interface {p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsw;->zza(Lcom/google/android/gms/internal/ads/zzdsv;Lcom/google/android/gms/internal/ads/zzdqj;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_3e9

    :pswitch_472
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzdsw;)V

    goto/16 :goto_3e9

    :pswitch_477
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaya()Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JZ)V

    goto/16 :goto_3e9

    :pswitch_483
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxz()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    goto/16 :goto_3e9

    :pswitch_48f
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxy()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JJ)V

    goto/16 :goto_3e9

    :pswitch_49b
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxx()I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    goto/16 :goto_3e9

    :pswitch_4a7
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxv()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JJ)V

    goto/16 :goto_3e9

    :pswitch_4b3
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->zzaxw()J

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JJ)V

    goto/16 :goto_3e9

    :pswitch_4bf
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->readFloat()F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JF)V

    goto/16 :goto_3e9

    :pswitch_4cb
    and-int v1, v3, v5

    int-to-long v3, v1

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdsw;->readDouble()D

    move-result-wide v5

    invoke-static {p1, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JD)V

    goto/16 :goto_3e9

    :cond_4d7
    :goto_4d7
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsw;)Z

    move-result v1
    :try_end_4db
    .catch Lcom/google/android/gms/internal/ads/zzdrf; {:try_start_88 .. :try_end_4db} :catch_4f4
    .catchall {:try_start_88 .. :try_end_4db} :catchall_51b

    if-nez v1, :cond_9

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnk:I

    :goto_4df
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnl:I

    if-ge p2, p3, :cond_4ee

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    aget p3, p3, p2

    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_4df

    :cond_4ee
    if-eqz v10, :cond_4f3

    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/ads/zzdtn;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f3
    return-void

    :catch_4f4
    :try_start_4f4
    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Lcom/google/android/gms/internal/ads/zzdsw;)Z

    if-nez v10, :cond_4fe

    invoke-virtual {v7, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzaz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    :cond_4fe
    invoke-virtual {v7, v10, p2}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsw;)Z

    move-result v1
    :try_end_502
    .catchall {:try_start_4f4 .. :try_end_502} :catchall_51b

    if-nez v1, :cond_9

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnk:I

    :goto_506
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnl:I

    if-ge p2, p3, :cond_515

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    aget p3, p3, p2

    invoke-direct {p0, p1, p3, v10, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p2, p2, 0x1

    goto :goto_506

    :cond_515
    if-eqz v10, :cond_51a

    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/ads/zzdtn;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_51a
    return-void

    :catchall_51b
    move-exception p2

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnk:I

    :goto_51e
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnl:I

    if-ge p3, v0, :cond_52d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    aget v0, v0, p3

    invoke-direct {p0, p1, v0, v10, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdtn;)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 p3, p3, 0x1

    goto :goto_51e

    :cond_52d
    if-eqz v10, :cond_532

    invoke-virtual {v7, p1, v10}, Lcom/google/android/gms/internal/ads/zzdtn;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_532
    throw p2

    :cond_533
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_53a

    :goto_539
    throw p1

    :goto_53a
    goto :goto_539

    nop

    :pswitch_data_53c
    .packed-switch 0x0
        :pswitch_4cb
        :pswitch_4bf
        :pswitch_4b3
        :pswitch_4a7
        :pswitch_49b
        :pswitch_48f
        :pswitch_483
        :pswitch_477
        :pswitch_472
        :pswitch_447
        :pswitch_43c
        :pswitch_431
        :pswitch_41a
        :pswitch_40f
        :pswitch_404
        :pswitch_3f9
        :pswitch_3ee
        :pswitch_3bd
        :pswitch_3b2
        :pswitch_3a7
        :pswitch_39c
        :pswitch_391
        :pswitch_386
        :pswitch_37b
        :pswitch_370
        :pswitch_365
        :pswitch_343
        :pswitch_331
        :pswitch_323
        :pswitch_318
        :pswitch_307
        :pswitch_2fc
        :pswitch_2f1
        :pswitch_2e6
        :pswitch_2db
        :pswitch_2cd
        :pswitch_2bf
        :pswitch_2b1
        :pswitch_2a3
        :pswitch_295
        :pswitch_287
        :pswitch_279
        :pswitch_26b
        :pswitch_25d
        :pswitch_248
        :pswitch_23a
        :pswitch_22c
        :pswitch_21e
        :pswitch_210
        :pswitch_1fe
        :pswitch_1bc
        :pswitch_1ad
        :pswitch_19e
        :pswitch_18f
        :pswitch_180
        :pswitch_171
        :pswitch_162
        :pswitch_153
        :pswitch_144
        :pswitch_13f
        :pswitch_111
        :pswitch_107
        :pswitch_f9
        :pswitch_d8
        :pswitch_ca
        :pswitch_bc
        :pswitch_ae
        :pswitch_a0
        :pswitch_8e
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/ads/zzduk;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzduk;->zzayy()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlh:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_4d1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Lcom/google/android/gms/internal/ads/zzdtn;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_34

    :cond_32
    move-object v0, v3

    move-object v1, v0

    :goto_34
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_39
    if-ltz v7, :cond_4b9

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    :goto_43
    if-eqz v1, :cond_61

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_61

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzduk;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_43

    :cond_5f
    move-object v1, v3

    goto :goto_43

    :cond_61
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_99a

    goto/16 :goto_4b5

    :pswitch_6a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    goto/16 :goto_387

    :pswitch_72
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_3a2

    :pswitch_80
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_3b3

    :pswitch_8e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_3c4

    :pswitch_9c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_3d5

    :pswitch_aa
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_3e6

    :pswitch_b8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_3f7

    :pswitch_c6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    goto/16 :goto_402

    :pswitch_ce
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    goto/16 :goto_415

    :pswitch_d6
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    goto/16 :goto_42a

    :pswitch_de
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzj(Ljava/lang/Object;J)Z

    move-result v8

    goto/16 :goto_441

    :pswitch_ec
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_452

    :pswitch_fa
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_462

    :pswitch_108
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v8

    goto/16 :goto_472

    :pswitch_116
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_482

    :pswitch_124
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v10

    goto/16 :goto_492

    :pswitch_132
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzg(Ljava/lang/Object;J)F

    move-result v8

    goto/16 :goto_4a2

    :pswitch_140
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdsk;->zzf(Ljava/lang/Object;J)D

    move-result-wide v10

    goto/16 :goto_4b2

    :pswitch_14e
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Lcom/google/android/gms/internal/ads/zzduk;ILjava/lang/Object;I)V

    goto/16 :goto_4b5

    :pswitch_159
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_4b5

    :pswitch_16e
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_17f
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_190
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_1a1
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_1b2
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_1c3
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_1d4
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_1e5
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_1f6
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_207
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_218
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_229
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_23a
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_24b
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_25c
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_26d
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_27e
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_28f
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_2a0
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_2b1
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_2c2
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;)V

    goto/16 :goto_4b5

    :pswitch_2d3
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v10

    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_4b5

    :pswitch_2e8
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;)V

    goto/16 :goto_4b5

    :pswitch_2f9
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_30a
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_31b
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_32c
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_33d
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_34e
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_35f
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_370
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_4b5

    :pswitch_381
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    :goto_387
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_4b5

    :pswitch_396
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_3a2
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzduk;->zzh(IJ)V

    goto/16 :goto_4b5

    :pswitch_3a7
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v8

    :goto_3b3
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzduk;->zzac(II)V

    goto/16 :goto_4b5

    :pswitch_3b8
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_3c4
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzduk;->zzp(IJ)V

    goto/16 :goto_4b5

    :pswitch_3c9
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v8

    :goto_3d5
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzduk;->zzak(II)V

    goto/16 :goto_4b5

    :pswitch_3da
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v8

    :goto_3e6
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzduk;->zzal(II)V

    goto/16 :goto_4b5

    :pswitch_3eb
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v8

    :goto_3f7
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzduk;->zzab(II)V

    goto/16 :goto_4b5

    :pswitch_3fc
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    :goto_402
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    goto/16 :goto_4b5

    :pswitch_40f
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    :goto_415
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_4b5

    :pswitch_424
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    :goto_42a
    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    goto/16 :goto_4b5

    :pswitch_435
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzm(Ljava/lang/Object;J)Z

    move-result v8

    :goto_441
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzduk;->zzg(IZ)V

    goto/16 :goto_4b5

    :pswitch_446
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v8

    :goto_452
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzduk;->zzad(II)V

    goto :goto_4b5

    :pswitch_456
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_462
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzduk;->zzi(IJ)V

    goto :goto_4b5

    :pswitch_466
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v8

    :goto_472
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzduk;->zzaa(II)V

    goto :goto_4b5

    :pswitch_476
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_482
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzduk;->zzg(IJ)V

    goto :goto_4b5

    :pswitch_486
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v10

    :goto_492
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzduk;->zzo(IJ)V

    goto :goto_4b5

    :pswitch_496
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzn(Ljava/lang/Object;J)F

    move-result v8

    :goto_4a2
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/ads/zzduk;->zza(IF)V

    goto :goto_4b5

    :pswitch_4a6
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_4b5

    and-int/2addr v8, v6

    int-to-long v10, v8

    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzdtt;->zzo(Ljava/lang/Object;J)D

    move-result-wide v10

    :goto_4b2
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ID)V

    :cond_4b5
    :goto_4b5
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_39

    :cond_4b9
    :goto_4b9
    if-eqz v1, :cond_4d0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzduk;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4ce

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4b9

    :cond_4ce
    move-object v1, v3

    goto :goto_4b9

    :cond_4d0
    return-void

    :cond_4d1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnh:Z

    if-eqz v0, :cond_996

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-eqz v0, :cond_4f2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4f2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_4f4

    :cond_4f2
    move-object v0, v3

    move-object v1, v0

    :goto_4f4
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    array-length v7, v7

    move-object v8, v1

    const/4 v1, 0x0

    :goto_4f9
    if-ge v1, v7, :cond_979

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    :goto_503
    if-eqz v8, :cond_521

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_521

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzduk;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_51f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_503

    :cond_51f
    move-object v8, v3

    goto :goto_503

    :cond_521
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_a28

    goto/16 :goto_975

    :pswitch_52a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    goto/16 :goto_847

    :pswitch_532
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_862

    :pswitch_540
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_873

    :pswitch_54e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_884

    :pswitch_55c
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_895

    :pswitch_56a
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_8a6

    :pswitch_578
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_8b7

    :pswitch_586
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    goto/16 :goto_8c2

    :pswitch_58e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    goto/16 :goto_8d5

    :pswitch_596
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    goto/16 :goto_8ea

    :pswitch_59e
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzj(Ljava/lang/Object;J)Z

    move-result v9

    goto/16 :goto_901

    :pswitch_5ac
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_912

    :pswitch_5ba
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_922

    :pswitch_5c8
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v9

    goto/16 :goto_932

    :pswitch_5d6
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_942

    :pswitch_5e4
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v11

    goto/16 :goto_952

    :pswitch_5f2
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzg(Ljava/lang/Object;J)F

    move-result v9

    goto/16 :goto_962

    :pswitch_600
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzf(Ljava/lang/Object;J)D

    move-result-wide v11

    goto/16 :goto_972

    :pswitch_60e
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Lcom/google/android/gms/internal/ads/zzduk;ILjava/lang/Object;I)V

    goto/16 :goto_975

    :pswitch_619
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_975

    :pswitch_62e
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_63f
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_650
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_661
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_672
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_683
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_694
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_6a5
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_6b6
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_6c7
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_6d8
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_6e9
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_6fa
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_70b
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_71c
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_72d
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_73e
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_74f
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_760
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_771
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_782
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;)V

    goto/16 :goto_975

    :pswitch_793
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v11

    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_975

    :pswitch_7a8
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;)V

    goto/16 :goto_975

    :pswitch_7b9
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_7ca
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_7db
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_7ec
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_7fd
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_80e
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_81f
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_830
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzduk;Z)V

    goto/16 :goto_975

    :pswitch_841
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    :goto_847
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_975

    :pswitch_856
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_862
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzduk;->zzh(IJ)V

    goto/16 :goto_975

    :pswitch_867
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v9

    :goto_873
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zzac(II)V

    goto/16 :goto_975

    :pswitch_878
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_884
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzduk;->zzp(IJ)V

    goto/16 :goto_975

    :pswitch_889
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v9

    :goto_895
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zzak(II)V

    goto/16 :goto_975

    :pswitch_89a
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v9

    :goto_8a6
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zzal(II)V

    goto/16 :goto_975

    :pswitch_8ab
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v9

    :goto_8b7
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zzab(II)V

    goto/16 :goto_975

    :pswitch_8bc
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    :goto_8c2
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    goto/16 :goto_975

    :pswitch_8cf
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    :goto_8d5
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)V

    goto/16 :goto_975

    :pswitch_8e4
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    :goto_8ea
    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    goto/16 :goto_975

    :pswitch_8f5
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzm(Ljava/lang/Object;J)Z

    move-result v9

    :goto_901
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zzg(IZ)V

    goto/16 :goto_975

    :pswitch_906
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v9

    :goto_912
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zzad(II)V

    goto :goto_975

    :pswitch_916
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_922
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzduk;->zzi(IJ)V

    goto :goto_975

    :pswitch_926
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v9

    :goto_932
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zzaa(II)V

    goto :goto_975

    :pswitch_936
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_942
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzduk;->zzg(IJ)V

    goto :goto_975

    :pswitch_946
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v11

    :goto_952
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzduk;->zzo(IJ)V

    goto :goto_975

    :pswitch_956
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzn(Ljava/lang/Object;J)F

    move-result v9

    :goto_962
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/ads/zzduk;->zza(IF)V

    goto :goto_975

    :pswitch_966
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_975

    and-int/2addr v9, v6

    int-to-long v11, v9

    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/ads/zzdtt;->zzo(Ljava/lang/Object;J)D

    move-result-wide v11

    :goto_972
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ID)V

    :cond_975
    :goto_975
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_4f9

    :cond_979
    :goto_979
    if-eqz v8, :cond_990

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/gms/internal/ads/zzdql;->zza(Lcom/google/android/gms/internal/ads/zzduk;Ljava/util/Map$Entry;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v8, v1

    goto :goto_979

    :cond_98e
    move-object v8, v3

    goto :goto_979

    :cond_990
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Lcom/google/android/gms/internal/ads/zzdtn;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void

    :cond_996
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void

    :pswitch_data_99a
    .packed-switch 0x0
        :pswitch_4a6
        :pswitch_496
        :pswitch_486
        :pswitch_476
        :pswitch_466
        :pswitch_456
        :pswitch_446
        :pswitch_435
        :pswitch_424
        :pswitch_40f
        :pswitch_3fc
        :pswitch_3eb
        :pswitch_3da
        :pswitch_3c9
        :pswitch_3b8
        :pswitch_3a7
        :pswitch_396
        :pswitch_381
        :pswitch_370
        :pswitch_35f
        :pswitch_34e
        :pswitch_33d
        :pswitch_32c
        :pswitch_31b
        :pswitch_30a
        :pswitch_2f9
        :pswitch_2e8
        :pswitch_2d3
        :pswitch_2c2
        :pswitch_2b1
        :pswitch_2a0
        :pswitch_28f
        :pswitch_27e
        :pswitch_26d
        :pswitch_25c
        :pswitch_24b
        :pswitch_23a
        :pswitch_229
        :pswitch_218
        :pswitch_207
        :pswitch_1f6
        :pswitch_1e5
        :pswitch_1d4
        :pswitch_1c3
        :pswitch_1b2
        :pswitch_1a1
        :pswitch_190
        :pswitch_17f
        :pswitch_16e
        :pswitch_159
        :pswitch_14e
        :pswitch_140
        :pswitch_132
        :pswitch_124
        :pswitch_116
        :pswitch_108
        :pswitch_fa
        :pswitch_ec
        :pswitch_de
        :pswitch_d6
        :pswitch_ce
        :pswitch_c6
        :pswitch_b8
        :pswitch_aa
        :pswitch_9c
        :pswitch_8e
        :pswitch_80
        :pswitch_72
        :pswitch_6a
    .end packed-switch

    :pswitch_data_a28
    .packed-switch 0x0
        :pswitch_966
        :pswitch_956
        :pswitch_946
        :pswitch_936
        :pswitch_926
        :pswitch_916
        :pswitch_906
        :pswitch_8f5
        :pswitch_8e4
        :pswitch_8cf
        :pswitch_8bc
        :pswitch_8ab
        :pswitch_89a
        :pswitch_889
        :pswitch_878
        :pswitch_867
        :pswitch_856
        :pswitch_841
        :pswitch_830
        :pswitch_81f
        :pswitch_80e
        :pswitch_7fd
        :pswitch_7ec
        :pswitch_7db
        :pswitch_7ca
        :pswitch_7b9
        :pswitch_7a8
        :pswitch_793
        :pswitch_782
        :pswitch_771
        :pswitch_760
        :pswitch_74f
        :pswitch_73e
        :pswitch_72d
        :pswitch_71c
        :pswitch_70b
        :pswitch_6fa
        :pswitch_6e9
        :pswitch_6d8
        :pswitch_6c7
        :pswitch_6b6
        :pswitch_6a5
        :pswitch_694
        :pswitch_683
        :pswitch_672
        :pswitch_661
        :pswitch_650
        :pswitch_63f
        :pswitch_62e
        :pswitch_619
        :pswitch_60e
        :pswitch_600
        :pswitch_5f2
        :pswitch_5e4
        :pswitch_5d6
        :pswitch_5c8
        :pswitch_5ba
        :pswitch_5ac
        :pswitch_59e
        :pswitch_596
        :pswitch_58e
        :pswitch_586
        :pswitch_578
        :pswitch_56a
        :pswitch_55c
        :pswitch_54e
        :pswitch_540
        :pswitch_532
        :pswitch_52a
    .end packed-switch
.end method

.method public final zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzdpl;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzdpl;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnh:Z

    if-eqz v0, :cond_241

    sget-object v9, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_17
    if-ge v0, v13, :cond_238

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v12, v0

    if-gez v0, :cond_29

    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    move v8, v0

    move/from16 v17, v3

    goto :goto_2c

    :cond_29
    move/from16 v17, v0

    move v8, v3

    :goto_2c
    ushr-int/lit8 v7, v17, 0x3

    and-int/lit8 v6, v17, 0x7

    if-le v7, v1, :cond_39

    div-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v7, v2}, Lcom/google/android/gms/internal/ads/zzdsk;->zzam(II)I

    move-result v0

    goto :goto_3d

    :cond_39
    invoke-direct {v15, v7}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgx(I)I

    move-result v0

    :goto_3d
    move v4, v0

    if-ne v4, v10, :cond_4b

    move/from16 v24, v7

    move v2, v8

    move-object/from16 v18, v9

    const/16 v19, 0x0

    const/16 v26, -0x1

    goto/16 :goto_215

    :cond_4b
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    add-int/lit8 v1, v4, 0x1

    aget v5, v0, v1

    const/high16 v0, 0xff00000

    and-int/2addr v0, v5

    ushr-int/lit8 v3, v0, 0x14

    const v0, 0xfffff

    and-int/2addr v0, v5

    int-to-long v1, v0

    const/16 v0, 0x11

    const/4 v10, 0x2

    if-gt v3, v0, :cond_14d

    const/4 v0, 0x1

    packed-switch v3, :pswitch_data_254

    goto/16 :goto_18a

    :pswitch_66
    if-nez v6, :cond_18a

    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v6

    move-wide/from16 v19, v1

    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpy;->zzez(J)J

    move-result-wide v21

    move-object v0, v9

    move-wide/from16 v2, v19

    move-object/from16 v1, p1

    move v10, v4

    move-wide/from16 v4, v21

    goto/16 :goto_120

    :pswitch_7e
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_145

    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdpy;->zzft(I)I

    move-result v1

    goto/16 :goto_10f

    :pswitch_8e
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_145

    goto/16 :goto_109

    :pswitch_94
    move-wide v2, v1

    if-ne v6, v10, :cond_18a

    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zze([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    :goto_9b
    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    :goto_9d
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_f1

    :pswitch_a1
    move-wide v2, v1

    if-ne v6, v10, :cond_18a

    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    invoke-static {v0, v12, v8, v13, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;[BIILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_b5

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    goto :goto_9d

    :cond_b5
    iget-object v5, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfz:Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzdqx;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9d

    :pswitch_bc
    move-wide v2, v1

    if-ne v6, v10, :cond_18a

    const/high16 v0, 0x20000000

    and-int/2addr v0, v5

    if-nez v0, :cond_c9

    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zzc([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    goto :goto_9b

    :cond_c9
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zzd([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    goto :goto_9b

    :pswitch_ce
    move-wide v2, v1

    if-nez v6, :cond_18a

    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v1

    iget-wide v5, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    const-wide/16 v19, 0x0

    cmp-long v8, v5, v19

    if-eqz v8, :cond_de

    goto :goto_df

    :cond_de
    const/4 v0, 0x0

    :goto_df
    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JZ)V

    move v0, v1

    goto :goto_f1

    :pswitch_e4
    move-wide v2, v1

    const/4 v0, 0x5

    if-ne v6, v0, :cond_18a

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/zzdpi;->zzf([BI)I

    move-result v0

    invoke-virtual {v9, v14, v2, v3, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v8, 0x4

    :goto_f1
    move v2, v4

    move v1, v7

    goto/16 :goto_235

    :pswitch_f5
    move-wide v2, v1

    if-ne v6, v0, :cond_18a

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/zzdpi;->zzg([BI)J

    move-result-wide v5

    move-object v0, v9

    move-object/from16 v1, p1

    move v10, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_13f

    :pswitch_105
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_145

    :goto_109
    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zza([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfx:I

    :goto_10f
    invoke-virtual {v9, v14, v2, v3, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_141

    :pswitch_113
    move-wide v2, v1

    move v10, v4

    if-nez v6, :cond_145

    invoke-static {v12, v8, v11}, Lcom/google/android/gms/internal/ads/zzdpi;->zzb([BILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v6

    iget-wide v4, v11, Lcom/google/android/gms/internal/ads/zzdpl;->zzhfy:J

    move-object v0, v9

    move-object/from16 v1, p1

    :goto_120
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move v0, v6

    goto :goto_141

    :pswitch_125
    move-wide v2, v1

    move v10, v4

    const/4 v0, 0x5

    if-ne v6, v0, :cond_145

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/zzdpi;->zzi([BI)F

    move-result v0

    invoke-static {v14, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v8, 0x4

    goto :goto_141

    :pswitch_134
    move-wide v2, v1

    move v10, v4

    if-ne v6, v0, :cond_145

    invoke-static {v12, v8}, Lcom/google/android/gms/internal/ads/zzdpi;->zzh([BI)D

    move-result-wide v0

    invoke-static {v14, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JD)V

    :goto_13f
    add-int/lit8 v0, v8, 0x8

    :goto_141
    move v1, v7

    move v2, v10

    goto/16 :goto_235

    :cond_145
    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    goto :goto_191

    :cond_14d
    const/16 v0, 0x1b

    if-ne v3, v0, :cond_195

    if-ne v6, v10, :cond_18a

    invoke-virtual {v9, v14, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdrd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdrd;->zzaxi()Z

    move-result v3

    if-nez v3, :cond_171

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_168

    const/16 v3, 0xa

    goto :goto_16a

    :cond_168
    shl-int/lit8 v3, v3, 0x1

    :goto_16a
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzdrd;->zzfl(I)Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object v0

    invoke-virtual {v9, v14, v1, v2, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_171
    move-object v5, v0

    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v8

    move/from16 v19, v4

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/internal/ads/zzdsv;I[BIILcom/google/android/gms/internal/ads/zzdrd;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    move v1, v7

    move/from16 v2, v19

    goto/16 :goto_235

    :cond_18a
    :goto_18a
    move/from16 v19, v4

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    :goto_191
    const/16 v26, -0x1

    goto/16 :goto_1f8

    :cond_195
    move/from16 v19, v4

    const/16 v0, 0x31

    if-gt v3, v0, :cond_1cb

    int-to-long v4, v5

    move-object/from16 v0, p0

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v10, v3

    move v3, v8

    move-wide/from16 v22, v4

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 p3, v6

    move v6, v7

    move/from16 v24, v7

    move/from16 v7, p3

    move v15, v8

    move/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v25, v10

    const/16 v26, -0x1

    move-wide/from16 v9, v22

    move/from16 v11, v25

    move-wide/from16 v12, v20

    move-object/from16 v14, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    if-ne v0, v15, :cond_225

    goto :goto_214

    :cond_1cb
    move-wide/from16 v20, v1

    move/from16 v25, v3

    move/from16 p3, v6

    move/from16 v24, v7

    move v15, v8

    move-object/from16 v18, v9

    const/16 v26, -0x1

    const/16 v0, 0x32

    move/from16 v9, v25

    move/from16 v7, p3

    if-ne v9, v0, :cond_1fa

    if-ne v7, v10, :cond_1f8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v20

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    if-ne v0, v15, :cond_225

    goto :goto_214

    :cond_1f8
    :goto_1f8
    move v2, v15

    goto :goto_215

    :cond_1fa
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move v8, v5

    move/from16 v5, v17

    move/from16 v6, v24

    move-wide/from16 v10, v20

    move/from16 v12, v19

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    if-ne v0, v15, :cond_225

    :goto_214
    move v2, v0

    :goto_215
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzav(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(I[BIILcom/google/android/gms/internal/ads/zzdtq;Lcom/google/android/gms/internal/ads/zzdpl;)I

    move-result v0

    :cond_225
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move-object/from16 v9, v18

    move/from16 v2, v19

    move/from16 v1, v24

    :goto_235
    const/4 v10, -0x1

    goto/16 :goto_17

    :cond_238
    move v4, v13

    if-ne v0, v4, :cond_23c

    return-void

    :cond_23c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbai()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    throw v0

    :cond_241
    move v4, v13

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzdpl;)I

    return-void

    nop

    :pswitch_data_254
    .packed-switch 0x0
        :pswitch_134
        :pswitch_125
        :pswitch_113
        :pswitch_113
        :pswitch_105
        :pswitch_f5
        :pswitch_e4
        :pswitch_ce
        :pswitch_bc
        :pswitch_a1
        :pswitch_94
        :pswitch_105
        :pswitch_8e
        :pswitch_e4
        :pswitch_f5
        :pswitch_7e
        :pswitch_66
    .end packed-switch
.end method

.method public final zzak(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnk:I

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnl:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/zzdrz;->zzaq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    array-length v0, v0

    :goto_28
    if-ge v1, v0, :cond_37

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdrq;->zzb(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdtn;->zzak(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzak(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public final zzau(Ljava/lang/Object;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnh:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_3b8

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_16
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    array-length v14, v14

    if-ge v12, v14, :cond_3b0

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    sget-object v14, Lcom/google/android/gms/internal/ads/zzdqr;->zzhjh:Lcom/google/android/gms/internal/ads/zzdqr;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdqr;->id()I

    move-result v14

    if-lt v15, v14, :cond_41

    sget-object v14, Lcom/google/android/gms/internal/ads/zzdqr;->zzhju:Lcom/google/android/gms/internal/ads/zzdqr;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzdqr;->id()I

    move-result v14

    if-gt v15, v14, :cond_41

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v7

    goto :goto_42

    :cond_41
    const/4 v14, 0x0

    :goto_42
    packed-switch v15, :pswitch_data_840

    goto/16 :goto_3aa

    :pswitch_47
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    goto/16 :goto_29f

    :pswitch_4f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_2b8

    :pswitch_5b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_2c7

    :pswitch_67
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3aa

    goto/16 :goto_2d2

    :pswitch_6f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3aa

    goto/16 :goto_2dd

    :pswitch_77
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_2ec

    :pswitch_83
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_2fb

    :pswitch_8f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    goto/16 :goto_306

    :pswitch_97
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    goto/16 :goto_317

    :pswitch_9f
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v6, :cond_334

    goto/16 :goto_333

    :pswitch_af
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3aa

    goto/16 :goto_342

    :pswitch_b7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3aa

    goto/16 :goto_34e

    :pswitch_bf
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3aa

    goto/16 :goto_35a

    :pswitch_c7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v5

    goto/16 :goto_36a

    :pswitch_d3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_37a

    :pswitch_df
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v5

    goto/16 :goto_38a

    :pswitch_eb
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3aa

    goto/16 :goto_396

    :pswitch_f3
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3aa

    goto/16 :goto_3a2

    :pswitch_fb
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgs(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_296

    :pswitch_10b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzdsv;)I

    move-result v3

    goto/16 :goto_296

    :pswitch_119
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzac(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto/16 :goto_20d

    :pswitch_12b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzag(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto/16 :goto_20d

    :pswitch_13d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzai(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto/16 :goto_20d

    :pswitch_14f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzah(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto/16 :goto_20d

    :pswitch_161
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzad(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto/16 :goto_20d

    :pswitch_173
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzaf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto/16 :goto_20d

    :pswitch_185
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzaj(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto/16 :goto_20d

    :pswitch_197
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzah(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto :goto_20d

    :pswitch_1a8
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzai(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto :goto_20d

    :pswitch_1b9
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzae(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto :goto_20d

    :pswitch_1ca
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzab(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto :goto_20d

    :pswitch_1db
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzaa(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto :goto_20d

    :pswitch_1ec
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzah(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    goto :goto_20d

    :pswitch_1fd
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzai(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3aa

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v6, :cond_211

    :goto_20d
    int-to-long v14, v14

    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_211
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result v3

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_296

    :pswitch_21d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzq(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_296

    :pswitch_227
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzu(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_230
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzr(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_239
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzt(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_242
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzd(ILjava/util/List;)I

    move-result v3

    goto :goto_296

    :pswitch_24b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzdsv;)I

    move-result v3

    goto :goto_296

    :pswitch_258
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/util/List;)I

    move-result v3

    goto :goto_296

    :pswitch_261
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzx(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_26a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzs(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_273
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzp(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_27c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzo(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_285
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzv(ILjava/util/List;Z)I

    move-result v3

    goto :goto_296

    :pswitch_28e
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/ads/zzdsx;->zzw(ILjava/util/List;Z)I

    move-result v3

    :goto_296
    add-int/2addr v13, v3

    goto/16 :goto_3aa

    :pswitch_299
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    :goto_29f
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)I

    move-result v3

    goto :goto_296

    :pswitch_2ae
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    :goto_2b8
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdqf;->zzl(IJ)I

    move-result v3

    goto :goto_296

    :pswitch_2bd
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v5

    :goto_2c7
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzdqf;->zzag(II)I

    move-result v3

    goto :goto_296

    :pswitch_2cc
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3aa

    :goto_2d2
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzdqf;->zzn(IJ)I

    move-result v3

    goto :goto_296

    :pswitch_2d7
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3aa

    :goto_2dd
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzdqf;->zzai(II)I

    move-result v3

    goto :goto_296

    :pswitch_2e2
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v5

    :goto_2ec
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaj(II)I

    move-result v3

    goto :goto_296

    :pswitch_2f1
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v5

    :goto_2fb
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaf(II)I

    move-result v3

    goto :goto_296

    :pswitch_300
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    :goto_306
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    :goto_30a
    check-cast v5, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdpm;)I

    move-result v3

    goto :goto_296

    :pswitch_311
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    :goto_317
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)I

    move-result v3

    goto/16 :goto_296

    :pswitch_325
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v6, :cond_334

    :goto_333
    goto :goto_30a

    :cond_334
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzdqf;->zzh(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_296

    :pswitch_33c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3aa

    :goto_342
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/ads/zzdqf;->zzh(IZ)I

    move-result v3

    goto/16 :goto_296

    :pswitch_348
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3aa

    :goto_34e
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/ads/zzdqf;->zzah(II)I

    move-result v3

    goto/16 :goto_296

    :pswitch_354
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3aa

    :goto_35a
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzdqf;->zzm(IJ)I

    move-result v3

    goto/16 :goto_296

    :pswitch_360
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v5

    :goto_36a
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzdqf;->zzae(II)I

    move-result v3

    goto/16 :goto_296

    :pswitch_370
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    :goto_37a
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdqf;->zzk(IJ)I

    move-result v3

    goto/16 :goto_296

    :pswitch_380
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3aa

    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v5

    :goto_38a
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdqf;->zzj(IJ)I

    move-result v3

    goto/16 :goto_296

    :pswitch_390
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3aa

    :goto_396
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(IF)I

    move-result v3

    goto/16 :goto_296

    :pswitch_39c
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3aa

    :goto_3a2
    const-wide/16 v5, 0x0

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ID)I

    move-result v3

    goto/16 :goto_296

    :cond_3aa
    :goto_3aa
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_16

    :cond_3b0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Lcom/google/android/gms/internal/ads/zzdtn;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    :cond_3b8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v12, 0x0

    :goto_3bf
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    array-length v13, v13

    if-ge v3, v13, :cond_7e5

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v13

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_3eb

    add-int/lit8 v11, v3, 0x2

    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v8, v18

    if-eq v14, v6, :cond_3e8

    int-to-long v8, v14

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    goto :goto_3e9

    :cond_3e8
    move v14, v6

    :goto_3e9
    move v6, v14

    goto :goto_40b

    :cond_3eb
    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_408

    sget-object v8, Lcom/google/android/gms/internal/ads/zzdqr;->zzhjh:Lcom/google/android/gms/internal/ads/zzdqr;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdqr;->id()I

    move-result v8

    if-lt v4, v8, :cond_408

    sget-object v8, Lcom/google/android/gms/internal/ads/zzdqr;->zzhju:Lcom/google/android/gms/internal/ads/zzdqr;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdqr;->id()I

    move-result v8

    if-gt v4, v8, :cond_408

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    add-int/lit8 v9, v3, 0x2

    aget v8, v8, v9

    and-int v11, v8, v7

    goto :goto_409

    :cond_408
    const/4 v11, 0x0

    :goto_409
    const/16 v18, 0x0

    :goto_40b
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v4, :pswitch_data_8ce

    goto/16 :goto_6c4

    :pswitch_413
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    goto/16 :goto_6d0

    :pswitch_41b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v8

    goto/16 :goto_6e7

    :pswitch_427
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_6f4

    :pswitch_433
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    goto/16 :goto_6fd

    :pswitch_43b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    goto/16 :goto_708

    :pswitch_443
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_717

    :pswitch_44f
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v4

    goto/16 :goto_724

    :pswitch_45b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    goto/16 :goto_72d

    :pswitch_463
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    goto/16 :goto_73c

    :pswitch_46b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v8, :cond_757

    goto/16 :goto_756

    :pswitch_47b
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    const/4 v4, 0x1

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzh(IZ)I

    move-result v8

    goto/16 :goto_70d

    :pswitch_488
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzah(II)I

    move-result v8

    goto/16 :goto_70d

    :pswitch_495
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/zzdqf;->zzm(IJ)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_4a3
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zzh(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzae(II)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_4b3
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/zzdqf;->zzk(IJ)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_4c3
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzdsk;->zzi(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/zzdqf;->zzj(IJ)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_4d3
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(IF)I

    move-result v8

    goto/16 :goto_70d

    :pswitch_4e0
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_6c4

    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ID)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_4ee
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgs(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v15, v8, v9}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_4fe
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/zzdsx;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzdsv;)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_50e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzac(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto/16 :goto_602

    :pswitch_520
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzag(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto/16 :goto_602

    :pswitch_532
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzai(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto/16 :goto_602

    :pswitch_544
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzah(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto/16 :goto_602

    :pswitch_556
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzad(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto/16 :goto_602

    :pswitch_568
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzaf(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto/16 :goto_602

    :pswitch_57a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzaj(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto/16 :goto_602

    :pswitch_58c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzah(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto :goto_602

    :pswitch_59d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzai(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto :goto_602

    :pswitch_5ae
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzae(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto :goto_602

    :pswitch_5bf
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzab(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto :goto_602

    :pswitch_5d0
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzaa(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto :goto_602

    :pswitch_5e1
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzah(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    goto :goto_602

    :pswitch_5f2
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzai(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6c4

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhni:Z

    if-eqz v8, :cond_606

    :goto_602
    int-to-long v8, v11

    invoke-virtual {v2, v1, v8, v9, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_606
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result v8

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    goto/16 :goto_70d

    :pswitch_612
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzq(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_6b3

    :pswitch_61f
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzu(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_6b3

    :pswitch_62c
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzr(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_6b3

    :pswitch_639
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzt(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_646
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzd(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_652
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzdsv;)I

    move-result v4

    goto :goto_6c3

    :pswitch_661
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/util/List;)I

    move-result v4

    goto :goto_6c3

    :pswitch_66c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzx(ILjava/util/List;Z)I

    move-result v4

    goto :goto_6b3

    :pswitch_678
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzw(ILjava/util/List;Z)I

    move-result v4

    goto :goto_6b3

    :pswitch_684
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzs(ILjava/util/List;Z)I

    move-result v4

    goto :goto_6b3

    :pswitch_690
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzp(ILjava/util/List;Z)I

    move-result v4

    goto :goto_6b3

    :pswitch_69c
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzo(ILjava/util/List;Z)I

    move-result v4

    goto :goto_6b3

    :pswitch_6a8
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzv(ILjava/util/List;Z)I

    move-result v4

    :goto_6b3
    add-int/2addr v5, v4

    const/4 v4, 0x1

    :cond_6b5
    :goto_6b5
    const-wide/16 v7, 0x0

    goto :goto_6c8

    :pswitch_6b8
    const/4 v10, 0x0

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4, v10}, Lcom/google/android/gms/internal/ads/zzdsx;->zzw(ILjava/util/List;Z)I

    move-result v4

    :goto_6c3
    add-int/2addr v5, v4

    :cond_6c4
    :goto_6c4
    const/4 v4, 0x1

    :goto_6c5
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    :goto_6c8
    const-wide/16 v13, 0x0

    goto/16 :goto_7da

    :pswitch_6cc
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    :goto_6d0
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdsg;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)I

    move-result v4

    goto :goto_6c3

    :pswitch_6df
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    :goto_6e7
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/zzdqf;->zzl(IJ)I

    move-result v4

    goto :goto_6c3

    :pswitch_6ec
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :goto_6f4
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzag(II)I

    move-result v4

    goto :goto_6c3

    :pswitch_6f9
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    :goto_6fd
    const-wide/16 v8, 0x0

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/zzdqf;->zzn(IJ)I

    move-result v4

    goto :goto_6c3

    :pswitch_704
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    :goto_708
    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzai(II)I

    move-result v8

    :goto_70d
    add-int/2addr v5, v8

    goto :goto_6c4

    :pswitch_70f
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :goto_717
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaj(II)I

    move-result v4

    goto :goto_6c3

    :pswitch_71c
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :goto_724
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaf(II)I

    move-result v4

    goto :goto_6c3

    :pswitch_729
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    :goto_72d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    :goto_731
    check-cast v4, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdpm;)I

    move-result v4

    goto :goto_6c3

    :pswitch_738
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    :goto_73c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/ads/zzdsx;->zzc(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsv;)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_74a
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    instance-of v8, v4, Lcom/google/android/gms/internal/ads/zzdpm;

    if-eqz v8, :cond_757

    :goto_756
    goto :goto_731

    :cond_757
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzh(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_6c3

    :pswitch_75f
    and-int v4, v12, v18

    if-eqz v4, :cond_6c4

    const/4 v4, 0x1

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/ads/zzdqf;->zzh(IZ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_6c5

    :pswitch_76b
    const/4 v4, 0x1

    and-int v8, v12, v18

    const/4 v10, 0x0

    if-eqz v8, :cond_6b5

    invoke-static {v15, v10}, Lcom/google/android/gms/internal/ads/zzdqf;->zzah(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_6b5

    :pswitch_778
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v18

    const-wide/16 v13, 0x0

    if-eqz v8, :cond_7c7

    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/ads/zzdqf;->zzm(IJ)I

    move-result v8

    goto :goto_7b7

    :pswitch_785
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_7c7

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzdqf;->zzae(II)I

    move-result v8

    goto :goto_7b7

    :pswitch_796
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_7c7

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/zzdqf;->zzk(IJ)I

    move-result v8

    goto :goto_7b7

    :pswitch_7a7
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v11, v12, v18

    if-eqz v11, :cond_7c7

    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/ads/zzdqf;->zzj(IJ)I

    move-result v8

    :goto_7b7
    add-int/2addr v5, v8

    goto :goto_7c7

    :pswitch_7b9
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v8, v12, v18

    if-eqz v8, :cond_7c7

    const/4 v8, 0x0

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(IF)I

    move-result v9

    add-int/2addr v5, v9

    :cond_7c7
    :goto_7c7
    const-wide/16 v7, 0x0

    goto :goto_7da

    :pswitch_7ca
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_7c7

    const-wide/16 v7, 0x0

    invoke-static {v15, v7, v8}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ID)I

    move-result v11

    add-int/2addr v5, v11

    :goto_7da
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_3bf

    :cond_7e5
    const/4 v10, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Lcom/google/android/gms/internal/ads/zzdtn;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-eqz v2, :cond_83f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v1

    const/4 v2, 0x0

    :goto_7f8
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbo()I

    move-result v3

    if-ge v10, v3, :cond_818

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzdta;->zzgz(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdqo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zzb(Lcom/google/android/gms/internal/ads/zzdqo;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_7f8

    :cond_818
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdqm;->zzhhp:Lcom/google/android/gms/internal/ads/zzdta;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdta;->zzbbp()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_822
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdqo;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzdqm;->zzb(Lcom/google/android/gms/internal/ads/zzdqo;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_822

    :cond_83e
    add-int/2addr v5, v2

    :cond_83f
    return v5

    :pswitch_data_840
    .packed-switch 0x0
        :pswitch_39c
        :pswitch_390
        :pswitch_380
        :pswitch_370
        :pswitch_360
        :pswitch_354
        :pswitch_348
        :pswitch_33c
        :pswitch_325
        :pswitch_311
        :pswitch_300
        :pswitch_2f1
        :pswitch_2e2
        :pswitch_2d7
        :pswitch_2cc
        :pswitch_2bd
        :pswitch_2ae
        :pswitch_299
        :pswitch_28e
        :pswitch_285
        :pswitch_27c
        :pswitch_273
        :pswitch_26a
        :pswitch_28e
        :pswitch_285
        :pswitch_261
        :pswitch_258
        :pswitch_24b
        :pswitch_242
        :pswitch_239
        :pswitch_230
        :pswitch_285
        :pswitch_28e
        :pswitch_227
        :pswitch_21d
        :pswitch_1fd
        :pswitch_1ec
        :pswitch_1db
        :pswitch_1ca
        :pswitch_1b9
        :pswitch_1a8
        :pswitch_197
        :pswitch_185
        :pswitch_173
        :pswitch_161
        :pswitch_14f
        :pswitch_13d
        :pswitch_12b
        :pswitch_119
        :pswitch_10b
        :pswitch_fb
        :pswitch_f3
        :pswitch_eb
        :pswitch_df
        :pswitch_d3
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_9f
        :pswitch_97
        :pswitch_8f
        :pswitch_83
        :pswitch_77
        :pswitch_6f
        :pswitch_67
        :pswitch_5b
        :pswitch_4f
        :pswitch_47
    .end packed-switch

    :pswitch_data_8ce
    .packed-switch 0x0
        :pswitch_7ca
        :pswitch_7b9
        :pswitch_7a7
        :pswitch_796
        :pswitch_785
        :pswitch_778
        :pswitch_76b
        :pswitch_75f
        :pswitch_74a
        :pswitch_738
        :pswitch_729
        :pswitch_71c
        :pswitch_70f
        :pswitch_704
        :pswitch_6f9
        :pswitch_6ec
        :pswitch_6df
        :pswitch_6cc
        :pswitch_6b8
        :pswitch_6a8
        :pswitch_69c
        :pswitch_690
        :pswitch_684
        :pswitch_678
        :pswitch_6a8
        :pswitch_66c
        :pswitch_661
        :pswitch_652
        :pswitch_646
        :pswitch_639
        :pswitch_62c
        :pswitch_6a8
        :pswitch_678
        :pswitch_61f
        :pswitch_612
        :pswitch_5f2
        :pswitch_5e1
        :pswitch_5d0
        :pswitch_5bf
        :pswitch_5ae
        :pswitch_59d
        :pswitch_58c
        :pswitch_57a
        :pswitch_568
        :pswitch_556
        :pswitch_544
        :pswitch_532
        :pswitch_520
        :pswitch_50e
        :pswitch_4fe
        :pswitch_4ee
        :pswitch_4e0
        :pswitch_4d3
        :pswitch_4c3
        :pswitch_4b3
        :pswitch_4a3
        :pswitch_495
        :pswitch_488
        :pswitch_47b
        :pswitch_46b
        :pswitch_463
        :pswitch_45b
        :pswitch_44f
        :pswitch_443
        :pswitch_43b
        :pswitch_433
        :pswitch_427
        :pswitch_41b
        :pswitch_413
    .end packed-switch
.end method

.method public final zzaw(Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_5
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnk:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_10d

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnj:[I

    aget v4, v4, v1

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v6, v6, v4

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v7

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnh:Z

    const v9, 0xfffff

    if-nez v8, :cond_35

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v2, :cond_36

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdsk;->zzgqj:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v2, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v3, v2

    move v2, v10

    goto :goto_36

    :cond_35
    const/4 v8, 0x0

    :cond_36
    :goto_36
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_3d

    const/4 v10, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v10, 0x0

    :goto_3e
    if-eqz v10, :cond_47

    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_47

    return v0

    :cond_47
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_f8

    const/16 v11, 0x11

    if-eq v10, v11, :cond_f8

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_cc

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_bb

    const/16 v8, 0x44

    if-eq v10, v8, :cond_bb

    const/16 v6, 0x31

    if-eq v10, v6, :cond_cc

    const/16 v6, 0x32

    if-eq v10, v6, :cond_6a

    goto/16 :goto_109

    :cond_6a
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    and-int/2addr v7, v9

    int-to-long v7, v7

    invoke-static {p1, v7, v8}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/ads/zzdrz;->zzao(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b8

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgs(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-interface {v7, v4}, Lcom/google/android/gms/internal/ads/zzdrz;->zzas(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrx;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdrx;->zzhmv:Lcom/google/android/gms/internal/ads/zzdue;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdue;->zzbcg()Lcom/google/android/gms/internal/ads/zzduh;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/ads/zzduh;->zzhqu:Lcom/google/android/gms/internal/ads/zzduh;

    if-ne v4, v7, :cond_b8

    const/4 v4, 0x0

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_99
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_b1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzdsr;->zzh(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v4

    :cond_b1
    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/ads/zzdsv;->zzaw(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_99

    const/4 v5, 0x0

    :cond_b8
    if-nez v5, :cond_109

    return v0

    :cond_bb
    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_109

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzdsv;)Z

    move-result v4

    if-nez v4, :cond_109

    return v0

    :cond_cc
    and-int v6, v7, v9

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_f5

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v4

    const/4 v7, 0x0

    :goto_e0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_f5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/ads/zzdsv;->zzaw(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f2

    const/4 v5, 0x0

    goto :goto_f5

    :cond_f2
    add-int/lit8 v7, v7, 0x1

    goto :goto_e0

    :cond_f5
    :goto_f5
    if-nez v5, :cond_109

    return v0

    :cond_f8
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_109

    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgr(I)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzdsv;)Z

    move-result v4

    if-nez v4, :cond_109

    return v0

    :cond_109
    :goto_109
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_10d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-eqz v1, :cond_11e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdql;->zzai(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdqm;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_11e

    return v0

    :cond_11e
    return v5
.end method

.method public final zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_105

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    array-length v1, v1

    if-ge v0, v1, :cond_f2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zzgu(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhna:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_10e

    goto/16 :goto_ee

    :pswitch_1f
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_ee

    goto :goto_31

    :pswitch_26
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zzb(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_ee

    :pswitch_2b
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_ee

    :goto_31
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zzb(Ljava/lang/Object;II)V

    goto/16 :goto_ee

    :pswitch_3d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnq:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(Lcom/google/android/gms/internal/ads/zzdrz;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_ee

    :pswitch_44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnn:Lcom/google/android/gms/internal/ads/zzdrq;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdrq;->zza(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_ee

    :pswitch_4b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    goto/16 :goto_c8

    :pswitch_53
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    goto :goto_6f

    :pswitch_5a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    goto/16 :goto_c8

    :pswitch_62
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    goto :goto_6f

    :pswitch_69
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    :goto_6f
    goto :goto_b3

    :pswitch_70
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    goto :goto_b3

    :pswitch_77
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    goto :goto_89

    :pswitch_7e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zza(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_ee

    :pswitch_83
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    :goto_89
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_eb

    :pswitch_91
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzm(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JZ)V

    goto :goto_eb

    :pswitch_9f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    goto :goto_b3

    :pswitch_a6
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    goto :goto_c8

    :pswitch_ad
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    :goto_b3
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    goto :goto_eb

    :pswitch_bb
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    goto :goto_c8

    :pswitch_c2
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    :goto_c8
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JJ)V

    goto :goto_eb

    :pswitch_d0
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzn(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JF)V

    goto :goto_eb

    :pswitch_de
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zze(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzo(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JD)V

    :goto_eb
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdsk;->zzf(Ljava/lang/Object;I)V

    :cond_ee
    :goto_ee
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_3

    :cond_f2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnh:Z

    if-nez v0, :cond_104

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhno:Lcom/google/android/gms/internal/ads/zzdtn;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(Lcom/google/android/gms/internal/ads/zzdtn;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnf:Z

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsk;->zzhnp:Lcom/google/android/gms/internal/ads/zzdql;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsx;->zza(Lcom/google/android/gms/internal/ads/zzdql;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_104
    return-void

    :cond_105
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    goto :goto_10c

    :goto_10b
    throw p1

    :goto_10c
    goto :goto_10b

    nop

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_de
        :pswitch_d0
        :pswitch_c2
        :pswitch_bb
        :pswitch_ad
        :pswitch_a6
        :pswitch_9f
        :pswitch_91
        :pswitch_83
        :pswitch_7e
        :pswitch_77
        :pswitch_70
        :pswitch_69
        :pswitch_62
        :pswitch_5a
        :pswitch_53
        :pswitch_4b
        :pswitch_7e
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_3d
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_26
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_26
    .end packed-switch
.end method
