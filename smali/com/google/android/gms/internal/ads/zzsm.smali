###### Class com.google.android.gms.internal.ads.zzsm (com.google.android.gms.internal.ads.zzsm)
.class public final Lcom/google/android/gms/internal/ads/zzsm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzbtz:[B

.field private zzbua:I

.field private zzbub:I

.field private final synthetic zzbuc:Lcom/google/android/gms/internal/ads/zzsi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzsi;[B)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbuc:Lcom/google/android/gms/internal/ads/zzsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbtz:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsi;[BLcom/google/android/gms/internal/ads/zzsn;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsm;-><init>(Lcom/google/android/gms/internal/ads/zzsi;[B)V

    return-void
.end method


# virtual methods
.method public final zzbp(I)Lcom/google/android/gms/internal/ads/zzsm;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbua:I

    return-object p0
.end method

.method public final zzbq(I)Lcom/google/android/gms/internal/ads/zzsm;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbub:I

    return-object p0
.end method

.method public final declared-synchronized zzdh()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbuc:Lcom/google/android/gms/internal/ads/zzsi;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtx:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbuc:Lcom/google/android/gms/internal/ads/zzsi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtw:Lcom/google/android/gms/internal/ads/zzfx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbtz:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfx;->zzc([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbuc:Lcom/google/android/gms/internal/ads/zzsi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtw:Lcom/google/android/gms/internal/ads/zzfx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbua:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfx;->zzl(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbuc:Lcom/google/android/gms/internal/ads/zzsi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtw:Lcom/google/android/gms/internal/ads/zzfx;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbub:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfx;->zzm(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbuc:Lcom/google/android/gms/internal/ads/zzsi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtw:Lcom/google/android/gms/internal/ads/zzfx;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfx;->zza([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzbuc:Lcom/google/android/gms/internal/ads/zzsi;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsi;->zzbtw:Lcom/google/android/gms/internal/ads/zzfx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfx;->zzdh()V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_31} :catch_35
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    goto :goto_3d

    :catch_35
    move-exception v0

    :try_start_36
    const-string v1, "Clearcut log failed"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_33

    monitor-exit p0

    return-void

    :goto_3d
    monitor-exit p0

    throw v0
.end method
