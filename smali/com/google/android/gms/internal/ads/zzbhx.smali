###### Class com.google.android.gms.internal.ads.zzbhx (com.google.android.gms.internal.ads.zzbhx)
.class public final Lcom/google/android/gms/internal/ads/zzbhx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpj;


# instance fields
.field private final zzbmp:Lcom/google/android/gms/common/util/Clock;

.field private zzbsc:Z

.field private zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzfbu:Lcom/google/android/gms/internal/ads/zzbhi;

.field private final zzfbx:Ljava/util/concurrent/Executor;

.field private zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

.field private zzfcw:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzbhi;Lcom/google/android/gms/common/util/Clock;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzbsc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfcw:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbhm;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfbx:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfbu:Lcom/google/android/gms/internal/ads/zzbhi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzael()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfbu:Lcom/google/android/gms/internal/ads/zzbhi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhi;->zza(Lcom/google/android/gms/internal/ads/zzbhm;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfbx:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbhw;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzbhw;-><init>(Lcom/google/android/gms/internal/ads/zzbhx;Lorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    :cond_16
    return-void

    :catch_17
    move-exception v0

    const-string v1, "Failed to call video active view js"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaug;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzbsc:Z

    return-void
.end method

.method public final enable()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzbsc:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhx;->zzael()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzpk;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfcw:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_a

    :cond_8
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzpk;->zzbnp:Z

    :goto_a
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbhm;->zzbnp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzbmp:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbhm;->timestamp:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfbz:Lcom/google/android/gms/internal/ads/zzbhm;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzbhm;->zzfcg:Lcom/google/android/gms/internal/ads/zzpk;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzbsc:Z

    if-eqz p1, :cond_21

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbhx;->zzael()V

    :cond_21
    return-void
.end method

.method public final zzax(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzfcw:Z

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbbw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    return-void
.end method

.method final synthetic zzh(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhx;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    const-string v1, "AFMA_updateActiveView"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzahk;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbhw (com.google.android.gms.internal.ads.zzbhw)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbhw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfch:Lorg/json/JSONObject;

.field private final zzfcv:Lcom/google/android/gms/internal/ads/zzbhx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbhx;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzfcv:Lcom/google/android/gms/internal/ads/zzbhx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzfch:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzfcv:Lcom/google/android/gms/internal/ads/zzbhx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhw;->zzfch:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhx;->zzh(Lorg/json/JSONObject;)V

    return-void
.end method
