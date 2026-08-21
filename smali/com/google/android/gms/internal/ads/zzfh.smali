###### Class com.google.android.gms.internal.ads.zzfh (com.google.android.gms.internal.ads.zzfh)
.class public final Lcom/google/android/gms/internal/ads/zzfh;
.super Lcom/google/android/gms/internal/ads/zzfl;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V
    .registers 14

    const/16 v6, 0x30

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfl;-><init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V

    return-void
.end method


# virtual methods
.method protected final zzcu()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbz;->zzkv:Lcom/google/android/gms/internal/ads/zzbz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zze(Lcom/google/android/gms/internal/ads/zzbz;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaal:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdx;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    monitor-enter v1

    if-eqz v0, :cond_2d

    :try_start_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbz;->zzku:Lcom/google/android/gms/internal/ads/zzbz;

    :goto_29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zze(Lcom/google/android/gms/internal/ads/zzbz;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    goto :goto_32

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbz;->zzkt:Lcom/google/android/gms/internal/ads/zzbz;

    goto :goto_29

    :goto_32
    monitor-exit v1

    return-void

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_34

    goto :goto_38

    :goto_37
    throw v0

    :goto_38
    goto :goto_37
.end method
