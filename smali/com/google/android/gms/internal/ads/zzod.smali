###### Class com.google.android.gms.internal.ads.zzod (com.google.android.gms.internal.ads.zzod)
.class public final Lcom/google/android/gms/internal/ads/zzod;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznv;


# instance fields
.field private started:Z

.field private zzadh:Lcom/google/android/gms/internal/ads/zzgu;

.field private zzbgr:J

.field private zzbgs:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgu;->zzafz:Lcom/google/android/gms/internal/ads/zzgu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    return-void
.end method


# virtual methods
.method public final start()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzod;->started:Z

    if-nez v0, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzod;->zzbgs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzod;->started:Z

    :cond_d
    return-void
.end method

.method public final stop()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzod;->started:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzod;->zzfj()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzod;->zzef(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzod;->started:Z

    :cond_e
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznv;)V
    .registers 4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzfj()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzod;->zzef(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzfc()Lcom/google/android/gms/internal/ads/zzgu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzod;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgu;)Lcom/google/android/gms/internal/ads/zzgu;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzod;->started:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzod;->zzfj()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzod;->zzef(J)V

    :cond_b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzod;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    return-object p1
.end method

.method public final zzef(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzod;->zzbgr:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzod;->started:Z

    if-eqz p1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzod;->zzbgs:J

    :cond_c
    return-void
.end method

.method public final zzfc()Lcom/google/android/gms/internal/ads/zzgu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzod;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    return-object v0
.end method

.method public final zzfj()J
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzod;->zzbgr:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzod;->started:Z

    if-eqz v2, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzod;->zzbgs:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzod;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzgu;->zzaga:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1c

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzga;->zzdh(J)J

    move-result-wide v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzgu;->zzdo(J)J

    move-result-wide v2

    :goto_20
    add-long/2addr v0, v2

    :cond_21
    return-wide v0
.end method
