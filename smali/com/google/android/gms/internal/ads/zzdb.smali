###### Class com.google.android.gms.internal.ads.zzdb (com.google.android.gms.internal.ads.zzdb)
.class public abstract Lcom/google/android/gms/internal/ads/zzdb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdc;


# static fields
.field protected static volatile zzvo:Lcom/google/android/gms/internal/ads/zzdx;


# instance fields
.field protected zzvt:Landroid/view/MotionEvent;

.field protected zzvu:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected zzvv:J

.field protected zzvw:J

.field protected zzvx:J

.field protected zzvy:J

.field protected zzvz:J

.field protected zzwa:J

.field protected zzwb:J

.field protected zzwc:D

.field private zzwd:D

.field private zzwe:D

.field protected zzwf:F

.field protected zzwg:F

.field protected zzwh:F

.field protected zzwi:F

.field private zzwj:Z

.field protected zzwk:Z

.field protected zzwl:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvu:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvv:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvw:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvx:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvy:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvz:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwa:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwb:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwj:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwk:Z

    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcni:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzci;->zzbx()V

    goto :goto_3a

    :cond_35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdb;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzb(Lcom/google/android/gms/internal/ads/zzdx;)Z

    :goto_3a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwl:Landroid/util/DisplayMetrics;
    :try_end_44
    .catchall {:try_start_1f .. :try_end_44} :catchall_44

    :catchall_44
    return-void
.end method

