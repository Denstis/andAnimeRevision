###### Class com.google.android.gms.internal.ads.zzbba (com.google.android.gms.internal.ads.zzbba)
.class final Lcom/google/android/gms/internal/ads/zzbba;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzduo:Ljava/lang/String;

.field private final synthetic zzedh:Ljava/lang/String;

.field private final synthetic zzedk:Z

.field private final synthetic zzedn:Lcom/google/android/gms/internal/ads/zzbax;

.field private final synthetic zzedo:I

.field private final synthetic zzedp:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbax;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzedn:Lcom/google/android/gms/internal/ads/zzbax;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzduo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzedh:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzedo:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzedp:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzedk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheProgress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzduo:Ljava/lang/String;

    const-string v2, "src"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzedh:Ljava/lang/String;

    const-string v2, "cachedSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzedo:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bytesLoaded"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzedp:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalBytes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzedk:Z

    if-eqz v1, :cond_37

    const-string v1, "1"

    goto :goto_39

    :cond_37
    const-string v1, "0"

    :goto_39
    const-string v2, "cacheReady"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzedn:Lcom/google/android/gms/internal/ads/zzbax;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Lcom/google/android/gms/internal/ads/zzbax;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
