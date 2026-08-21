###### Class com.google.android.gms.measurement.internal.zzjo (com.google.android.gms.measurement.internal.zzjo)
.class public final Lcom/google/android/gms/measurement/internal/zzjo;
.super Lcom/google/android/gms/measurement/internal/zze;
.source ""


# instance fields
.field protected zza:Lcom/google/android/gms/measurement/internal/zzjy;

.field protected zzb:Lcom/google/android/gms/measurement/internal/zzjw;

.field private zzc:Landroid/os/Handler;

.field private zzd:Lcom/google/android/gms/measurement/internal/zzjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzga;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zzga;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjy;-><init>(Lcom/google/android/gms/measurement/internal/zzjo;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zza:Lcom/google/android/gms/measurement/internal/zzjy;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjw;-><init>(Lcom/google/android/gms/measurement/internal/zzjo;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjp;-><init>(Lcom/google/android/gms/measurement/internal/zzjo;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zzd:Lcom/google/android/gms/measurement/internal/zzjp;

    return-void
.end method

.method private final zza(J)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzac()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity resumed, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zzd:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjw;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zza:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzga;->zzab()Z

    move-result p2

    if-eqz p2, :cond_59

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzap;->zzas:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4c

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzff;->zzt:Lcom/google/android/gms/measurement/internal/zzfh;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(Z)V

    :cond_4c
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzjy;->zza(JZ)V

    :cond_59
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjo;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzac()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjo;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjo;->zza(J)V

    return-void
.end method

.method private final zzac()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zzc:Landroid/os/Handler;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzj;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzj;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zzc:Landroid/os/Handler;

    :cond_12
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzjo;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zzc:Landroid/os/Handler;

    return-object p0
.end method

.method private final zzb(J)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzac()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Activity paused, time"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zzd:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjw;->zzb(J)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zza:Lcom/google/android/gms/measurement/internal/zzjy;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzap;->zzas:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result p2

    if-eqz p2, :cond_3d

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzjy;->zza:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzff;->zzt:Lcom/google/android/gms/measurement/internal/zzfh;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzfh;->zza(Z)V

    :cond_3d
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzjo;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzb(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()V
    .registers 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->zza()V

    return-void
.end method

.method public final zza(ZZ)Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjo;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzjw;->zza(ZZ)Z

    move-result p1

    return p1
.end method

.method protected final zzab()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/measurement/internal/zzjn;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Lcom/google/android/gms/measurement/internal/zzjo;J)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/Runnable;)V

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
