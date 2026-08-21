###### Class com.google.android.gms.internal.ads.zzatt (com.google.android.gms.internal.ads.zzatt)
.class final Lcom/google/android/gms/internal/ads/zzatt;
.super Lcom/google/android/gms/internal/ads/zzauc;
.source ""


# instance fields
.field private final synthetic zzdrb:Lcom/google/android/gms/internal/ads/zzatr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatr;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzdrb:Lcom/google/android/gms/internal/ads/zzatr;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzsx()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzdrb:Lcom/google/android/gms/internal/ads/zzatr;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Lcom/google/android/gms/internal/ads/zzatr;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzdrb:Lcom/google/android/gms/internal/ads/zzatr;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzatr;->zzb(Lcom/google/android/gms/internal/ads/zzatr;)Lcom/google/android/gms/internal/ads/zzaxl;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzdrb:Lcom/google/android/gms/internal/ads/zzatr;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzatr;->zzc(Lcom/google/android/gms/internal/ads/zzatr;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzks()Lcom/google/android/gms/internal/ads/zzzt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatt;->zzdrb:Lcom/google/android/gms/internal/ads/zzatr;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzatr;->zzd(Lcom/google/android/gms/internal/ads/zzatr;)Lcom/google/android/gms/internal/ads/zzzr;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzzt;->zza(Lcom/google/android/gms/internal/ads/zzzr;Lcom/google/android/gms/internal/ads/zzzo;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_26} :catch_29
    .catchall {:try_start_1a .. :try_end_26} :catchall_27

    goto :goto_2f

    :catchall_27
    move-exception v0

    goto :goto_31

    :catch_29
    move-exception v0

    :try_start_2a
    const-string v2, "Cannot config CSI reporter."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2f
    monitor-exit v1

    return-void

    :goto_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_27

    throw v0
.end method
