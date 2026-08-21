###### Class com.google.android.gms.internal.ads.zzbsm (com.google.android.gms.internal.ads.zzbsm)
.class public final Lcom/google/android/gms/internal/ads/zzbsm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private final zzfio:Lcom/google/android/gms/internal/ads/zzboo;

.field private final zzfip:Lcom/google/android/gms/internal/ads/zzbqo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzboo;Lcom/google/android/gms/internal/ads/zzbqo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzfio:Lcom/google/android/gms/internal/ads/zzboo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzfip:Lcom/google/android/gms/internal/ads/zzbqo;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzfio:Lcom/google/android/gms/internal/ads/zzboo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboo;->onPause()V

    return-void
.end method

.method public final onResume()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzfio:Lcom/google/android/gms/internal/ads/zzboo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboo;->onResume()V

    return-void
.end method

.method public final zzsi()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzfio:Lcom/google/android/gms/internal/ads/zzboo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboo;->zzsi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzfip:Lcom/google/android/gms/internal/ads/zzbqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->onHide()V

    return-void
.end method

.method public final zzsj()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzfio:Lcom/google/android/gms/internal/ads/zzboo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboo;->zzsj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzfip:Lcom/google/android/gms/internal/ads/zzbqo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->zzagp()V

    return-void
.end method
