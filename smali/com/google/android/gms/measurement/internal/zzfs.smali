###### Class com.google.android.gms.measurement.internal.zzfs (com.google.android.gms.measurement.internal.zzfs)
.class final Lcom/google/android/gms/measurement/internal/zzfs;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzga;

.field private final synthetic zzb:J

.field private final synthetic zzc:Landroid/os/Bundle;

.field private final synthetic zzd:Landroid/content/Context;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzew;

.field private final synthetic zzf:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfq;Lcom/google/android/gms/measurement/internal/zzga;JLandroid/os/Bundle;Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzew;Landroid/content/BroadcastReceiver$PendingResult;)V
    .registers 9

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzb:J

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzc:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzd:Landroid/content/Context;

    iput-object p7, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zze:Lcom/google/android/gms/measurement/internal/zzew;

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzf:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zza:Lcom/google/android/gms/measurement/internal/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzc()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzff;->zzh:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfk;->zza()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzb:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_20

    cmp-long v6, v2, v0

    if-gez v6, :cond_1c

    cmp-long v6, v2, v4

    if-gtz v6, :cond_20

    :cond_1c
    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    :cond_20
    cmp-long v0, v2, v4

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzc:Landroid/os/Bundle;

    const-string v1, "click_timestamp"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzc:Landroid/os/Bundle;

    const-string v1, "_cis"

    const-string v2, "referrer broadcast"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzd:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzga;->zzh()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzc:Landroid/os/Bundle;

    const-string v2, "auto"

    const-string v3, "_cmp"

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zze:Lcom/google/android/gms/measurement/internal/zzew;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzx()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Install campaign recorded"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->zzf:Landroid/content/BroadcastReceiver$PendingResult;

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    :cond_5a
    return-void
.end method
