###### Class com.google.android.gms.internal.ads.zzek (com.google.android.gms.internal.ads.zzek)
.class public final Lcom/google/android/gms/internal/ads/zzek;
.super Lcom/google/android/gms/internal/ads/zzfl;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;II)V
    .registers 14

    const/16 v6, 0x31

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
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbz;->zzkv:Lcom/google/android/gms/internal/ads/zzbz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzf(Lcom/google/android/gms/internal/ads/zzbz;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaal:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdx;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzaaa:Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    if-eqz v0, :cond_27

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbz;->zzku:Lcom/google/android/gms/internal/ads/zzbz;

    goto :goto_29

    :cond_27
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbz;->zzkt:Lcom/google/android/gms/internal/ads/zzbz;

    :goto_29
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzf(Lcom/google/android/gms/internal/ads/zzbz;)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;
    :try_end_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/provider/Settings$SettingNotFoundException;

    if-eqz v1, :cond_37

    return-void

    :cond_37
    throw v0
.end method
