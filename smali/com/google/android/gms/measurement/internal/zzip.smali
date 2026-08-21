###### Class com.google.android.gms.measurement.internal.zzip (com.google.android.gms.measurement.internal.zzip)
.class final Lcom/google/android/gms/measurement/internal/zzip;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzm;

.field private final synthetic zzb:Lcom/google/android/gms/internal/measurement/zzn;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/internal/measurement/zzn;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzij;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzip;->zza:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-string v0, "Failed to get app instance id"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzij;->zzd(Lcom/google/android/gms/measurement/internal/zzij;)Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_18} :catch_48
    .catchall {:try_start_3 .. :try_end_18} :catchall_46

    :goto_18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzij;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zzn;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Lcom/google/android/gms/internal/measurement/zzn;Ljava/lang/String;)V

    return-void

    :cond_24
    :try_start_24
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzip;->zza:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {v2, v3}, Lcom/google/android/gms/measurement/internal/zzeo;->zzc(Lcom/google/android/gms/measurement/internal/zzm;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzij;->zzf()Lcom/google/android/gms/measurement/internal/zzhb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzhb;->zza(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzij;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzff;->zzj:Lcom/google/android/gms/measurement/internal/zzfm;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzfm;->zza(Ljava/lang/String;)V

    :cond_40
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzij;->zze(Lcom/google/android/gms/measurement/internal/zzij;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_45} :catch_48
    .catchall {:try_start_24 .. :try_end_45} :catchall_46

    goto :goto_18

    :catchall_46
    move-exception v0

    goto :goto_57

    :catch_48
    move-exception v2

    :try_start_49
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_56
    .catchall {:try_start_49 .. :try_end_56} :catchall_46

    goto :goto_18

    :goto_57
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzc:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzij;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzip;->zzb:Lcom/google/android/gms/internal/measurement/zzn;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Lcom/google/android/gms/internal/measurement/zzn;Ljava/lang/String;)V

    goto :goto_64

    :goto_63
    throw v0

    :goto_64
    goto :goto_63
.end method
