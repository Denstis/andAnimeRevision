###### Class com.google.android.gms.internal.ads.zzcfw (com.google.android.gms.internal.ads.zzcfw)
.class public final Lcom/google/android/gms/internal/ads/zzcfw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzdio:Lcom/google/android/gms/internal/ads/zzaxl;

.field private zzfws:Lcom/google/android/gms/internal/ads/zzcfj;

.field private zzfxa:Lcom/google/android/gms/internal/ads/zzsd;

.field private zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzsd;Lcom/google/android/gms/internal/ads/zzcfj;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzdio:Lcom/google/android/gms/internal/ads/zzaxl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzfxa:Lcom/google/android/gms/internal/ads/zzsd;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzfws:Lcom/google/android/gms/internal/ads/zzcfj;

    return-void
.end method


# virtual methods
.method final synthetic zza(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcfx;->zzb(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsp$zzj;->zznd()Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcfw;->zzlk:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;->zzbv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;->zzbw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzcfx;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;->zzbz(I)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzcfx;->zza(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;->zzca(I)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;->zzem(J)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;

    move-result-object v3

    const/4 v7, 0x2

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzcfx;->zzb(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;->zzen(J)Lcom/google/android/gms/internal/ads/zzsp$zzj$zzb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzsp$zzj;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const-wide/16 v9, 0x0

    move-wide v12, v9

    const/4 v11, 0x0

    :goto_59
    if-ge v11, v8, :cond_79

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v11, v11, 0x1

    check-cast v14, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza;

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza;->zznf()Lcom/google/android/gms/internal/ads/zzsv;

    move-result-object v15

    sget-object v7, Lcom/google/android/gms/internal/ads/zzsv;->zzbvt:Lcom/google/android/gms/internal/ads/zzsv;

    if-ne v15, v7, :cond_77

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza;->getTimestamp()J

    move-result-wide v17

    cmp-long v7, v17, v12

    if-lez v7, :cond_77

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzsp$zzj$zza;->getTimestamp()J

    move-result-wide v12

    :cond_77
    const/4 v7, 0x2

    goto :goto_59

    :cond_79
    const-string v2, "offline_signal_statistics"

    const-string v7, "value"

    const/4 v8, 0x0

    cmp-long v11, v12, v9

    if-eqz v11, :cond_93

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "statistic_name = \'last_successful_request_time\'"

    invoke-virtual {v1, v2, v9, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_93
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcfw;->zzfxa:Lcom/google/android/gms/internal/ads/zzsd;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzcfy;-><init>(Lcom/google/android/gms/internal/ads/zzsp$zzj;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzsd;->zza(Lcom/google/android/gms/internal/ads/zzsg;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zztk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zztk;-><init>()V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcfw;->zzdio:Lcom/google/android/gms/internal/ads/zzaxl;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzaxl;->zzdwe:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v3, Lcom/google/android/gms/internal/ads/zztk;->zzcal:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcfw;->zzdio:Lcom/google/android/gms/internal/ads/zzaxl;

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzaxl;->zzdwf:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v3, Lcom/google/android/gms/internal/ads/zztk;->zzcam:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcfw;->zzdio:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/zzaxl;->zzdwg:Z

    if-eqz v9, :cond_bf

    const/16 v16, 0x0

    goto :goto_c1

    :cond_bf
    const/16 v16, 0x2

    :goto_c1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v3, Lcom/google/android/gms/internal/ads/zztk;->zzcan:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzcfw;->zzfxa:Lcom/google/android/gms/internal/ads/zzsd;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcgb;

    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzcgb;-><init>(Lcom/google/android/gms/internal/ads/zztk;)V

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzsd;->zza(Lcom/google/android/gms/internal/ads/zzsg;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcfw;->zzfxa:Lcom/google/android/gms/internal/ads/zzsd;

    sget-object v9, Lcom/google/android/gms/internal/ads/zzsf$zza$zza;->zzbtt:Lcom/google/android/gms/internal/ads/zzsf$zza$zza;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzsd;->zza(Lcom/google/android/gms/internal/ads/zzsf$zza$zza;)V

    const-string v3, "offline_signal_contents"

    invoke-virtual {v1, v3, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v9, v6, [Ljava/lang/String;

    const-string v10, "failed_requests"

    aput-object v10, v9, v4

    const-string v10, "statistic_name = ?"

    invoke-virtual {v1, v2, v3, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "total_requests"

    aput-object v6, v5, v4

    invoke-virtual {v1, v2, v3, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-object v8
.end method

.method public final zzakr()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfw;->zzfws:Lcom/google/android/gms/internal/ads/zzcfj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcfz;-><init>(Lcom/google/android/gms/internal/ads/zzcfw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfj;->zza(Lcom/google/android/gms/internal/ads/zzcxn;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string v1, "Error in offline signals database startup: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    :cond_21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcfy (com.google.android.gms.internal.ads.zzcfy)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcfy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsg;


# instance fields
.field private final zzfxb:Lcom/google/android/gms/internal/ads/zzsp$zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsp$zzj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfy;->zzfxb:Lcom/google/android/gms/internal/ads/zzsp$zzj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zztl;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfy;->zzfxb:Lcom/google/android/gms/internal/ads/zzsp$zzj;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zztl;->zzcay:Lcom/google/android/gms/internal/ads/zzsp$zzj;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcfz (com.google.android.gms.internal.ads.zzcfz)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcfz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxn;


# instance fields
.field private final zzfxc:Lcom/google/android/gms/internal/ads/zzcfw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcfw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzfxc:Lcom/google/android/gms/internal/ads/zzcfw;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfz;->zzfxc:Lcom/google/android/gms/internal/ads/zzcfw;

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfw;->zza(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzcgb (com.google.android.gms.internal.ads.zzcgb)
.class final synthetic Lcom/google/android/gms/internal/ads/zzcgb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsg;


# instance fields
.field private final zzfxd:Lcom/google/android/gms/internal/ads/zztk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzfxd:Lcom/google/android/gms/internal/ads/zztk;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zztl;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgb;->zzfxd:Lcom/google/android/gms/internal/ads/zztk;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztl;->zzcau:Lcom/google/android/gms/internal/ads/zztj;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zztj;->zzcag:Lcom/google/android/gms/internal/ads/zztk;

    return-void
.end method
