###### Class com.google.android.gms.internal.ads.zzclw (com.google.android.gms.internal.ads.zzclw)
.class public final Lcom/google/android/gms/internal/ads/zzclw;
.super Lcom/google/android/gms/internal/ads/zzvk;
.source ""


# instance fields
.field private final zzfdl:Landroid/view/ViewGroup;

.field private final zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

.field private final zzfjf:Lcom/google/android/gms/internal/ads/zzuy;

.field private final zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzcwe;Lcom/google/android/gms/internal/ads/zzbio;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzfjf:Lcom/google/android/gms/internal/ads/zzuy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    new-instance p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzlk:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbio;->zzaeu()Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzaur;->zzvr()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzclw;->zzjt()Lcom/google/android/gms/internal/ads/zzua;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzua;->heightPixels:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzclw;->zzjt()Lcom/google/android/gms/internal/ads/zzua;

    move-result-object p2

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzua;->widthPixels:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzfdl:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkk;->destroy()V

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    const-string v0, "getAdMetadata is not supported in Publisher AdView returned by AdLoader."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkh:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkk;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

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
    .registers 3

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkk;->zzafm()Lcom/google/android/gms/internal/ads/zzbnl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnl;->zzbu(Landroid/content/Context;)V

    return-void
.end method

.method public final resume()V
    .registers 3

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkk;->zzafm()Lcom/google/android/gms/internal/ads/zzbnl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnl;->zzbv(Landroid/content/Context;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .registers 2

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .registers 2

    const-string p1, "setManualImpressionsEnabled is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

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

    const-string p1, "setOnCustomRenderedAdLoadedListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

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
    .registers 4

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzfdl:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbio;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzua;)V

    :cond_e
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzuf;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzux;)V
    .registers 2

    const-string p1, "setAdClickListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzuy;)V
    .registers 2

    const-string p1, "setAdListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvo;)V
    .registers 2

    const-string p1, "setAdMetadataListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    .registers 2

    const-string p1, "setAppEventListener is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvz;)V
    .registers 2

    const-string p1, "setCorrelationIdProvider is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwx;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyj;)V
    .registers 2

    const-string p1, "setVideoOptions is not supported in Publisher AdView returned by AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztx;)Z
    .registers 2

    const-string p1, "loadAd is not supported for a Publisher AdView returned from AdLoader."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final zzbm(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzjr()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzfdl:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzjs()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zzjs()V

    return-void
.end method

.method public final zzjt()Lcom/google/android/gms/internal/ads/zzua;
    .registers 3

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzlk:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zzaet()Lcom/google/android/gms/internal/ads/zzcvu;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwi;->zza(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v0

    return-object v0
.end method

.method public final zzju()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzgbk:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbkk;->zzju()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzjv()Lcom/google/android/gms/internal/ads/zzvt;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzfga:Lcom/google/android/gms/internal/ads/zzcwe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcwe;->zzgkm:Lcom/google/android/gms/internal/ads/zzvt;

    return-object v0
.end method

.method public final zzjw()Lcom/google/android/gms/internal/ads/zzuy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclw;->zzfjf:Lcom/google/android/gms/internal/ads/zzuy;

    return-object v0
.end method
