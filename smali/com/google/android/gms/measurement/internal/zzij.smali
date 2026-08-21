###### Class com.google.android.gms.measurement.internal.zzij (com.google.android.gms.measurement.internal.zzij)
.class public final Lcom/google/android/gms/measurement/internal/zzij;
.super Lcom/google/android/gms/measurement/internal/zze;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzjb;

.field private zzb:Lcom/google/android/gms/measurement/internal/zzeo;

.field private volatile zzc:Ljava/lang/Boolean;

.field private final zzd:Lcom/google/android/gms/measurement/internal/zzaf;

.field private final zze:Lcom/google/android/gms/measurement/internal/zzjx;

.field private final zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/measurement/internal/zzaf;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzga;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zzga;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzf:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzga;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjx;-><init>(Lcom/google/android/gms/common/util/Clock;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zze:Lcom/google/android/gms/measurement/internal/zzjx;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzjb;-><init>(Lcom/google/android/gms/measurement/internal/zzij;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzim;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzim;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzgt;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzd:Lcom/google/android/gms/measurement/internal/zzaf;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzit;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzit;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzgt;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzg:Lcom/google/android/gms/measurement/internal/zzaf;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzeo;)Lcom/google/android/gms/measurement/internal/zzeo;
    .registers 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Lcom/google/android/gms/measurement/internal/zzeo;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzij;)Lcom/google/android/gms/measurement/internal/zzjb;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    return-object p0
.end method

