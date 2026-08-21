###### Class com.google.android.gms.internal.ads.zzbbd (com.google.android.gms.internal.ads.zzbbd)
.class final Lcom/google/android/gms/internal/ads/zzbbd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic zzduo:Ljava/lang/String;

.field private final synthetic zzedh:Ljava/lang/String;

.field private final synthetic zzedn:Lcom/google/android/gms/internal/ads/zzbax;

.field private final synthetic zzedq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbax;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzedn:Lcom/google/android/gms/internal/ads/zzbax;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzduo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzedh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzedq:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbbd;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "precacheCanceled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzduo:Ljava/lang/String;

    const-string v2, "src"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzedh:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzedh:Ljava/lang/String;

    const-string v2, "cachedSrc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzedn:Lcom/google/android/gms/internal/ads/zzbax;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzedq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Lcom/google/android/gms/internal/ads/zzbax;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzedq:Ljava/lang/String;

    const-string v2, "reason"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->val$message:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->val$message:Ljava/lang/String;

    const-string v2, "message"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbbd;->zzedn:Lcom/google/android/gms/internal/ads/zzbax;

    const-string v2, "onPrecacheEvent"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Lcom/google/android/gms/internal/ads/zzbax;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
