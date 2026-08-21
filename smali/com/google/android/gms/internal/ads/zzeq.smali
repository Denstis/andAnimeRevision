###### Class com.google.android.gms.internal.ads.zzeq (com.google.android.gms.internal.ads.zzeq)
.class public final Lcom/google/android/gms/internal/ads/zzeq;
.super Lcom/google/android/gms/internal/ads/zzfl;
.source ""


# instance fields
.field private startTime:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;JII)V
    .registers 16

    const/16 v6, 0x19

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzeq;->startTime:J

    return-void
.end method


# virtual methods
.method protected final zzcu()V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaal:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    monitor-enter v2

    :try_start_13
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzbr(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzeq;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2f

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzeq;->startTime:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzat(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzeq;->startTime:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzaw(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    :cond_2f
    monitor-exit v2

    return-void

    :catchall_31
    move-exception v0

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_31

    throw v0
.end method
