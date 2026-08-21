###### Class com.google.android.gms.measurement.internal.zzs (com.google.android.gms.measurement.internal.zzs)
.class final Lcom/google/android/gms/measurement/internal/zzs;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zza:Lcom/google/android/gms/internal/measurement/zzbr$zzc;

.field private zzb:Ljava/lang/Long;

.field private zzc:J

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzs;-><init>(Lcom/google/android/gms/measurement/internal/zzn;)V

    return-void
.end method


# virtual methods
.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzc;)Lcom/google/android/gms/internal/measurement/zzbr$zzc;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zza()Ljava/util/List;

    move-result-object v10

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    const-string v2, "_eid"

    invoke-static {v8, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Long;

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v4, :cond_22

    const/4 v6, 0x1

    goto :goto_23

    :cond_22
    const/4 v6, 0x0

    :goto_23
    if-eqz v6, :cond_2f

    const-string v7, "_ep"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    const/4 v7, 0x1

    goto :goto_30

    :cond_2f
    const/4 v7, 0x0

    :goto_30
    const-wide/16 v11, 0x0

    if-eqz v7, :cond_146

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    const-string v6, "_en"

    invoke-static {v8, v6}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_59

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Extra parameter without an event name. eventId"

    invoke-virtual {v0, v2, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v7

    :cond_59
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    if-eqz v6, :cond_6f

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzb:Ljava/lang/Long;

    if-eqz v6, :cond_6f

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzb:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    cmp-long v6, v13, v15

    if-eqz v6, :cond_9e

    :cond_6f
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_136

    iget-object v13, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v13, :cond_81

    goto/16 :goto_136

    :cond_81
    check-cast v13, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    iput-object v13, v1, Lcom/google/android/gms/measurement/internal/zzs;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzc:J

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-static {v6, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzb:Ljava/lang/Long;

    :cond_9e
    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzc:J

    const-wide/16 v13, 0x1

    sub-long/2addr v6, v13

    iput-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzc:J

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzc:J

    cmp-long v2, v6, v11

    if-gtz v2, :cond_de

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    const-string v6, "Clearing complex main event info. appId"

    invoke-virtual {v4, v6, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_c1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v6, "delete from main_event_params where app_id=?"

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-virtual {v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ce
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c1 .. :try_end_ce} :catch_cf

    goto :goto_ed

    :catch_cf
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    const-string v3, "Error clearing complex main event"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ed

    :cond_de
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzc:J

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzs;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzbr$zzc;)Z

    :goto_ed
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zza()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_fc
    :goto_fc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zze;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zze;->zza()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zze;

    move-result-object v4

    if-nez v4, :cond_fc

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fc

    :cond_11b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_126

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v10, v0

    goto :goto_189

    :cond_126
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "No unique parameters in main event. eventName"

    :goto_132
    invoke-virtual {v0, v2, v9}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_189

    :cond_136
    :goto_136
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    invoke-virtual {v0, v2, v9, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    :cond_146
    if-eqz v6, :cond_189

    iput-object v4, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzb:Ljava/lang/Long;

    iput-object v8, v1, Lcom/google/android/gms/measurement/internal/zzs;->zza:Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "_epc"

    invoke-static {v8, v3}, Lcom/google/android/gms/measurement/internal/zzki;->zzb(Lcom/google/android/gms/internal/measurement/zzbr$zzc;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_15e

    goto :goto_15f

    :cond_15e
    move-object v2, v3

    :goto_15f
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzc:J

    iget-wide v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzc:J

    cmp-long v5, v2, v11

    if-gtz v5, :cond_17a

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v2, "Complex event with zero extra param count. eventName"

    goto :goto_132

    :cond_17a
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzd:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    iget-wide v5, v1, Lcom/google/android/gms/measurement/internal/zzs;->zzc:J

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/zzbr$zzc;)Z

    :cond_189
    :goto_189
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzc$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    return-object v0
.end method
