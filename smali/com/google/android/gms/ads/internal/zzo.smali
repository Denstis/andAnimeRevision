###### Class com.google.android.gms.ads.internal.zzo (com.google.android.gms.ads.internal.zzo)
.class final Lcom/google/android/gms/ads/internal/zzo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzbls:Ljava/lang/String;

.field private final zzblt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzblu:Ljava/lang/String;

.field private zzblv:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzbls:Ljava/lang/String;

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzblt:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final getQuery()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzblu:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztx;Lcom/google/android/gms/internal/ads/zzaxl;)V
    .registers 8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zztx;->zzccc:Lcom/google/android/gms/internal/ads/zzyf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzyf;->zzblu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzblu:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zztx;->zzcce:Landroid/os/Bundle;

    if-eqz p1, :cond_15

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    if-nez p1, :cond_19

    return-void

    :cond_19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcpe:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzo;->zzblv:Ljava/lang/String;

    goto :goto_2d

    :cond_46
    const-string v3, "csa_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzo;->zzblt:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    :cond_5d
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzo;->zzblt:Ljava/util/Map;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    const-string v0, "SDKVersion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzjz()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzblv:Ljava/lang/String;

    return-object v0
.end method

.method public final zzka()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzbls:Ljava/lang/String;

    return-object v0
.end method

.method public final zzkb()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzo;->zzblt:Ljava/util/Map;

    return-object v0
.end method
