###### Class com.google.android.gms.internal.ads.zzbbe (com.google.android.gms.internal.ads.zzbbe)
.class final Lcom/google/android/gms/internal/ads/zzbbe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzduo:Ljava/lang/String;

.field private final synthetic zzedh:Ljava/lang/String;

.field private final synthetic zzedj:J

.field private final synthetic zzedn:Lcom/google/android/gms/internal/ads/zzbax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbax;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbe;->zzedn:Lcom/google/android/gms/internal/ads/zzbax;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbe;->zzduo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbe;->zzedh:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzbbe;->zzedj:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheComplete"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbe;->zzduo:Ljava/lang/String;

    const-string v2, "src"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbe;->zzedh:Ljava/lang/String;

    const-string v2, "cachedSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzbbe;->zzedj:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalDuration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbe;->zzedn:Lcom/google/android/gms/internal/ads/zzbax;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Lcom/google/android/gms/internal/ads/zzbax;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
