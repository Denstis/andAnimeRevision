###### Class com.google.android.gms.internal.ads.zzaur (com.google.android.gms.internal.ads.zzaur)
.class public Lcom/google/android/gms/internal/ads/zzaur;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaut;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaur;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbbw;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbbw;->onPause()V

    const/4 p0, 0x1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzbbw;)Z
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbbw;->onResume()V

    const/4 p0, 0x1

    return p0
.end method

.method public static zzco(I)Lcom/google/android/gms/internal/ads/zzaur;
    .registers 2

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    new-instance p0, Lcom/google/android/gms/internal/ads/zzavc;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzavc;-><init>()V

    return-object p0

    :cond_a
    const/16 v0, 0x1a

    if-lt p0, v0, :cond_14

    new-instance p0, Lcom/google/android/gms/internal/ads/zzauz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauz;-><init>()V

    return-object p0

    :cond_14
    const/16 v0, 0x18

    if-lt p0, v0, :cond_1e

    new-instance p0, Lcom/google/android/gms/internal/ads/zzava;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzava;-><init>()V

    return-object p0

    :cond_1e
    const/16 v0, 0x15

    if-lt p0, v0, :cond_28

    new-instance p0, Lcom/google/android/gms/internal/ads/zzaux;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaux;-><init>()V

    return-object p0

    :cond_28
    const/16 v0, 0x13

    if-lt p0, v0, :cond_32

    new-instance p0, Lcom/google/android/gms/internal/ads/zzauy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauy;-><init>()V

    return-object p0

    :cond_32
    const/16 v0, 0x12

    if-lt p0, v0, :cond_3c

    new-instance p0, Lcom/google/android/gms/internal/ads/zzauv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauv;-><init>()V

    return-object p0

    :cond_3c
    const/16 v0, 0x11

    if-lt p0, v0, :cond_46

    new-instance p0, Lcom/google/android/gms/internal/ads/zzauw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzauw;-><init>()V

    return-object p0

    :cond_46
    new-instance p0, Lcom/google/android/gms/internal/ads/zzaur;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaur;-><init>()V

    return-object p0
.end method

.method public static zzvs()Z
    .registers 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string p1, ""

    return-object p1
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public zza(Landroid/content/ContentResolver;)I
    .registers 4

    const-string v0, "wifi_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .registers 5

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p3
.end method

.method public zza(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    new-instance p3, Landroid/webkit/WebResourceResponse;

    invoke-direct {p3, p1, p2, p6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p3
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzsd;Z)Lcom/google/android/gms/internal/ads/zzbbv;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcv;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbcv;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;Lcom/google/android/gms/internal/ads/zzsd;Z)V

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzsv;
    .registers 3

    sget-object p1, Lcom/google/android/gms/internal/ads/zzsv;->zzbvu:Lcom/google/android/gms/internal/ads/zzsv;

    return-object p1
.end method

.method public zza(Landroid/app/Activity;Landroid/content/res/Configuration;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauu;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzauu;-><init>(Landroid/content/Context;Landroid/webkit/WebSettings;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzawq;->zza(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p2, p1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public zzb(Landroid/content/ContentResolver;)I
    .registers 4

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public zzbc(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public zzbd(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaur;->zzvs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    return-object p1

    :catchall_10
    move-exception p1

    const-string v0, "Failed to obtain CookieManager."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v0

    const-string v2, "ApiLevelUtil.getCookieManager"

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public zzg(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public zzvq()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public zzvr()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public zzvt()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zzvu()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

###### Class com.google.android.gms.internal.ads.zzauu (com.google.android.gms.internal.ads.zzauu)
.class final synthetic Lcom/google/android/gms/internal/ads/zzauu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzdpy:Landroid/content/Context;

.field private final zzdtc:Landroid/webkit/WebSettings;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebSettings;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauu;->zzdpy:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzauu;->zzdtc:Landroid/webkit/WebSettings;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauu;->zzdpy:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzauu;->zzdtc:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    :cond_1e
    const-string v2, "com.google.android.gms.ads.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
