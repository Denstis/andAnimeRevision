###### Class com.google.android.gms.internal.ads.zzakw (com.google.android.gms.internal.ads.zzakw)
.class public final Lcom/google/android/gms/internal/ads/zzakw;
.super Lcom/google/android/gms/internal/ads/zzakj;
.source ""


# instance fields
.field private final zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzakj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->getHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzaau;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getScale()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getHeight()I

    move-result v9

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzaau;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3b
    return-object v1

    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOverrideClickHandling()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideClickHandling()Z

    move-result v0

    return v0
.end method

.method public final getOverrideImpressionRecording()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getOverrideImpressionRecording()Z

    move-result v0

    return v0
.end method

.method public final getPrice()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStarRating()D
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->getStarRating()D

    move-result-wide v0

    return-wide v0
.end method

.method public final getStore()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->getStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/VideoController;->zzde()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final recordImpression()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->recordImpression()V

    return-void
.end method

.method public final zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->untrackView(Landroid/view/View;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 5

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final zzqn()Lcom/google/android/gms/internal/ads/zzabi;
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaau;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getScale()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getHeight()I

    move-result v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzaau;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V

    return-object v8

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzqo()Lcom/google/android/gms/internal/ads/zzaba;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzqp()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzry()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->getAdChoicesContent()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzrz()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->zzaba()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakw;->zzdef:Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;->trackView(Landroid/view/View;)V

    return-void
.end method
