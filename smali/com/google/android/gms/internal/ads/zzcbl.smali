###### Class com.google.android.gms.internal.ads.zzcbl (com.google.android.gms.internal.ads.zzcbl)
.class public final Lcom/google/android/gms/internal/ads/zzcbl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzfry:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbo;->zzajw()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzcvz;)V
    .registers 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgkb:Lcom/google/android/gms/internal/ads/zzcvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_62

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgkb:Lcom/google/android/gms/internal/ads/zzcvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjx:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzfis:I

    const/4 v1, 0x1

    const-string v2, "ad_format"

    if-eq v0, v1, :cond_44

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    const/4 v1, 0x5

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "unknown"

    :goto_2c
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "rewarded"

    goto :goto_2c

    :cond_35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "native_advanced"

    goto :goto_2c

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "native_express"

    goto :goto_2c

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "interstitial"

    goto :goto_2c

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "banner"

    goto :goto_2c

    :goto_49
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgkb:Lcom/google/android/gms/internal/ads/zzcvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjy:Lcom/google/android/gms/internal/ads/zzcvt;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcvt;->zzbzn:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvz;->zzgkb:Lcom/google/android/gms/internal/ads/zzcvx;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvx;->zzgjy:Lcom/google/android/gms/internal/ads/zzcvt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcvt;->zzbzn:Ljava/lang/String;

    const-string v1, "gqi"

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    return-void
.end method

.method public final zzi(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "cnt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "network_coarse"

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const-string v0, "gnt"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "network_fine"

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-void
.end method

.method public final zzqd()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbl;->zzfry:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
