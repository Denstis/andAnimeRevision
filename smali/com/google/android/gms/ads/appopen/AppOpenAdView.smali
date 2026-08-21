###### Class com.google.android.gms.ads.appopen.AppOpenAdView (com.google.android.gms.ads.appopen.AppOpenAdView)
.class public final Lcom/google/android/gms/ads/appopen/AppOpenAdView;
.super Landroid/view/ViewGroup;
.source ""


# instance fields
.field private zzabx:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private zzaby:Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const-string v0, "Context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/appopen/AppOpenAdView;->zzabx:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->zzdg()Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v0

    if-eqz v0, :cond_19

    :try_start_8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->zzjt()Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzua;->zzod()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzdi()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/appopen/AppOpenAdView;->zzabx:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/ads/appopen/AppOpenAdView;->zzaby:Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;

    if-eqz v1, :cond_10

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqt;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzqt;-><init>(Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->zza(Lcom/google/android/gms/internal/ads/zzrc;)V

    :cond_10
    return-void
.end method


# virtual methods
.method protected final onLayout(ZIIII)V
    .registers 8

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_24

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p3

    sub-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    add-int/2addr v0, p4

    add-int/2addr v1, p5

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_24
    return-void
.end method

.method protected final onMeasure(II)V
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1b

    invoke-virtual {p0, v1, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_39

    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v2

    const-string v3, "Unable to retrieve ad size."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    if-eqz v1, :cond_38

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setAppOpenAd(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->zzdg()Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->zzjr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_26

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/appopen/AppOpenAdView;->zzabx:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAdView;->zzdi()V

    return-void

    :cond_26
    const-string p1, "Trying to set AppOpenAd which is already in use."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAppOpenAdPresentationCallback(Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/appopen/AppOpenAdView;->zzaby:Lcom/google/android/gms/ads/appopen/AppOpenAdPresentationCallback;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAdView;->zzdi()V

    return-void
.end method
