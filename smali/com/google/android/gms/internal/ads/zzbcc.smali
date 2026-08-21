###### Class com.google.android.gms.internal.ads.zzbcc (com.google.android.gms.internal.ads.zzbcc)
.class final Lcom/google/android/gms/internal/ads/zzbcc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

.field private zzeff:Lcom/google/android/gms/internal/ads/zzbbw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/ads/internal/overlay/zzo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbcc;->zzeff:Lcom/google/android/gms/internal/ads/zzbbw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbcc;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 1

    return-void
.end method

.method public final zzsi()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcc;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzsi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcc;->zzeff:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzzi()V

    return-void
.end method

.method public final zzsj()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcc;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzsj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbcc;->zzeff:Lcom/google/android/gms/internal/ads/zzbbw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbbw;->zzsu()V

    return-void
.end method
