###### Class com.google.android.gms.internal.ads.zzcz (com.google.android.gms.internal.ads.zzcz)
.class final Lcom/google/android/gms/internal/ads/zzcz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzvn:Lcom/google/android/gms/internal/ads/zzda;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzda;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzvn:Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzvn:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzda;->zzvr:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzda;->zzcb()Landroid/os/ConditionVariable;

    move-result-object v0

    monitor-enter v0

    :try_start_c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzvn:Lcom/google/android/gms/internal/ads/zzda;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzda;->zzvr:Ljava/lang/Boolean;

    if-eqz v1, :cond_14

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_4d

    return-void

    :cond_14
    const/4 v1, 0x0

    :try_start_15
    sget-object v2, Lcom/google/android/gms/internal/ads/zzza;->zzcmw:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_25} :catch_26
    .catchall {:try_start_15 .. :try_end_25} :catchall_4d

    goto :goto_27

    :catch_26
    const/4 v2, 0x0

    :goto_27
    if-eqz v2, :cond_3b

    :try_start_29
    new-instance v3, Lcom/google/android/gms/internal/ads/zzsi;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzvn:Lcom/google/android/gms/internal/ads/zzda;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzda;->zza(Lcom/google/android/gms/internal/ads/zzda;)Lcom/google/android/gms/internal/ads/zzdx;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    const-string v5, "ADSHIELD"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzsi;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzda;->zzvq:Lcom/google/android/gms/internal/ads/zzsi;
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_3c

    :cond_3b
    move v1, v2

    :catchall_3c
    :try_start_3c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcz;->zzvn:Lcom/google/android/gms/internal/ads/zzda;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzda;->zzvr:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzda;->zzcb()Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3c .. :try_end_4f} :catchall_4d

    throw v1
.end method
