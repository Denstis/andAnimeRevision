###### Class com.google.android.gms.internal.ads.zzadt (com.google.android.gms.internal.ads.zzadt)
.class public final Lcom/google/android/gms/internal/ads/zzadt;
.super Lcom/google/android/gms/internal/ads/zzacx;
.source ""


# instance fields
.field private final zzcwz:Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzacx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadt;->zzcwz:Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzadt;)Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzadt;->zzcwz:Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 6

    const-string v0, ""

    if-eqz p1, :cond_57

    if-nez p2, :cond_7

    goto :goto_57

    :cond_7
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    :try_start_13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzvl;->zzjw()Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zztt;

    if-eqz v2, :cond_31

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzvl;->zzjw()Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zztt;

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zztt;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v2

    goto :goto_29

    :cond_28
    move-object v2, p2

    :goto_29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    :try_start_31
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzvl;->zzjv()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zzuc;

    if-eqz v2, :cond_4d

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzvl;->zzjv()Lcom/google/android/gms/internal/ads/zzvt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzuc;

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzuc;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object p2

    :cond_45
    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception p2

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    sget-object p2, Lcom/google/android/gms/internal/ads/zzawy;->zzzb:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzads;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzads;-><init>(Lcom/google/android/gms/internal/ads/zzadt;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;Lcom/google/android/gms/internal/ads/zzvl;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_57
    :goto_57
    return-void
.end method
