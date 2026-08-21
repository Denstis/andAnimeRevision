###### Class com.google.android.gms.internal.ads.zzfd (com.google.android.gms.internal.ads.zzfd)
.class public final Lcom/google/android/gms/internal/ads/zzfd;
.super Lcom/google/android/gms/internal/ads/zzfl;
.source ""


# instance fields
.field private final zzaag:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II[Ljava/lang/StackTraceElement;)V
    .registers 15

    const/16 v6, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfd;->zzaag:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method protected final zzcu()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfd;->zzaag:[Ljava/lang/StackTraceElement;

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaal:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdv;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    monitor-enter v0

    :try_start_1b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdv;->zzxo:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzbi(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzdv;->zzxp:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdv;->zzxq:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3b

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbz;->zzkt:Lcom/google/android/gms/internal/ads/zzbz;

    goto :goto_3d

    :cond_3b
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbz;->zzku:Lcom/google/android/gms/internal/ads/zzbz;

    :goto_3d
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzg(Lcom/google/android/gms/internal/ads/zzbz;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    goto :goto_48

    :cond_41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbz;->zzkv:Lcom/google/android/gms/internal/ads/zzbz;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzg(Lcom/google/android/gms/internal/ads/zzbz;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_1b .. :try_end_4c} :catchall_4a

    throw v1

    :cond_4d
    return-void
.end method
