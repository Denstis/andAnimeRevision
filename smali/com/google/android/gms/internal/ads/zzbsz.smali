###### Class com.google.android.gms.internal.ads.zzbsz (com.google.android.gms.internal.ads.zzbsz)
.class public final Lcom/google/android/gms/internal/ads/zzbsz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbna;


# instance fields
.field private final zzfiv:Lcom/google/android/gms/internal/ads/zzbni;

.field private final zzfiw:Lcom/google/android/gms/internal/ads/zzcvr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbni;Lcom/google/android/gms/internal/ads/zzcvr;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsz;->zzfiv:Lcom/google/android/gms/internal/ads/zzbni;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsz;->zzfiw:Lcom/google/android/gms/internal/ads/zzcvr;

    return-void
.end method


# virtual methods
.method public final onAdClosed()V
    .registers 1

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 1

    return-void
.end method

.method public final onAdOpened()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsz;->zzfiw:Lcom/google/android/gms/internal/ads/zzcvr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgjp:I

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsz;->zzfiv:Lcom/google/android/gms/internal/ads/zzbni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbni;->onAdImpression()V

    :cond_e
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .registers 1

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .registers 1

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzapy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method
