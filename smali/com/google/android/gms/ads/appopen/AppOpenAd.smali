###### Class com.google.android.gms.ads.appopen.AppOpenAd (com.google.android.gms.ads.appopen.AppOpenAd)
.class public abstract Lcom/google/android/gms/ads/appopen/AppOpenAd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;,
        Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
    }
.end annotation


# static fields
.field public static final APP_OPEN_AD_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final APP_OPEN_AD_ORIENTATION_PORTRAIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .registers 12
    .param p3    # I
        .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
        .end annotation
    .end param

    const-string v0, "Context cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adUnitId cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AdRequest cannot be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrg;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzdb()Lcom/google/android/gms/internal/ads/zzwz;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzrg;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwz;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrg;->zzmg()V

    return-void
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V
    .registers 12
    .param p3    # I
        .annotation build Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
        .end annotation
    .end param

    const-string v0, "Context cannot be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adUnitId cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PublisherAdRequest cannot be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrg;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdb()Lcom/google/android/gms/internal/ads/zzwz;

    move-result-object v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzrg;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzwz;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrg;->zzmg()V

    return-void
.end method


# virtual methods
.method protected abstract zza(Lcom/google/android/gms/internal/ads/zzrc;)V
.end method

.method protected abstract zzdg()Lcom/google/android/gms/internal/ads/zzvl;
.end method

###### Class com.google.android.gms.ads.appopen.AppOpenAd.AppOpenAdLoadCallback (com.google.android.gms.ads.appopen.AppOpenAd$AppOpenAdLoadCallback)
.class public Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/appopen/AppOpenAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AppOpenAdLoadCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppOpenAdFailedToLoad(I)V
    .registers 2

    return-void
.end method

.method public onAppOpenAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .registers 2

    return-void
.end method

###### Class com.google.android.gms.ads.appopen.AppOpenAd.AppOpenAdOrientation (com.google.android.gms.ads.appopen.AppOpenAd$AppOpenAdOrientation)
.class public interface abstract annotation Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdOrientation;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/appopen/AppOpenAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AppOpenAdOrientation"
.end annotation
