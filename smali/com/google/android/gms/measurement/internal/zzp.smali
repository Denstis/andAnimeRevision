###### Class com.google.android.gms.measurement.internal.zzp (com.google.android.gms.measurement.internal.zzp)
.class final Lcom/google/android/gms/measurement/internal/zzp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:Lcom/google/android/gms/internal/measurement/zzbr$zzi;

.field private zzd:Ljava/util/BitSet;

.field private zze:Ljava/util/BitSet;

.field private zzf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final synthetic zzh:Lcom/google/android/gms/measurement/internal/zzn;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Z

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/util/BitSet;

    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zze:Ljava/util/BitSet;

    new-instance p1, Lb/e/a;

    invoke-direct {p1}, Lb/e/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    new-instance p1, Lb/e/a;

    invoke-direct {p1}, Lb/e/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzbr$zzi;",
            "Ljava/util/BitSet;",
            "Ljava/util/BitSet;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/util/BitSet;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzp;->zze:Ljava/util/BitSet;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    new-instance p1, Lb/e/a;

    invoke-direct {p1}, Lb/e/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    if-eqz p7, :cond_3e

    invoke-interface {p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    invoke-interface {p5, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_3e
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzbr$zzi;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Lcom/google/android/gms/measurement/internal/zzn;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/util/BitSet;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/util/BitSet;

    return-object p0
.end method


# virtual methods
.method final zza(ILjava/util/List;)Lcom/google/android/gms/internal/measurement/zzbr$zza;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/measurement/zzbr$zza;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zza;->zzh()Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;

    move-result-object v2

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;

    iget-boolean v3, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzb:Z

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zza(Z)Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzc:Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    if-eqz v3, :cond_19

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzi;)Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzi()Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/util/BitSet;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zze:Ljava/util/BitSet;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzki;->zza(Ljava/util/BitSet;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    const/4 v5, 0x0

    if-nez v4, :cond_38

    move-object v6, v5

    goto :goto_81

    :cond_38
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_81

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zze()Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbr$zzb;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    :cond_81
    :goto_81
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    if-nez v4, :cond_8d

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_d3

    :cond_8d
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zze()Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_c8

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    :cond_c8
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_d2
    move-object v4, v6

    :goto_d3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v6

    if-eqz v6, :cond_e9

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzap;->zzbs:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v6

    if-nez v6, :cond_1e3

    :cond_e9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zza()Z

    move-result v6

    if-eqz v6, :cond_1e3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zzb()Lcom/google/android/gms/internal/measurement/zzbr$zzi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzi;->zzg()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_ff

    goto/16 :goto_1e3

    :cond_ff
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lb/e/a;

    invoke-direct {v4}, Lb/e/a;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10d
    :goto_10d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza()Z

    move-result v9

    if-eqz v9, :cond_10d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzd()I

    move-result v9

    if-lez v9, :cond_10d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzb()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzd()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10d

    :cond_13f
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_141
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1aa

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza()Z

    move-result v10

    if-eqz v10, :cond_15c

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzb()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_15d

    :cond_15c
    move-object v10, v5

    :goto_15d
    invoke-interface {v4, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-eqz v10, :cond_1a7

    if-eqz v1, :cond_175

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzb()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a7

    :cond_175
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zza(I)J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-gez v16, :cond_189

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_189
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zzc()Ljava/util/List;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfd;->zzbm()Lcom/google/android/gms/internal/measurement/zzfd$zzb;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza()Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1a7
    add-int/lit8 v8, v8, 0x1

    goto :goto_141

    :cond_1aa
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzj;->zze()Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v6

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;->zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzj$zza;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzbr$zzj;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b2

    :cond_1e2
    move-object v4, v7

    :cond_1e3
    :goto_1e3
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;->zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzi$zza;)Lcom/google/android/gms/internal/measurement/zzbr$zza$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzu()Lcom/google/android/gms/internal/measurement/zzgo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzbr$zza;

    return-object v1
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzu;)V
    .registers 10

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzu;->zza()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzc:Ljava/lang/Boolean;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzp;->zze:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_11
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzd:Ljava/lang/Boolean;

    if-eqz v1, :cond_1e

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzd:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_1e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/lang/Long;

    const-wide/16 v2, 0x3e8

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzu;->zze:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-lez v1, :cond_4e

    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzf:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/lang/Long;

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_6e

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzg:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmj;->zzb()Z

    move-result v0

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp;->zzh:Lcom/google/android/gms/measurement/internal/zzn;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzp;->zza:Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzbs:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zzd(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzu;->zzb()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_8d
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzu;->zzf:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    div-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9b
    return-void
.end method
