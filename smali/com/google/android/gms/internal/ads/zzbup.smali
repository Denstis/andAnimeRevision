###### Class com.google.android.gms.internal.ads.zzbup (com.google.android.gms.internal.ads.zzbup)
.class public final Lcom/google/android/gms/internal/ads/zzbup;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzcwp:Lcom/google/android/gms/internal/ads/zzabh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbuh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbup;->zzcwp:Lcom/google/android/gms/internal/ads/zzabh;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzabh;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbup;->zzcwp:Lcom/google/android/gms/internal/ads/zzabh;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzqx()Lcom/google/android/gms/internal/ads/zzabh;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbup;->zzcwp:Lcom/google/android/gms/internal/ads/zzabh;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
