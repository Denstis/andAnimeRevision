###### Class com.google.android.gms.ads.MobileAds (com.google.android.gms.ads.MobileAds)
.class public Lcom/google/android/gms/ads/MobileAds;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/MobileAds$Settings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxc;->getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxc;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzxc;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    move-result-object p0

    return-object p0
.end method

.method public static getVersionString()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxc;->getVersionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, p1}, Lcom/google/android/gms/internal/ads/zzxc;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxl;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/MobileAds$Settings;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_9

    move-object p2, v1

    goto :goto_d

    :cond_9
    invoke-virtual {p2}, Lcom/google/android/gms/ads/MobileAds$Settings;->zzdd()Lcom/google/android/gms/internal/ads/zzxl;

    move-result-object p2

    :goto_d
    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzxc;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxl;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method public static openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzxc;->openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static registerRtbAdapter(Ljava/lang/Class;)V
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzxc;->registerRtbAdapter(Ljava/lang/Class;)V

    return-void
.end method

.method public static setAppMuted(Z)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzxc;->setAppMuted(Z)V

    return-void
.end method

.method public static setAppVolume(F)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzxc;->setAppVolume(F)V

    return-void
.end method

.method public static setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzxc;->zzph()Lcom/google/android/gms/internal/ads/zzxc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzxc;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    return-void
.end method

###### Class com.google.android.gms.ads.MobileAds.Settings (com.google.android.gms.ads.MobileAds$Settings)
.class public final Lcom/google/android/gms/ads/MobileAds$Settings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/MobileAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settings"
.end annotation


# instance fields
.field private final zzabh:Lcom/google/android/gms/internal/ads/zzxl;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzxl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzabh:Lcom/google/android/gms/internal/ads/zzxl;

    return-void
.end method


# virtual methods
.method public final getTrackingId()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isGoogleAnalyticsEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final setGoogleAnalyticsEnabled(Z)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setTrackingId(Ljava/lang/String;)Lcom/google/android/gms/ads/MobileAds$Settings;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method final zzdd()Lcom/google/android/gms/internal/ads/zzxl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/MobileAds$Settings;->zzabh:Lcom/google/android/gms/internal/ads/zzxl;

    return-object v0
.end method
