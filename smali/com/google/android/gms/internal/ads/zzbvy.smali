###### Class com.google.android.gms.internal.ads.zzbvy (com.google.android.gms.internal.ads.zzbvy)
.class public final Lcom/google/android/gms/internal/ads/zzbvy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbnj;


# instance fields
.field private final zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

.field private final zzfkr:Lcom/google/android/gms/internal/ads/zzbuv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbur;Lcom/google/android/gms/internal/ads/zzbuv;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zzfkr:Lcom/google/android/gms/internal/ads/zzbuv;

    return-void
.end method


# virtual methods
.method public final onAdImpression()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzahw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbur;->zzahv()Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zzfjl:Lcom/google/android/gms/internal/ads/zzbur;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbur;->zzahu()Lcom/google/android/gms/internal/ads/zzbbw;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    goto :goto_1e

    :cond_19
    if-eqz v1, :cond_1d

    move-object v0, v1

    goto :goto_1e

    :cond_1d
    move-object v0, v2

    :goto_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvy;->zzfkr:Lcom/google/android/gms/internal/ads/zzbuv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbuv;->zzahl()Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    new-instance v1, Lb/e/a;

    invoke-direct {v1}, Lb/e/a;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzagn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_32
    return-void
.end method
