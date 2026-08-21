###### Class com.google.android.gms.internal.ads.zzaia (com.google.android.gms.internal.ads.zzaia)
.class public final Lcom/google/android/gms/internal/ads/zzaia;
.super Lcom/google/android/gms/internal/ads/zzayc;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzayc<",
        "Lcom/google/android/gms/internal/ads/zzail;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzdaj:Lcom/google/android/gms/internal/ads/zzaie;

.field private zzdak:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaie;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayc;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzdaj:Lcom/google/android/gms/internal/ads/zzaie;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzaie;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzdaj:Lcom/google/android/gms/internal/ads/zzaie;

    return-object p0
.end method


# virtual methods
.method public final release()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaia;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzdak:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaia;->zzdak:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaid;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzaid;-><init>(Lcom/google/android/gms/internal/ads/zzaia;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaya;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaya;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zza(Lcom/google/android/gms/internal/ads/zzaxz;Lcom/google/android/gms/internal/ads/zzaxx;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaic;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzaic;-><init>(Lcom/google/android/gms/internal/ads/zzaia;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaif;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzaif;-><init>(Lcom/google/android/gms/internal/ads/zzaia;)V

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayc;->zza(Lcom/google/android/gms/internal/ads/zzaxz;Lcom/google/android/gms/internal/ads/zzaxx;)V

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
