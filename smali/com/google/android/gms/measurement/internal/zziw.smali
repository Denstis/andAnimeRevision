###### Class com.google.android.gms.measurement.internal.zziw (com.google.android.gms.measurement.internal.zziw)
.class final Lcom/google/android/gms/measurement/internal/zziw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzm;

.field private final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzij;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzij;Lcom/google/android/gms/measurement/internal/zzm;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziw;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziw;->zza:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziw;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzij;->zzd(Lcom/google/android/gms/measurement/internal/zzij;)Lcom/google/android/gms/measurement/internal/zzeo;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziw;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    const-string v1, "Failed to send measurementEnabled to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;)V

    return-void

    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziw;->zza:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-interface {v0, v1}, Lcom/google/android/gms/measurement/internal/zzeo;->zzb(Lcom/google/android/gms/measurement/internal/zzm;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zziw;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzij;->zze(Lcom/google/android/gms/measurement/internal/zzij;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zziw;->zzb:Lcom/google/android/gms/measurement/internal/zzij;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzij;->zzr()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzew;->zzf()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    const-string v2, "Failed to send measurementEnabled to the service"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzey;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
