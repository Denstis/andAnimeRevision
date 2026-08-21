###### Class com.google.android.gms.internal.ads.zzxc (com.google.android.gms.internal.ads.zzxc)
.class public final Lcom/google/android/gms/internal/ads/zzxc;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static zzces:Lcom/google/android/gms/internal/ads/zzxc;


# instance fields
.field private zzcet:Lcom/google/android/gms/internal/ads/zzwb;

.field private zzceu:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

.field private zzcev:Lcom/google/android/gms/ads/RequestConfiguration;

.field private zzcew:Lcom/google/android/gms/ads/initialization/InitializationStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzxc;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcev:Lcom/google/android/gms/ads/RequestConfiguration;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzxc;Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzxc;->zzb(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzyd;-><init>(Lcom/google/android/gms/ads/RequestConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzwb;->zza(Lcom/google/android/gms/internal/ads/zzyd;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    const-string v0, "Unable to set request configuration parcel."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static zzb(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzafr;",
            ">;)",
            "Lcom/google/android/gms/ads/initialization/InitializationStatus;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzafr;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzafr;->zzcyn:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafz;

    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzafr;->zzcyo:Z

    if-eqz v4, :cond_20

    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    goto :goto_22

    :cond_20
    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->NOT_READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    :goto_22
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzafr;->description:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzafr;->zzcyp:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/zzafz;-><init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_2d
    new-instance p0, Lcom/google/android/gms/internal/ads/zzafy;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzafy;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static zzph()Lcom/google/android/gms/internal/ads/zzxc;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzxc;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzxc;->zzces:Lcom/google/android/gms/internal/ads/zzxc;

    if-nez v1, :cond_e

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzxc;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzxc;->zzces:Lcom/google/android/gms/internal/ads/zzxc;

    :cond_e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzxc;->zzces:Lcom/google/android/gms/internal/ads/zzxc;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private final zzpi()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwb;->getVersionString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    :catch_d
    const-string v0, "Unable to get version string."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final getInitializationStatus()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcew:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcew:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwb;->zzou()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzxc;->zzb(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_1e

    return-object v0

    :catch_1e
    const-string v0, "Unable to get Initialization status."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcev:Lcom/google/android/gms/ads/RequestConfiguration;

    return-object v0
.end method

.method public final getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzxc;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzceu:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzceu:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v0

    return-object p1

    :cond_b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzaju;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzok()Lcom/google/android/gms/internal/ads/zzug;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzut;

    invoke-direct {v3, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzut;-><init>(Lcom/google/android/gms/internal/ads/zzug;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzajx;)V

    const/4 v1, 0x0

    invoke-virtual {v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzus;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaqb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaqq;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzaqq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqb;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzceu:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzceu:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    monitor-exit v0

    return-object p1

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final getVersionString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "MobileAds.initialize() must be called prior to getting version string."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwb;->getVersionString()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception v0

    const-string v1, "Unable to get version string."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public final openDebugMenu(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "MobileAds.initialize() must be called prior to opening debug menu."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwb;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p1

    const-string p2, "Unable to open debug menu."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final registerRtbAdapter(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->zzbz(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string v0, "Unable to register RtbAdapter"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAppMuted(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "MobileAds.initialize() must be called prior to setting app muted state."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->setAppMuted(Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p1

    const-string v0, "Unable to set app mute state."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAppVolume(F)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    const-string v3, "The app volume must be a value between 0 and 1 inclusive."

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz v2, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    const-string v1, "MobileAds.initialize() must be called prior to setting the app volume."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    :try_start_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwb;->setAppVolume(F)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p1

    const-string v0, "Unable to set app volume."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "Null passed to setRequestConfiguration."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcev:Lcom/google/android/gms/ads/RequestConfiguration;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcev:Lcom/google/android/gms/ads/RequestConfiguration;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    if-nez v1, :cond_13

    return-void

    :cond_13
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result v2

    if-ne v1, v2, :cond_27

    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result v1

    if-eq v0, v1, :cond_2a

    :cond_27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzxc;->zza(Lcom/google/android/gms/ads/RequestConfiguration;)V

    :cond_2a
    return-void
.end method

.method public final zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxl;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .registers 9

    sget-object p3, Lcom/google/android/gms/internal/ads/zzxc;->lock:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz v0, :cond_9

    monitor-exit p3
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_bd

    return-void

    :cond_9
    if-eqz p1, :cond_b5

    :try_start_b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzajp;->zzrn()Lcom/google/android/gms/internal/ads/zzajp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajp;->zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzok()Lcom/google/android/gms/internal/ads/zzug;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzuo;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzuo;-><init>(Lcom/google/android/gms/internal/ads/zzug;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzus;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwb;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    if-eqz p4, :cond_31

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzxj;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p4, v3}, Lcom/google/android/gms/internal/ads/zzxj;-><init>(Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;Lcom/google/android/gms/internal/ads/zzxg;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzwb;->zza(Lcom/google/android/gms/internal/ads/zzafu;)V

    :cond_31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzaju;-><init>()V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzwb;->zza(Lcom/google/android/gms/internal/ads/zzajx;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzwb;->initialize()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzxf;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzxf;-><init>(Lcom/google/android/gms/internal/ads/zzxc;Landroid/content/Context;)V

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzwb;->zzb(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcev:Lcom/google/android/gms/ads/RequestConfiguration;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_5f

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcev:Lcom/google/android/gms/ads/RequestConfiguration;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result p2

    if-eq p2, v1, :cond_64

    :cond_5f
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcev:Lcom/google/android/gms/ads/RequestConfiguration;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzxc;->zza(Lcom/google/android/gms/ads/RequestConfiguration;)V

    :cond_64
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzza;->initialize(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcqx:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8c

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcrf:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8c

    const/4 v0, 0x1

    :cond_8c
    if-eqz v0, :cond_94

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzxc;->zzpi()Z

    move-result p1

    if-eqz p1, :cond_b3

    :cond_94
    const-string p1, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzxh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzxh;-><init>(Lcom/google/android/gms/internal/ads/zzxc;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcew:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    if-eqz p4, :cond_b3

    sget-object p1, Lcom/google/android/gms/internal/ads/zzawy;->zzzb:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzxe;

    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/zzxe;-><init>(Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_ac} :catch_ad
    .catchall {:try_start_b .. :try_end_ac} :catchall_bd

    goto :goto_b3

    :catch_ad
    move-exception p1

    :try_start_ae
    const-string p2, "MobileAdsSettingManager initialization failed"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b3
    :goto_b3
    monitor-exit p3

    return-void

    :cond_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_bd
    move-exception p1

    monitor-exit p3
    :try_end_bf
    .catchall {:try_start_ae .. :try_end_bf} :catchall_bd

    throw p1
.end method

.method final synthetic zza(Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcew:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    return-void
.end method

.method public final zzos()F
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_7

    return v1

    :cond_7
    :try_start_7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwb;->zzos()F

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    const-string v2, "Unable to get app volume."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    return v1
.end method

.method public final zzot()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxc;->zzcet:Lcom/google/android/gms/internal/ads/zzwb;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwb;->zzot()Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    const-string v2, "Unable to get app mute state."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return v1
.end method

###### Class com.google.android.gms.internal.ads.zzxe (com.google.android.gms.internal.ads.zzxe)
.class final synthetic Lcom/google/android/gms/internal/ads/zzxe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcez:Lcom/google/android/gms/internal/ads/zzxc;

.field private final zzcfa:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxe;->zzcez:Lcom/google/android/gms/internal/ads/zzxc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxe;->zzcfa:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxe;->zzcez:Lcom/google/android/gms/internal/ads/zzxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxe;->zzcfa:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxc;->zza(Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzxf (com.google.android.gms.internal.ads.zzxf)
.class final synthetic Lcom/google/android/gms/internal/ads/zzxf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcez:Lcom/google/android/gms/internal/ads/zzxc;

.field private final zzcfb:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzxc;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzcez:Lcom/google/android/gms/internal/ads/zzxc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzcfb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzcez:Lcom/google/android/gms/internal/ads/zzxc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzcfb:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxc;->getRewardedVideoAdInstance(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzxh (com.google.android.gms.internal.ads.zzxh)
.class final synthetic Lcom/google/android/gms/internal/ads/zzxh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/initialization/InitializationStatus;


# instance fields
.field private final zzcez:Lcom/google/android/gms/internal/ads/zzxc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzxc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzcez:Lcom/google/android/gms/internal/ads/zzxc;

    return-void
.end method


# virtual methods
.method public final getAdapterStatusMap()Ljava/util/Map;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxh;->zzcez:Lcom/google/android/gms/internal/ads/zzxc;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzxg;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzxg;-><init>(Lcom/google/android/gms/internal/ads/zzxc;)V

    const-string v0, "com.google.android.gms.ads.MobileAds"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
