###### Class com.google.android.gms.measurement.internal.zzjw (com.google.android.gms.measurement.internal.zzjw)
.class final Lcom/google/android/gms/measurement/internal/zzjw;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zza:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzb:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzaf;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzjo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjo;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzjv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzjv;-><init>(Lcom/google/android/gms/measurement/internal/zzjw;Lcom/google/android/gms/measurement/internal/zzgt;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:J

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzjw;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzjw;->zzc()V

    return-void
.end method

.method private final zzc()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/gms/measurement/internal/zzjw;->zza(ZZ)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zze()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzb;->zza(J)V

    return-void
.end method


# virtual methods
.method final zza()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:J

    return-void
.end method

.method final zza(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    iget-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:J

    return-void
.end method

.method public final zza(ZZ)Z
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzap;->zzcm:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzga;->zzab()Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_32
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzff;->zzq:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjo;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    :cond_47
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    sub-long v2, v0, v2

    if-nez p1, :cond_68

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_68

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "Screen exposed for less than 1000 ms. Event not sent. time"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_68
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzff;->zzr:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Recording user engagement, ms"

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzi()Lcom/google/android/gms/measurement/internal/zzii;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzii;->zzab()Lcom/google/android/gms/measurement/internal/zzif;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzii;->zza(Lcom/google/android/gms/measurement/internal/zzif;Landroid/os/Bundle;Z)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzjo;->zzg()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzep;->zzab()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzap;->zzay:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/zzx;->zze(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v2

    if-eqz v2, :cond_d4

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzap;->zzaz:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v2

    if-eqz v2, :cond_c7

    if-nez p2, :cond_d4

    goto :goto_d1

    :cond_c7
    if-eqz p2, :cond_d1

    const-wide/16 v4, 0x1

    const-string v2, "_fr"

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d4

    :cond_d1
    :goto_d1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjw;->zzb()J

    :cond_d4
    :goto_d4
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v2

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzap;->zzaz:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v2

    if-eqz v2, :cond_e4

    if-nez p2, :cond_f1

    :cond_e4
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzf()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object p2

    const-string v2, "auto"

    const-string v4, "_e"

    invoke-virtual {p2, v2, v4, p1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_f1
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc()V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzaf;

    const-wide/16 v0, 0x0

    const-wide/32 v4, 0x36ee80

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzjo;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzff;->zzr:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->zza(J)V

    return v3
.end method

.method final zzb()J
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:J

    sub-long v2, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzb:J

    return-wide v2
.end method

.method final zzb(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzc:Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->zzc()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjo;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzr:Lcom/google/android/gms/measurement/internal/zzfk;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zzd:Lcom/google/android/gms/measurement/internal/zzjo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjo;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzff;->zzr:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzjw;->zza:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    :cond_28
    return-void
.end method