.method private final zza(Z)Lcom/google/android/gms/measurement/internal/zzm;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzg()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v0

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzy()Ljava/lang/String;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzep;->zza(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object p1

    return-object p1
.end method

.method private final zza(Landroid/content/ComponentName;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Lcom/google/android/gms/measurement/internal/zzeo;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzaf()V

    :cond_1d
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzij;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Landroid/content/ComponentName;)V

    return-void
.end method

.method private final zza(Ljava/lang/Runnable;)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzab()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-ltz v4, :cond_28

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    const-string v0, "Discarding data. Max runnable queue size reached"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzf:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzg:Lcom/google/android/gms/measurement/internal/zzaf;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzaf()V

    return-void
.end method

.method private final zzai()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    const/4 v0, 0x1

    return v0
.end method

.method private final zzaj()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zze:Lcom/google/android/gms/measurement/internal/zzjx;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjx;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzd:Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzap;->zzag:Lcom/google/android/gms/measurement/internal/zzel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzel;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(J)V

    return-void
.end method

.method private final zzak()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzab()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzah()V

    return-void
.end method

.method private final zzal()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Processing queued up service tasks"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    :try_start_2c
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_20

    :catch_30
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    const-string v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_20

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzg:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc()V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzij;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzal()V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/measurement/internal/zzij;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzak()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/measurement/internal/zzij;)Lcom/google/android/gms/measurement/internal/zzeo;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Lcom/google/android/gms/measurement/internal/zzeo;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/measurement/internal/zzij;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzaj()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzn;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzip;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzip;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzn;Lcom/google/android/gms/measurement/internal/zzan;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(I)I

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    const-string p3, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {p2, p3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [B

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Lcom/google/android/gms/internal/measurement/zzn;[B)V

    return-void

    :cond_2b
    new-instance v0, Lcom/google/android/gms/measurement/internal/zziu;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zziu;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzan;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzn;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v5

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzja;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzja;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/measurement/zzn;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v6

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjc;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzjc;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/internal/measurement/zzn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/internal/zzan;Ljava/lang/String;)V
    .registers 11

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzai()Z

    move-result v2

    const/4 v0, 0x1

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Lcom/google/android/gms/measurement/internal/zzan;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1e
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v5

    new-instance v7, Lcom/google/android/gms/measurement/internal/zziv;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zziv;-><init>(Lcom/google/android/gms/measurement/internal/zzij;ZZLcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/internal/zzeo;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Lcom/google/android/gms/measurement/internal/zzeo;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzaj()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzal()V

    return-void
.end method

.method final zza(Lcom/google/android/gms/measurement/internal/zzeo;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 15
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzb()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzai()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/16 v4, 0x64

    :goto_13
    const/16 v5, 0x3e9

    if-ge v3, v5, :cond_a1

    if-ne v4, v2, :cond_a1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/zzes;->zza(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_32

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_33

    :cond_32
    const/4 v5, 0x0

    :goto_33
    if-eqz p2, :cond_3a

    if-ge v5, v2, :cond_3a

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3f
    if-ge v7, v6, :cond_9c

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzan;

    if-eqz v9, :cond_62

    :try_start_4d
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzan;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_52} :catch_53

    goto :goto_3f

    :catch_53
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    const-string v10, "Failed to send event to the service"

    :goto_5e
    invoke-virtual {v9, v10, v8}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3f

    :cond_62
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzkl;

    if-eqz v9, :cond_78

    :try_start_66
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzkl;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Lcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6b} :catch_6c

    goto :goto_3f

    :catch_6c
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    const-string v10, "Failed to send attribute to the service"

    goto :goto_5e

    :cond_78
    instance-of v9, v8, Lcom/google/android/gms/measurement/internal/zzv;

    if-eqz v9, :cond_8e

    :try_start_7c
    check-cast v8, Lcom/google/android/gms/measurement/internal/zzv;

    invoke-interface {p1, v8, p3}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Lcom/google/android/gms/measurement/internal/zzv;Lcom/google/android/gms/measurement/internal/zzm;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_81} :catch_82

    goto :goto_3f

    :catch_82
    move-exception v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    const-string v10, "Failed to send conditional property to the service"

    goto :goto_5e

    :cond_8e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    const-string v9, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    goto :goto_3f

    :cond_9c
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto/16 :goto_13

    :cond_a1
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/internal/zzif;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzir;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzir;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzif;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/internal/zzkl;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzai()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Lcom/google/android/gms/measurement/internal/zzkl;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzil;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzil;-><init>(Lcom/google/android/gms/measurement/internal/zzij;ZLcom/google/android/gms/measurement/internal/zzkl;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/measurement/internal/zzv;)V
    .registers 11

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzes;->zza(Lcom/google/android/gms/measurement/internal/zzv;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    const/4 v5, 0x1

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1b
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzv;

    invoke-direct {v6, p1}, Lcom/google/android/gms/measurement/internal/zzv;-><init>(Lcom/google/android/gms/measurement/internal/zzv;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/measurement/internal/zziy;

    const/4 v4, 0x1

    move-object v2, v0

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/zziy;-><init>(Lcom/google/android/gms/measurement/internal/zzij;ZZLcom/google/android/gms/measurement/internal/zzv;Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/measurement/internal/zzv;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziq;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zziq;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzv;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v7

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzix;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzix;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkl;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v8

    new-instance v0, Lcom/google/android/gms/measurement/internal/zziz;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/measurement/internal/zziz;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/zzm;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zza(Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/internal/zzkl;",
            ">;>;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzio;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzio;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/zzm;Z)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzab()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Lcom/google/android/gms/measurement/internal/zzeo;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzac()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/zziw;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zziw;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzad()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzb()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzai()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->zzab()V

    :cond_1b
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzin;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzin;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzm;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzae()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Z)Lcom/google/android/gms/measurement/internal/zzm;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzbv:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzes;->zzac()Z

    :cond_1e
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzis;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzis;-><init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzm;Z)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzaf()V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzab()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzc:Ljava/lang/Boolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_114

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzff;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    goto/16 :goto_10e

    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzg()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzep;->zzag()I

    move-result v0

    if-ne v0, v2, :cond_3d

    :goto_39
    const/4 v0, 0x1

    :goto_3a
    const/4 v3, 0x1

    goto/16 :goto_eb

    :cond_3d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    const v3, 0xbdfcb8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(I)I

    move-result v0

    if-eqz v0, :cond_dc

    if-eq v0, v2, :cond_cc

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_92

    const/16 v3, 0x9

    if-eq v0, v3, :cond_87

    const/16 v3, 0x12

    if-eq v0, v3, :cond_7c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "Unexpected service status"

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_78
    :goto_78
    const/4 v0, 0x0

    :goto_79
    const/4 v3, 0x0

    goto/16 :goto_eb

    :cond_7c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Service updating"

    goto :goto_e6

    :cond_87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Service invalid"

    goto :goto_9c

    :cond_92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzi()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Service disabled"

    :goto_9c
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    goto :goto_78

    :cond_a0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Service container out of date"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkm;->zzj()I

    move-result v0

    const/16 v3, 0x4423

    if-ge v0, v3, :cond_ba

    goto :goto_d9

    :cond_ba
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzff;->zzj()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_78

    :cond_ca
    const/4 v0, 0x1

    goto :goto_79

    :cond_cc
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    :goto_d9
    const/4 v0, 0x0

    goto/16 :goto_3a

    :cond_dc
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v3, "Service available"

    :goto_e6
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    goto/16 :goto_39

    :goto_eb
    if-nez v0, :cond_105

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzx;->zzx()Z

    move-result v4

    if-eqz v4, :cond_105

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v4, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_105
    if-eqz v3, :cond_10e

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzff;->zza(Z)V

    :cond_10e
    :goto_10e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzc:Ljava/lang/Boolean;

    :cond_114
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzc:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_122

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjb;->zzb()V

    return-void

    :cond_122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzx;->zzx()Z

    move-result v0

    if-nez v0, :cond_180

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzn()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzn()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_155

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_155

    const/4 v1, 0x1

    :cond_155
    if-eqz v1, :cond_173

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzn()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v1, v2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzjb;->zza(Landroid/content/Intent;)V

    return-void

    :cond_173
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    :cond_180
    return-void
.end method

.method final zzag()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzc:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final zzah()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjb;->zza()V

    :try_start_b
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzij;->zzn()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzij;->zza:Lcom/google/android/gms/measurement/internal/zzjb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/ConnectionTracker;->unbindService(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_18} :catch_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_18} :catch_18

    :catch_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzij;->zzb:Lcom/google/android/gms/measurement/internal/zzeo;

    return-void
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzd()V

    return-void
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzb;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zze()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzhb;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzf()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzep;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzg()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzij;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzh()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzii;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzi()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzes;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzj()Lcom/google/android/gms/measurement/internal/zzes;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzjo;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zzk()Lcom/google/android/gms/measurement/internal/zzjo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzah;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzl()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzeu;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzo()Lcom/google/android/gms/measurement/internal/zzeu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzkm;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzft;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzew;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzff;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzx;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzw;
    .registers 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzgr;->zzu()Lcom/google/android/gms/measurement/internal/zzw;

    move-result-object v0

    return-object v0
.end method

.method protected final zzz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
