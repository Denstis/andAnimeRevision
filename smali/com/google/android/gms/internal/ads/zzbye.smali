###### Class com.google.android.gms.internal.ads.zzbye (com.google.android.gms.internal.ads.zzbye)
.class public final Lcom/google/android/gms/internal/ads/zzbye;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfkw:Lcom/google/android/gms/internal/ads/zzdvv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdvv<",
            "Lcom/google/android/gms/internal/ads/zzbyb;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

.field private final zzfpn:Lcom/google/android/gms/internal/ads/zzaco;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbuy;Lcom/google/android/gms/internal/ads/zzbur;Lcom/google/android/gms/internal/ads/zzbyh;Lcom/google/android/gms/internal/ads/zzdvv;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbuy;",
            "Lcom/google/android/gms/internal/ads/zzbur;",
            "Lcom/google/android/gms/internal/ads/zzbyh;",
            "Lcom/google/android/gms/internal/ads/zzdvv<",
            "Lcom/google/android/gms/internal/ads/zzbyb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbur;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbuy;->zzfv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaco;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbye;->zzfpn:Lcom/google/android/gms/internal/ads/zzaco;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbye;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbye;->zzfkw:Lcom/google/android/gms/internal/ads/zzdvv;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbye;->zzfpn:Lcom/google/android/gms/internal/ads/zzaco;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbye;->zzfkw:Lcom/google/android/gms/internal/ads/zzdvv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdvv;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzace;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzaco;->zza(Lcom/google/android/gms/internal/ads/zzace;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzajf()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbye;->zzfpn:Lcom/google/android/gms/internal/ads/zzaco;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbye;->zzfnd:Lcom/google/android/gms/internal/ads/zzbyh;

    const-string v1, "/nativeAdCustomClick"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzbyh;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    return-void
.end method
