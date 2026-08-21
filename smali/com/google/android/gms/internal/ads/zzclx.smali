###### Class com.google.android.gms.internal.ads.zzclx (com.google.android.gms.internal.ads.zzclx)
.class public final Lcom/google/android/gms/internal/ads/zzclx;
.super Lcom/google/android/gms/internal/ads/zzamh;
.source ""


# instance fields
.field private final zzcyn:Ljava/lang/String;

.field private final zzgbl:Lcom/google/android/gms/internal/ads/zzamd;

.field private zzgbm:Lcom/google/android/gms/internal/ads/zzaxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaxv<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgbn:Lorg/json/JSONObject;

.field private zzgbo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzamd;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzamd;",
            "Lcom/google/android/gms/internal/ads/zzaxv<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamh;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbn:Lorg/json/JSONObject;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbo:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbm:Lcom/google/android/gms/internal/ads/zzaxv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzcyn:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbl:Lcom/google/android/gms/internal/ads/zzamd;

    :try_start_13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbn:Lorg/json/JSONObject;

    const-string p2, "adapter_version"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbl:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzamd;->zzsg()Lcom/google/android/gms/internal/ads/zzamr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzamr;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbn:Lorg/json/JSONObject;

    const-string p2, "sdk_version"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbl:Lcom/google/android/gms/internal/ads/zzamd;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzamd;->zzsh()Lcom/google/android/gms/internal/ads/zzamr;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzamr;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbn:Lorg/json/JSONObject;

    const-string p2, "name"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzcyn:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_3e} :catch_3e
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_3e} :catch_3e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method


# virtual methods
.method public final declared-synchronized onFailure(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbo:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbn:Lorg/json/JSONObject;

    const-string v1, "signal_error"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_1a

    :catch_e
    :try_start_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbm:Lcom/google/android/gms/internal/ads/zzaxv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbn:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbo:Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzdi(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbo:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    if-nez p1, :cond_10

    :try_start_9
    const-string p1, "Adapter returned null signals"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzclx;->onFailure(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_23

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbn:Lorg/json/JSONObject;

    const-string v1, "signals"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_17} :catch_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_23

    :catch_17
    :try_start_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbm:Lcom/google/android/gms/internal/ads/zzaxv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbn:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzclx;->zzgbo:Z
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method
