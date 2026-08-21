###### Class com.google.android.gms.measurement.internal.zziv (com.google.android.gms.measurement.internal.zziv)
.class final Lcom/google/android/gms/measurement/internal/zziv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Z

.field private final synthetic zzb:Z

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzan;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzm;

.field private final synthetic zze:Ljava/lang/String;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzij;ZZLcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzf:Lcom/google/android/gms/measurement/internal/zzij;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zziv;->zza:Z

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzb:Z

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzc:Lcom/google/android/gms/measurement/internal/zzan;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzd:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zziv;->zze:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzf:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd(Lcom/google/android/gms/measurement/internal/zzij;)Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzf:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return-void

    :cond_18
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zziv;->zza:Z

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzf:Lcom/google/android/gms/measurement/internal/zzij;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzb:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    goto :goto_26

    :cond_24
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzc:Lcom/google/android/gms/measurement/internal/zzan;

    :goto_26
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzd:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzij;->zza(Lcom/google/android/gms/measurement/internal/zzeo;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_5e

    :cond_2c
    :try_start_2c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziv;->zze:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzc:Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzd:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Lcom/google/android/gms/measurement/internal/zzan;Lcom/google/android/gms/measurement/internal/zzm;)V

    goto :goto_5e

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzc:Lcom/google/android/gms/measurement/internal/zzan;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zziv;->zze:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzf:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Lcom/google/android/gms/measurement/internal/zzan;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_4d} :catch_4e

    goto :goto_5e

    :catch_4e
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzf:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Failed to send event to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_5e
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziv;->zzf:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzij;->zze(Lcom/google/android/gms/measurement/internal/zzij;)V

    return-void
.end method
