###### Class animebestapp.com.App (animebestapp.com.App)
.class public final Lanimebestapp/com/App;
.super Landroid/app/Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanimebestapp/com/App$a;
    }
.end annotation


# static fields
.field public static final Companion:Lanimebestapp/com/App$a;

.field private static app:Landroid/content/Context;

.field public static appComponent:Lanimebestapp/com/c/b/a;


# instance fields
.field public mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field public mInterstitialAdWeb:Lcom/google/android/gms/ads/InterstitialAd;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lanimebestapp/com/App$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanimebestapp/com/App$a;-><init>(Lg/p/b/d;)V

    sput-object v0, Lanimebestapp/com/App;->Companion:Lanimebestapp/com/App$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApp$cp()Landroid/content/Context;
    .registers 1

    sget-object v0, Lanimebestapp/com/App;->app:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getAppComponent$cp()Lanimebestapp/com/c/b/a;
    .registers 1

    sget-object v0, Lanimebestapp/com/App;->appComponent:Lanimebestapp/com/c/b/a;

    return-object v0
.end method

.method public static final synthetic access$setApp$cp(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lanimebestapp/com/App;->app:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setAppComponent$cp(Lanimebestapp/com/c/b/a;)V
    .registers 1

    sput-object p0, Lanimebestapp/com/App;->appComponent:Lanimebestapp/com/c/b/a;

    return-void
.end method

.method public static final getAppComponent()Lanimebestapp/com/c/b/a;
    .registers 1

    sget-object v0, Lanimebestapp/com/App;->appComponent:Lanimebestapp/com/c/b/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "appComponent"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final setAppComponent(Lanimebestapp/com/c/b/a;)V
    .registers 1

    sput-object p0, Lanimebestapp/com/App;->appComponent:Lanimebestapp/com/c/b/a;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Lb/o/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public final getMInterstitialAd()Lcom/google/android/gms/ads/InterstitialAd;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/App;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mInterstitialAd"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getMInterstitialAdWeb()Lcom/google/android/gms/ads/InterstitialAd;
    .registers 2

    iget-object v0, p0, Lanimebestapp/com/App;->mInterstitialAdWeb:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mInterstitialAdWeb"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/appcompat/app/f;->a(Z)V

    invoke-static {p0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    sput-object p0, Lanimebestapp/com/App;->app:Landroid/content/Context;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_19

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    :cond_19
    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-static {}, Lanimebestapp/com/c/b/f;->d()Lanimebestapp/com/c/b/a$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lanimebestapp/com/c/b/a$a;->a(Landroid/app/Application;)Lanimebestapp/com/c/b/a$a;

    invoke-interface {v0}, Lanimebestapp/com/c/b/a$a;->a()Lanimebestapp/com/c/b/a;

    move-result-object v0

    sput-object v0, Lanimebestapp/com/App;->appComponent:Lanimebestapp/com/c/b/a;

    new-instance v0, Lanimebestapp/com/b/a/b;

    invoke-direct {v0, p0}, Lanimebestapp/com/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lanimebestapp/com/b/a/b;->d()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "night "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LOGS"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroidx/appcompat/app/f;->d(I)V

    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    const v1, 0x7f0e007a

    invoke-virtual {p0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lanimebestapp/com/App$b;->b:Lanimebestapp/com/App$b;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v2, Lanimebestapp/com/App$c;

    invoke-direct {v2}, Lanimebestapp/com/App$c;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e0079

    invoke-virtual {p0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    iput-object v0, p0, Lanimebestapp/com/App;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    iput-object v0, p0, Lanimebestapp/com/App;->mInterstitialAdWeb:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v0, p0, Lanimebestapp/com/App;->mInterstitialAdWeb:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz v0, :cond_b3

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void

    :cond_b3
    const-string v0, "mInterstitialAdWeb"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final setMInterstitialAd(Lcom/google/android/gms/ads/InterstitialAd;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/App;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-void
.end method

.method public final setMInterstitialAdWeb(Lcom/google/android/gms/ads/InterstitialAd;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/App;->mInterstitialAdWeb:Lcom/google/android/gms/ads/InterstitialAd;

    return-void
.end method

###### Class animebestapp.com.App.a (animebestapp.com.App$a)
.class public final Lanimebestapp/com/App$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanimebestapp/com/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lg/p/b/d;)V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/App$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    invoke-static {}, Lanimebestapp/com/App;->access$getApp$cp()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lanimebestapp/com/c/b/a;
    .registers 2

    invoke-static {}, Lanimebestapp/com/App;->access$getAppComponent$cp()Lanimebestapp/com/c/b/a;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const-string v0, "appComponent"

    invoke-static {v0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

###### Class animebestapp.com.App.b (animebestapp.com.App$b)
.class final Lanimebestapp/com/App$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/App;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final b:Lanimebestapp/com/App$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/App$b;

    invoke-direct {v0}, Lanimebestapp/com/App$b;-><init>()V

    sput-object v0, Lanimebestapp/com/App$b;->b:Lanimebestapp/com/App$b;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUnifiedNativeAdLoaded(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .registers 3

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

###### Class animebestapp.com.App.c (animebestapp.com.App$c)
.class public final Lanimebestapp/com/App$c;
.super Lcom/google/android/gms/ads/AdListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/App;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .registers 2

    return-void
.end method
