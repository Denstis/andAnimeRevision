###### Class com.google.android.gms.internal.ads.zzcjv (com.google.android.gms.internal.ads.zzcjv)
.class public final Lcom/google/android/gms/internal/ads/zzcjv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcge;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcge<",
        "Lcom/google/android/gms/internal/ads/zzcwm;",
        "Lcom/google/android/gms/internal/ads/zzchn;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfsy:Lcom/google/android/gms/internal/ads/zzchm;

.field private final zzfzq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcgf<",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            "Lcom/google/android/gms/internal/ads/zzchn;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchm;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zzfzq:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zzfsy:Lcom/google/android/gms/internal/ads/zzchm;

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcgf;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcgf<",
            "Lcom/google/android/gms/internal/ads/zzcwm;",
            "Lcom/google/android/gms/internal/ads/zzchn;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zzfzq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgf;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zzfsy:Lcom/google/android/gms/internal/ads/zzchm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchm;->zze(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcwm;

    move-result-object p2

    if-nez p2, :cond_16

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchn;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzchn;-><init>()V

    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/ads/zzcgf;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbnz;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjv;->zzfzq:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    monitor-exit p0

    return-object v0

    :catchall_27
    move-exception p1

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw p1
.end method
