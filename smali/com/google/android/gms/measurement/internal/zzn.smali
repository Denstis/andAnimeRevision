###### Class com.google.android.gms.measurement.internal.zzn (com.google.android.gms.measurement.internal.zzn)
.class final Lcom/google/android/gms/measurement/internal/zzn;
.super Lcom/google/android/gms/measurement/internal/zzkb;
.source ""


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/measurement/internal/zzp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzke;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lcom/google/android/gms/measurement/internal/zzke;)V

    return-void
.end method

.method private final zza(I)Lcom/google/android/gms/measurement/internal/zzp;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzp;

    return-object p1

    :cond_19
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final zza(II)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzp;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzp;->zza(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method final zza(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;)Ljava/util/List;
    .registers 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbr$zzc;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbr$zzk;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzbr$zza;",
            ">;"
        }
    .end annotation

    move-object/from16 v10, p0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/util/Set;

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/util/Map;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzbl:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzbm:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_59

    :cond_3b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzc()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_s"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v1, 0x1

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzbl:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzbm:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v1, :cond_b5

    if-eqz v0, :cond_b5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_session_count"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_93
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "events"

    const-string v6, "app_id = ?"

    new-array v7, v12, [Ljava/lang/String;

    aput-object v3, v7, v11

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_93 .. :try_end_a2} :catch_a3

    goto :goto_b5

    :catch_a3
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Error resetting session-scoped event counts. appId"

    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b5
    :goto_b5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzac;->zzf(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v14, 0x0

    if-eqz v0, :cond_2e8

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ca

    goto/16 :goto_2e8

    :cond_ca
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v13, :cond_1af

    if-eqz v1, :cond_1af

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lb/e/a;

    invoke-direct {v3}, Lb/e/a;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1ad

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/zzac;->zze(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_fa
    :goto_fa
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1ad

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_1a4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_128

    goto/16 :goto_1a4

    :cond_128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzc()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_fa

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zza()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v9, v15, v7}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zza()Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    move-result-object v15

    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    const/4 v9, 0x0

    :goto_15c
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzf()I

    move-result v15

    if-ge v9, v15, :cond_17a

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzb;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zzb()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_177

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    :cond_177
    add-int/lit8 v9, v9, 0x1

    goto :goto_15c

    :cond_17a
    const/4 v9, 0x0

    :goto_17b
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzh()I

    move-result v15

    if-ge v9, v15, :cond_199

    invoke-virtual {v6, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzb()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_196

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zzb(I)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    :cond_196
    add-int/lit8 v9, v9, 0x1

    goto :goto_17b

    :cond_199
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    goto :goto_1a8

    :cond_1a4
    :goto_1a4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1a8
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_fa

    :cond_1ad
    move-object v15, v3

    goto :goto_1b0

    :cond_1af
    move-object v15, v0

    :goto_1b0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1b4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Lb/e/a;

    invoke-direct {v7}, Lb/e/a;-><init>()V

    if-eqz v1, :cond_21c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzf()I

    move-result v2

    if-nez v2, :cond_1e6

    goto :goto_21c

    :cond_1e6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zze()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1ee
    :goto_1ee
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzbr$zzb;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zza()Z

    move-result v4

    if-eqz v4, :cond_1ee

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zzb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zzc()Z

    move-result v8

    if-eqz v8, :cond_217

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zzd()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_218

    :cond_217
    move-object v3, v14

    :goto_218
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1ee

    :cond_21c
    :goto_21c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v2

    if-eqz v2, :cond_279

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzap;->zzbs:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v2

    if-eqz v2, :cond_279

    new-instance v2, Lb/e/a;

    invoke-direct {v2}, Lb/e/a;-><init>()V

    if-eqz v1, :cond_277

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzh()I

    move-result v3

    if-nez v3, :cond_23e

    goto :goto_277

    :cond_23e
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzg()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_246
    :goto_246
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_277

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza()Z

    move-result v8

    if-eqz v8, :cond_246

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzd()I

    move-result v8

    if-lez v8, :cond_246

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzb()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzd()I

    move-result v9

    sub-int/2addr v9, v12

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_246

    :cond_277
    :goto_277
    move-object v8, v2

    goto :goto_27a

    :cond_279
    move-object v8, v14

    :goto_27a
    if-eqz v1, :cond_2c4

    const/4 v2, 0x0

    :goto_27d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzb()I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    if-ge v2, v3, :cond_2c4

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zza()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_2b6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v11, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v3, v11, v4, v9}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzc()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_2b6

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    const/4 v3, 0x1

    goto :goto_2b7

    :cond_2b6
    const/4 v3, 0x0

    :goto_2b7
    if-nez v3, :cond_2c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c0
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x0

    goto :goto_27d

    :cond_2c4
    if-eqz v13, :cond_2d0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    :cond_2d0
    move-object v4, v1

    new-instance v11, Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzq;)V

    iget-object v1, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    goto/16 :goto_1b4

    :cond_2e8
    :goto_2e8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-nez v0, :cond_4c8

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzs;

    invoke-direct {v0, v10, v14}, Lcom/google/android/gms/measurement/internal/zzs;-><init>(Lcom/google/android/gms/measurement/internal/zzn;Lcom/google/android/gms/measurement/internal/zzq;)V

    new-instance v2, Lb/e/a;

    invoke-direct {v2}, Lb/e/a;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2fe
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    iget-object v5, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzs;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzc;)Lcom/google/android/gms/internal/measurement/zzbr$zzc;

    move-result-object v5

    if-eqz v5, :cond_2fe

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v9

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzap;->zzbm:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v9, v7, v11}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v9

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzc()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v11

    if-nez v11, :cond_38b

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/zzeu;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v11, v8, v13, v6}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz v9, :cond_36c

    move-object v15, v6

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzc()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x1

    const-wide/16 v22, 0x1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zze()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v31}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_388

    :cond_36c
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzc()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, 0x1

    const-wide/16 v20, 0x1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zze()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-direct/range {v15 .. v29}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :goto_388
    move-object v4, v6

    goto/16 :goto_3f3

    :cond_38b
    const-wide/16 v6, 0x1

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzaj;

    if-eqz v9, :cond_3c2

    move-object v15, v4

    iget-object v8, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    move-object/from16 v16, v8

    iget-object v8, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzb:Ljava/lang/String;

    move-object/from16 v17, v8

    iget-wide v8, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:J

    add-long v18, v8, v6

    iget-wide v8, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzd:J

    add-long v20, v8, v6

    iget-wide v8, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zze:J

    add-long v22, v8, v6

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzf:J

    move-wide/from16 v24, v6

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzg:J

    move-wide/from16 v26, v6

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzh:Ljava/lang/Long;

    move-object/from16 v28, v6

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzi:Ljava/lang/Long;

    move-object/from16 v29, v6

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:Ljava/lang/Long;

    move-object/from16 v30, v6

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzk:Ljava/lang/Boolean;

    move-object/from16 v31, v6

    invoke-direct/range {v15 .. v31}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_3f3

    :cond_3c2
    move-object/from16 v31, v4

    iget-object v8, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Ljava/lang/String;

    move-object/from16 v32, v8

    iget-object v8, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzb:Ljava/lang/String;

    move-object/from16 v33, v8

    iget-wide v8, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:J

    add-long v34, v8, v6

    iget-wide v8, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzd:J

    add-long v36, v8, v6

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zze:J

    move-wide/from16 v38, v6

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzf:J

    move-wide/from16 v40, v6

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzg:J

    move-wide/from16 v42, v6

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzh:Ljava/lang/Long;

    move-object/from16 v44, v6

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzi:Ljava/lang/Long;

    move-object/from16 v45, v6

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:Ljava/lang/Long;

    move-object/from16 v46, v6

    iget-object v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->zzk:Ljava/lang/Boolean;

    move-object/from16 v47, v6

    invoke-direct/range {v31 .. v47}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :goto_3f3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Lcom/google/android/gms/measurement/internal/zzaj;)V

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:J

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzbr$zzc;->zzc()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_41c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v9

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v9, v11, v8}, Lcom/google/android/gms/measurement/internal/zzac;->zzf(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    if-nez v9, :cond_419

    new-instance v9, Lb/e/a;

    invoke-direct {v9}, Lb/e/a;-><init>()V

    :cond_419
    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41c
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_424
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2fe

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_450

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v1, v11}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_424

    :cond_450
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v15, 0x1

    :goto_45f
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4b1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/measurement/zzbj$zzb;

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzr;

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-direct {v12, v10, v14, v11, v15}, Lcom/google/android/gms/measurement/internal/zzr;-><init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbj$zzb;)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzbj$zzb;->zzb()I

    move-result v14

    invoke-direct {v10, v11, v14}, Lcom/google/android/gms/measurement/internal/zzn;->zza(II)Z

    move-result v20

    move-object v15, v12

    move-object/from16 v16, v5

    move-wide/from16 v17, v6

    move-object/from16 v19, v4

    invoke-virtual/range {v15 .. v20}, Lcom/google/android/gms/measurement/internal/zzr;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzc;JLcom/google/android/gms/measurement/internal/zzaj;Z)Z

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v14

    move-object/from16 v16, v0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    move-object/from16 v17, v2

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzbt:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v14, v0, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_4a3

    if-nez v15, :cond_4a3

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4b5

    :cond_4a3
    invoke-direct {v10, v11}, Lcom/google/android/gms/measurement/internal/zzn;->zza(I)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzp;->zza(Lcom/google/android/gms/measurement/internal/zzu;)V

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    const/4 v12, 0x1

    const/4 v14, 0x0

    goto :goto_45f

    :cond_4b1
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    :goto_4b5
    if-nez v15, :cond_4c0

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4c0
    move-object/from16 v0, v16

    move-object/from16 v2, v17

    const/4 v12, 0x1

    const/4 v14, 0x0

    goto/16 :goto_424

    :cond_4c8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_632

    new-instance v2, Lb/e/a;

    invoke-direct {v2}, Lb/e/a;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4dc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_632

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzbr$zzk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzk;->zzc()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_50f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v6

    iget-object v7, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/zzac;->zzg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_50c

    new-instance v6, Lb/e/a;

    invoke-direct {v6}, Lb/e/a;-><init>()V

    :cond_50c
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50f
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_517
    :goto_517
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_543

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4dc

    :cond_543
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x1

    :goto_552
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_61f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbj$zze;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/google/android/gms/measurement/internal/zzew;->zza(I)Z

    move-result v11

    if-eqz v11, :cond_5ab

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zza()Z

    move-result v13

    if-eqz v13, :cond_584

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzb()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_585

    :cond_584
    const/4 v14, 0x0

    :goto_585
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v13

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzc()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/google/android/gms/measurement/internal/zzeu;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "Evaluating filter. audience, filter, property"

    invoke-virtual {v11, v15, v12, v14, v13}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzg()Lcom/google/android/gms/measurement/internal/zzki;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Lcom/google/android/gms/internal/measurement/zzbj$zze;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Filter definition"

    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5ab
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zza()Z

    move-result v11

    if-eqz v11, :cond_5f4

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzb()I

    move-result v11

    const/16 v12, 0x100

    if-le v11, v12, :cond_5ba

    goto :goto_5f4

    :cond_5ba
    new-instance v11, Lcom/google/android/gms/measurement/internal/zzt;

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-direct {v11, v10, v12, v7, v9}, Lcom/google/android/gms/measurement/internal/zzt;-><init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/zzbj$zze;)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzb()I

    move-result v9

    invoke-direct {v10, v7, v9}, Lcom/google/android/gms/measurement/internal/zzn;->zza(II)Z

    move-result v9

    move-object/from16 v12, p4

    invoke-virtual {v11, v12, v4, v9}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/zzbr$zzk;Z)Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v13

    iget-object v14, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzap;->zzbt:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v13, v14, v15}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v13

    if-eqz v13, :cond_5ea

    if-nez v9, :cond_5ea

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v11, v9

    goto :goto_621

    :cond_5ea
    invoke-direct {v10, v7}, Lcom/google/android/gms/measurement/internal/zzn;->zza(I)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/google/android/gms/measurement/internal/zzp;->zza(Lcom/google/android/gms/measurement/internal/zzu;)V

    move v11, v9

    goto/16 :goto_552

    :cond_5f4
    :goto_5f4
    move-object/from16 v12, p4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    iget-object v11, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zza()Z

    move-result v13

    if-eqz v13, :cond_613

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbj$zze;->zzb()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_614

    :cond_613
    const/4 v14, 0x0

    :goto_614
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "Invalid property filter ID. appId, id"

    invoke-virtual {v8, v13, v11, v9}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x0

    goto :goto_621

    :cond_61f
    move-object/from16 v12, p4

    :goto_621
    if-nez v11, :cond_517

    iget-object v8, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_517

    :cond_62e
    move-object/from16 v12, p4

    goto/16 :goto_4dc

    :cond_632
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzbr:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    new-instance v2, Lb/e/a;

    invoke-direct {v2}, Lb/e/a;-><init>()V

    if-eqz v1, :cond_64f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v1

    iget-object v2, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzac;->zza(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    :cond_64f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzc:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_663
    :goto_663
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6fe

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzd:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzp;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/measurement/internal/zzp;->zza(ILjava/util/List;)Lcom/google/android/gms/internal/measurement/zzbr$zza;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzkc;->zzi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v5

    iget-object v6, v10, Lcom/google/android/gms/measurement/internal/zzn;->zzb:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzbr$zza;->zzc()Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzkb;->zzak()V

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zzd()V

    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzdl;->zzbi()[B

    move-result-object v4

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "app_id"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v8, "audience_id"

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    invoke-virtual {v7, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_6c2
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzac;->c_()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "audience_filter_values"
    :try_end_6c8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6c2 .. :try_end_6c8} :catch_6e9

    const/4 v8, 0x5

    const/4 v9, 0x0

    :try_start_6ca
    invoke-virtual {v0, v4, v9, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v7

    const-wide/16 v11, -0x1

    cmp-long v0, v7, v11

    if-nez v0, :cond_663

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v4, "Failed to insert filter results (got -1). appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6e5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6ca .. :try_end_6e5} :catch_6e7

    goto/16 :goto_663

    :catch_6e7
    move-exception v0

    goto :goto_6eb

    :catch_6e9
    move-exception v0

    const/4 v9, 0x0

    :goto_6eb
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzew;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Error storing filter results. appId"

    invoke-virtual {v4, v6, v5, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_663

    :cond_6fe
    return-object v1
.end method

.method protected final zze()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
