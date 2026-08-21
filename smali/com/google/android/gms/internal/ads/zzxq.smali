###### Class com.google.android.gms.internal.ads.zzxq (com.google.android.gms.internal.ads.zzxq)
.class public final Lcom/google/android/gms/internal/ads/zzxq;
.super Lcom/google/android/gms/internal/ads/zzvk;
.source ""


# instance fields
.field private zzblp:Lcom/google/android/gms/internal/ads/zzuy;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzxq;)Lcom/google/android/gms/internal/ads/zzuy;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzblp:Lcom/google/android/gms/internal/ads/zzuy;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .registers 1

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwr;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 1

    return-void
.end method

.method public final resume()V
    .registers 1

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .registers 2

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .registers 2

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final showInterstitial()V
    .registers 1

    return-void
.end method

.method public final stopLoading()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaah;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzant;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzanz;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqi;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzqx;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzua;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzuf;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzux;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzuy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxq;->zzblp:Lcom/google/android/gms/internal/ads/zzuy;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvo;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvz;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwx;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyj;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztx;)Z
    .registers 3

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzawy;->zzzb:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzxt;-><init>(Lcom/google/android/gms/internal/ads/zzxq;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbm(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzjr()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzjs()V
    .registers 1

    return-void
.end method

.method public final zzjt()Lcom/google/android/gms/internal/ads/zzua;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzju()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzjv()Lcom/google/android/gms/internal/ads/zzvt;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzjw()Lcom/google/android/gms/internal/ads/zzuy;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
