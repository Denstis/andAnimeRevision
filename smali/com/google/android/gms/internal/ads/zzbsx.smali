###### Class com.google.android.gms.internal.ads.zzbsx (com.google.android.gms.internal.ads.zzbsx)
.class public final Lcom/google/android/gms/internal/ads/zzbsx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;
.implements Lcom/google/android/gms/internal/ads/zzbog;


# instance fields
.field private final zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

.field private final zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

.field private final zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

.field private zzfeu:Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzfis:I

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzaxl;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zzfet:Lcom/google/android/gms/internal/ads/zzcvr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zzfis:I

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .registers 11

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

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

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zzfeu:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method

.method public final zzsj()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zzfeu:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsx;->zzczi:Lcom/google/android/gms/internal/ads/zzbbw;

    if-eqz v0, :cond_12

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzagn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_12
    return-void
.end method
