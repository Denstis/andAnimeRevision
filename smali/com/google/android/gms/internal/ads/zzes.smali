###### Class com.google.android.gms.internal.ads.zzes (com.google.android.gms.internal.ads.zzes)
.class public final Lcom/google/android/gms/internal/ads/zzes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

.field private final zzvo:Lcom/google/android/gms/internal/ads/zzdx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzes;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzes;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    return-void
.end method

.method private final zzcw()Ljava/lang/Void;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzes;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzcn()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzes;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzcn()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzes;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzcm()Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object v0

    if-eqz v0, :cond_30

    :try_start_19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzes;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    monitor-enter v1
    :try_end_1c
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_19 .. :try_end_1c} :catch_30

    :try_start_1c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzes;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqj;->zzazb()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v2, v0, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza([BIILcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdpe;

    monitor-exit v1

    goto :goto_30

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_1c .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v0
    :try_end_30
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_2f .. :try_end_30} :catch_30

    :catch_30
    :cond_30
    :goto_30
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzes;->zzcw()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
