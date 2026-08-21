###### Class com.google.android.gms.measurement.internal.zzja (com.google.android.gms.measurement.internal.zzja)
.class final Lcom/google/android/gms/measurement/internal/zzja;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzm;

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzn;

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzij;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;Lcom/google/android/gms/internal/measurement/zzn;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzja;->zze:Lcom/google/android/gms/measurement/internal/zzij;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzc:Lcom/google/android/gms/measurement/internal/zzm;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzd:Lcom/google/android/gms/internal/measurement/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const-string v0, "Failed to get conditional properties"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zze:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzij;->zzd(Lcom/google/android/gms/measurement/internal/zzij;)Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zze:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_20} :catch_42
    .catchall {:try_start_7 .. :try_end_20} :catchall_40

    :goto_20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzja;->zze:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzij;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzd:Lcom/google/android/gms/internal/measurement/zzn;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Lcom/google/android/gms/internal/measurement/zzn;Ljava/util/ArrayList;)V

    return-void

    :cond_2c
    :try_start_2c
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzb:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzc:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzeo;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzm;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzkm;->zzb(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zze:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzij;->zze(Lcom/google/android/gms/measurement/internal/zzij;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_3f} :catch_42
    .catchall {:try_start_2c .. :try_end_3f} :catchall_40

    goto :goto_20

    :catchall_40
    move-exception v0

    goto :goto_55

    :catch_42
    move-exception v2

    :try_start_43
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzja;->zze:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzja;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzb:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_40

    goto :goto_20

    :goto_55
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzja;->zze:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzij;->zzp()Lcom/google/android/gms/measurement/internal/zzkm;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzja;->zzd:Lcom/google/android/gms/internal/measurement/zzn;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/zzkm;->zza(Lcom/google/android/gms/internal/measurement/zzn;Ljava/util/ArrayList;)V

    goto :goto_62

    :goto_61
    throw v0

    :goto_62
    goto :goto_61
.end method