.method private final zza(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const/4 v6, 0x0

    if-eqz v5, :cond_1b

    array-length v7, v5

    if-lez v7, :cond_1b

    :try_start_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqj;->zzazb()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzbk$zza;->zza([BLcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzbk$zza;

    move-result-object v5
    :try_end_1a
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_12 .. :try_end_1a} :catch_1b

    goto :goto_1c

    :catch_1b
    :cond_1b
    move-object v5, v6

    :goto_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v9, Lcom/google/android/gms/internal/ads/zzza;->zzcmx:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_56

    sget-object v10, Lcom/google/android/gms/internal/ads/zzdb;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    if-eqz v10, :cond_3d

    sget-object v10, Lcom/google/android/gms/internal/ads/zzdb;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzdx;->zzcj()Lcom/google/android/gms/internal/ads/zzda;

    move-result-object v10

    goto :goto_3e

    :cond_3d
    move-object v10, v6

    :goto_3e
    sget-object v11, Lcom/google/android/gms/internal/ads/zzza;->zzcni:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_53

    const-string v11, "be"

    goto :goto_58

    :cond_53
    const-string v11, "te"

    goto :goto_58

    :cond_56
    move-object v10, v6

    move-object v11, v10

    :goto_58
    const/16 v19, -0x1

    :try_start_5a
    sget v12, Lcom/google/android/gms/internal/ads/zzdt;->zzxm:I

    if-ne v2, v12, :cond_6a

    const/16 v5, 0x3ea

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdb;->zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    move-result-object v6

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzdb;->zzwj:Z

    const/16 v13, 0x3ea

    goto :goto_81

    :cond_6a
    sget v12, Lcom/google/android/gms/internal/ads/zzdt;->zzxl:I

    if-ne v2, v12, :cond_78

    const/16 v5, 0x3f0

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    move-result-object v0

    move-object v6, v0

    const/16 v13, 0x3f0

    goto :goto_81

    :cond_78
    const/16 v3, 0x3e8

    invoke-virtual {v1, v0, v5}, Lcom/google/android/gms/internal/ads/zzdb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbk$zza;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    move-result-object v0

    move-object v6, v0

    const/16 v13, 0x3e8

    :goto_81
    if-eqz v9, :cond_c3

    if-eqz v10, :cond_c3

    const/4 v14, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v15, v3, v7

    move-object v12, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzda;->zza(IIJLjava/lang/String;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_92} :catch_93

    goto :goto_c3

    :catch_93
    move-exception v0

    move-object/from16 v18, v0

    if-eqz v9, :cond_c3

    if-eqz v10, :cond_c3

    sget v0, Lcom/google/android/gms/internal/ads/zzdt;->zzxm:I

    if-ne v2, v0, :cond_a3

    const/16 v0, 0x3eb

    const/16 v13, 0x3eb

    goto :goto_b6

    :cond_a3
    sget v0, Lcom/google/android/gms/internal/ads/zzdt;->zzxl:I

    if-ne v2, v0, :cond_ac

    const/16 v0, 0x3f1

    const/16 v13, 0x3f1

    goto :goto_b6

    :cond_ac
    sget v0, Lcom/google/android/gms/internal/ads/zzdt;->zzxk:I

    if-ne v2, v0, :cond_b5

    const/16 v0, 0x3e9

    const/16 v13, 0x3e9

    goto :goto_b6

    :cond_b5
    const/4 v13, -0x1

    :goto_b6
    const/4 v14, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v15, v3, v7

    move-object v12, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzda;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V

    :cond_c3
    :goto_c3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v6, :cond_114

    :try_start_c9
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbo$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzazu()I

    move-result v0

    if-nez v0, :cond_d8

    goto :goto_114

    :cond_d8
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-object/from16 v5, p2

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzci;->zzj(Lcom/google/android/gms/internal/ads/zzbo$zza;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_14f

    if-eqz v10, :cond_14f

    sget v5, Lcom/google/android/gms/internal/ads/zzdt;->zzxm:I

    if-ne v2, v5, :cond_f3

    const/16 v5, 0x3ee

    const/16 v13, 0x3ee

    goto :goto_106

    :cond_f3
    sget v5, Lcom/google/android/gms/internal/ads/zzdt;->zzxl:I

    if-ne v2, v5, :cond_fc

    const/16 v5, 0x3f2

    const/16 v13, 0x3f2

    goto :goto_106

    :cond_fc
    sget v5, Lcom/google/android/gms/internal/ads/zzdt;->zzxk:I

    if-ne v2, v5, :cond_105

    const/16 v5, 0x3ec

    const/16 v13, 0x3ec

    goto :goto_106

    :cond_105
    const/4 v13, -0x1

    :goto_106
    const/4 v14, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v15, v5, v3

    move-object v12, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzda;->zza(IIJLjava/lang/String;)V

    goto :goto_14f

    :cond_114
    :goto_114
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_119} :catch_11a

    goto :goto_14f

    :catch_11a
    move-exception v0

    move-object/from16 v18, v0

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v9, :cond_14f

    if-eqz v10, :cond_14f

    sget v5, Lcom/google/android/gms/internal/ads/zzdt;->zzxm:I

    if-ne v2, v5, :cond_12f

    const/16 v2, 0x3ef

    const/16 v13, 0x3ef

    goto :goto_142

    :cond_12f
    sget v5, Lcom/google/android/gms/internal/ads/zzdt;->zzxl:I

    if-ne v2, v5, :cond_138

    const/16 v2, 0x3f3

    const/16 v13, 0x3f3

    goto :goto_142

    :cond_138
    sget v5, Lcom/google/android/gms/internal/ads/zzdt;->zzxk:I

    if-ne v2, v5, :cond_141

    const/16 v2, 0x3ed

    const/16 v13, 0x3ed

    goto :goto_142

    :cond_141
    const/4 v13, -0x1

    :goto_142
    const/4 v14, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v15, v5, v3

    move-object v12, v10

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzda;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V

    :cond_14f
    :goto_14f
    return-object v0
.end method

.method private final zzcc()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvz:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvv:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvw:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvx:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvy:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwa:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwb:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvu:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvu:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1e

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvu:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_3b

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvt:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvt:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method protected abstract zza([Ljava/lang/StackTraceElement;)J
.end method

.method protected abstract zza(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;
.end method

.method protected abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbk$zza;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;
.end method

.method protected abstract zza(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzef;
.end method

.method public final zza(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzee;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcnk:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_21

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    const/4 v3, 0x0

    sget v4, Lcom/google/android/gms/internal/ads/zzdt;->zzxk:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdb;->zza(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzdb;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 12

    sget v3, Lcom/google/android/gms/internal/ads/zzdt;->zzxm:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdb;->zza(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/content/Context;[B)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzee;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcnk:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_21

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The caller must not be called from the UI thread."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_21
    :goto_21
    const/4 v2, 0x0

    sget v3, Lcom/google/android/gms/internal/ads/zzdt;->zzxk:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdb;->zza(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zza(III)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdb;->zzvt:Landroid/view/MotionEvent;

    if-eqz v1, :cond_21

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzcmv:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdb;->zzcc()V

    goto :goto_21

    :cond_1c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdb;->zzvt:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_21
    :goto_21
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdb;->zzwl:Landroid/util/DisplayMetrics;

    if-eqz v1, :cond_43

    const-wide/16 v2, 0x0

    move/from16 v4, p3

    int-to-long v4, v4

    const/4 v6, 0x1

    move/from16 v7, p1

    int-to-float v7, v7

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v1

    move/from16 v8, p2

    int-to-float v8, v8

    mul-float v8, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdb;->zzvt:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzdb;->zzwk:Z

    return-void
.end method

.method protected abstract zzb(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;
.end method

.method public final zzb(Landroid/view/MotionEvent;)V
    .registers 16

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwj:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdb;->zzcc()V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwj:Z

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_42

    if-eq v0, v3, :cond_17

    if-eq v0, v2, :cond_17

    goto :goto_54

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v6, v0

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwd:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v8, v4, v8

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwe:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v10, v6, v10

    iget-wide v12, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwc:D

    mul-double v8, v8, v8

    mul-double v10, v10, v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v12, v8

    iput-wide v12, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwc:D

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwd:D

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwe:D

    goto :goto_54

    :cond_42
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwc:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwd:D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwe:D

    :goto_54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_f6

    if-eq v0, v3, :cond_c0

    if-eq v0, v2, :cond_6c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_65

    goto/16 :goto_113

    :cond_65
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvy:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvy:J

    goto/16 :goto_113

    :cond_6c
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvw:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    add-int/2addr v0, v3

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvw:J

    :try_start_77
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdb;->zza(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzef;

    move-result-object p1

    if-eqz p1, :cond_87

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzef;->zzyt:Ljava/lang/Long;

    if-eqz v0, :cond_87

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzef;->zzyw:Ljava/lang/Long;

    if-eqz v0, :cond_87

    const/4 v0, 0x1

    goto :goto_88

    :cond_87
    const/4 v0, 0x0

    :goto_88
    if-eqz v0, :cond_9c

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwa:J

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzef;->zzyt:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzef;->zzyw:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwa:J

    :cond_9c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwl:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_ab

    if-eqz p1, :cond_ab

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzef;->zzyu:Ljava/lang/Long;

    if-eqz v0, :cond_ab

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzef;->zzyx:Ljava/lang/Long;

    if-eqz v0, :cond_ab

    const/4 v1, 0x1

    :cond_ab
    if-eqz v1, :cond_113

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwb:J

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzef;->zzyu:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzef;->zzyx:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwb:J
    :try_end_bf
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_77 .. :try_end_bf} :catch_113

    goto :goto_113

    :cond_c0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvt:Landroid/view/MotionEvent;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvu:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvt:Landroid/view/MotionEvent;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvu:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_e1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvu:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_e1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvx:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvx:J

    :try_start_e6
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdb;->zza([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvz:J
    :try_end_f5
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_e6 .. :try_end_f5} :catch_113

    goto :goto_113

    :cond_f6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwf:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwg:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwh:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwi:F

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvv:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzvv:J

    :catch_113
    :cond_113
    :goto_113
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzdb;->zzwk:Z

    return-void
.end method

.method public zzb(Landroid/view/View;)V
    .registers 2

    return-void
.end method
