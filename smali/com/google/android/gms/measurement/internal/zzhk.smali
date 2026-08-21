###### Class com.google.android.gms.measurement.internal.zzhk (com.google.android.gms.measurement.internal.zzhk)
.class final Lcom/google/android/gms/measurement/internal/zzhk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:J

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzhb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzhb;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zza:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zza:J

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzd()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzb()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zze;->zzw()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzw()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    const-string v4, "Resetting analytics data (FE)"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzk()Lcom/google/android/gms/measurement/internal/zzjo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjo;->zzd()V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjo;->zzb:Lcom/google/android/gms/measurement/internal/zzjw;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzjw;->zza()V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzgr;->zzx:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzga;->zzab()Z

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v4

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzff;->zzh:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzff;->zzw:Lcom/google/android/gms/measurement/internal/zzfm;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfm;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzff;->zzw:Lcom/google/android/gms/measurement/internal/zzfm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzfm;->zza(Ljava/lang/String;)V

    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzcm:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/zzff;->zzq:Lcom/google/android/gms/measurement/internal/zzfk;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/measurement/internal/zzfk;->zza(J)V

    :cond_64
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgr;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzx;->zzg()Z

    move-result v1

    if-nez v1, :cond_73

    xor-int/lit8 v1, v3, 0x1

    invoke-virtual {v4, v1}, Lcom/google/android/gms/measurement/internal/zzff;->zzc(Z)V

    :cond_73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzh()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzij;->zzad()V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkt;->zzb()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzt()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzap;->zzcm:Lcom/google/android/gms/measurement/internal/zzel;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzx;->zza(Lcom/google/android/gms/measurement/internal/zzel;)Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzk()Lcom/google/android/gms/measurement/internal/zzjo;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjo;->zza:Lcom/google/android/gms/measurement/internal/zzjy;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjy;->zza()V

    :cond_95
    xor-int/lit8 v1, v3, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzhb;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzhk;->zzb:Lcom/google/android/gms/measurement/internal/zzhb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhb;->zzh()Lcom/google/android/gms/measurement/internal/zzij;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
