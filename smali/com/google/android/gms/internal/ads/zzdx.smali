###### Class com.google.android.gms.internal.ads.zzdx (com.google.android.gms.internal.ads.zzdx)
.class public Lcom/google/android/gms/internal/ads/zzdx;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdx$zza;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "zzdx"


# instance fields
.field protected zzlk:Landroid/content/Context;

.field private volatile zzwo:Z

.field private zzxr:Ljava/util/concurrent/ExecutorService;

.field private zzxs:Ldalvik/system/DexClassLoader;

.field private zzxt:Lcom/google/android/gms/internal/ads/zzdh;

.field private zzxu:[B

.field private volatile zzxv:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private zzxw:Ljava/util/concurrent/Future;

.field private zzxx:Z

.field private volatile zzxy:Lcom/google/android/gms/internal/ads/zzbo$zza;

.field private zzxz:Ljava/util/concurrent/Future;

.field private zzya:Lcom/google/android/gms/internal/ads/zzda;

.field protected zzyb:Z

.field private zzyc:Z

.field private zzyd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfj;",
            ">;"
        }
    .end annotation
.end field

.field private zzye:Z

.field private zzyf:Z

.field private zzyg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxv:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzwo:Z

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxw:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxy:Lcom/google/android/gms/internal/ads/zzbo$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxz:Ljava/util/concurrent/Future;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyb:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyc:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzye:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyf:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyg:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxx:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxx:Z

    if-eqz v0, :cond_29

    move-object p1, v2

    :cond_29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyd:Ljava/util/Map;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdx;Lcom/google/android/gms/internal/ads/zzbo$zza;)Lcom/google/android/gms/internal/ads/zzbo$zza;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxy:Lcom/google/android/gms/internal/ads/zzbo$zza;

    return-object p1
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzdx;
    .registers 13

    const-string v0, "%s/%s.dex"

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdx;-><init>(Landroid/content/Context;)V

    :try_start_7
    new-instance p0, Lcom/google/android/gms/internal/ads/zzea;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzea;-><init>()V

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzxr:Ljava/util/concurrent/ExecutorService;

    iput-boolean p3, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzwo:Z

    if-eqz p3, :cond_23

    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzxr:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdz;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/zzdz;-><init>(Lcom/google/android/gms/internal/ads/zzdx;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzxw:Ljava/util/concurrent/Future;

    :cond_23
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzxr:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzeb;

    invoke-direct {p3, v1}, Lcom/google/android/gms/internal/ads/zzeb;-><init>(Lcom/google/android/gms/internal/ads/zzdx;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_7 .. :try_end_2d} :catch_157

    const/4 p0, 0x1

    const/4 p3, 0x0

    :try_start_2f
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_3d

    const/4 v3, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v3, 0x0

    :goto_3e
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzyb:Z

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzyc:Z
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4d

    :catchall_4d
    :try_start_4d
    invoke-virtual {v1, p3, p0}, Lcom/google/android/gms/internal/ads/zzdx;->zza(IZ)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzee;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_71

    sget-object v2, Lcom/google/android/gms/internal/ads/zzza;->zzcnj:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_69

    goto :goto_71

    :cond_69
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task Context initialization must not be called from the UI thread."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_71
    :goto_71
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdh;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzdh;-><init>(Ljava/security/SecureRandom;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzxt:Lcom/google/android/gms/internal/ads/zzdh;
    :try_end_79
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_4d .. :try_end_79} :catch_157

    :try_start_79
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzxt:Lcom/google/android/gms/internal/ads/zzdh;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzdh;->zzaq(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzxu:[B
    :try_end_81
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_79 .. :try_end_81} :catch_150
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_79 .. :try_end_81} :catch_157

    :try_start_81
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_9a

    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    const-string v2, "dex"

    invoke-virtual {p1, v2, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_94

    goto :goto_9a

    :cond_94
    new-instance p0, Lcom/google/android/gms/internal/ads/zzdw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdw;-><init>()V

    throw p0

    :cond_9a
    :goto_9a
    const-string v2, "1561154238473"

    new-instance v4, Ljava/io/File;

    const-string v5, "%s/%s.jar"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p1, v7, p3

    aput-object v2, v7, p0

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_cb

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzxt:Lcom/google/android/gms/internal/ads/zzdh;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzxu:[B

    invoke-virtual {v5, v7, p2}, Lcom/google/android/gms/internal/ads/zzdh;->zza([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    array-length v7, p2

    invoke-virtual {v5, p2, p3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_cb
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_ce
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_ce} :catch_149
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_ce} :catch_142
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_81 .. :try_end_ce} :catch_13b
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_ce} :catch_134
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_81 .. :try_end_ce} :catch_157

    :try_start_ce
    new-instance p2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {p2, v5, v7, v3, v8}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p2, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzxs:Ldalvik/system/DexClassLoader;
    :try_end_e3
    .catchall {:try_start_ce .. :try_end_e3} :catchall_11f

    :try_start_e3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;)V

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zza(Ljava/io/File;Ljava/lang/String;)V

    new-array p2, v6, [Ljava/lang/Object;

    aput-object p1, p2, p3

    aput-object v2, p2, p0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzar(Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/io/FileNotFoundException; {:try_start_e3 .. :try_end_f6} :catch_149
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_f6} :catch_142
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_e3 .. :try_end_f6} :catch_13b
    .catch Ljava/lang/NullPointerException; {:try_start_e3 .. :try_end_f6} :catch_134
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_e3 .. :try_end_f6} :catch_157

    :try_start_f6
    iget-boolean p1, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzyg:Z

    if-nez p1, :cond_115

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzdx$zza;

    invoke-direct {p3, v1, v3}, Lcom/google/android/gms/internal/ads/zzdx$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdx;Lcom/google/android/gms/internal/ads/zzea;)V

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean p0, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzyg:Z

    :cond_115
    new-instance p1, Lcom/google/android/gms/internal/ads/zzda;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/ads/zzda;-><init>(Lcom/google/android/gms/internal/ads/zzdx;)V

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzya:Lcom/google/android/gms/internal/ads/zzda;

    iput-boolean p0, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzye:Z
    :try_end_11e
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_f6 .. :try_end_11e} :catch_157

    goto :goto_157

    :catchall_11f
    move-exception p2

    :try_start_120
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;)V

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzdx;->zza(Ljava/io/File;Ljava/lang/String;)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, p3

    aput-object v2, v3, p0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdx;->zzar(Ljava/lang/String;)V

    throw p2
    :try_end_134
    .catch Ljava/io/FileNotFoundException; {:try_start_120 .. :try_end_134} :catch_149
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_134} :catch_142
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_120 .. :try_end_134} :catch_13b
    .catch Ljava/lang/NullPointerException; {:try_start_120 .. :try_end_134} :catch_134
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_120 .. :try_end_134} :catch_157

    :catch_134
    move-exception p0

    :try_start_135
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_13b
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_142
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_149
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_150
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdw;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_157
    .catch Lcom/google/android/gms/internal/ads/zzdw; {:try_start_135 .. :try_end_157} :catch_157

    :catch_157
    :goto_157
    return-object v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdx;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdx;->zzco()V

    return-void
.end method

.method private final zza(Ljava/io/File;Ljava/lang/String;)V
    .registers 12

    const-string v0, "test"

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    const-string v6, "%s/%s.tmp"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    return-void

    :cond_1d
    new-instance v3, Ljava/io/File;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_35

    return-void

    :cond_35
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-gtz p1, :cond_40

    return-void

    :cond_40
    long-to-int p1, v5

    new-array p1, p1, [B

    const/4 v2, 0x0

    :try_start_44
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_e0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_44 .. :try_end_49} :catch_e0
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_44 .. :try_end_49} :catch_e0
    .catchall {:try_start_44 .. :try_end_49} :catchall_ce

    :try_start_49
    invoke-virtual {v5, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4d} :catch_e1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_49 .. :try_end_4d} :catch_e1
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_49 .. :try_end_4d} :catch_e1
    .catchall {:try_start_49 .. :try_end_4d} :catchall_cc

    if-gtz v6, :cond_56

    :try_start_4f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_52

    :catch_52
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;)V

    return-void

    :cond_56
    :try_start_56
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbo$zzd;->zzbb()Lcom/google/android/gms/internal/ads/zzbo$zzd$zza;

    move-result-object v0

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzbo$zzd$zza;->zzl(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzbo$zzd$zza;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbo$zzd$zza;->zzk(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzbo$zzd$zza;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxt:Lcom/google/android/gms/internal/ads/zzdh;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxu:[B

    invoke-virtual {v0, v6, p1}, Lcom/google/android/gms/internal/ads/zzdh;->zzb([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbo$zzd$zza;->zzi(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzbo$zzd$zza;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzci;->zzb([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbo$zzd$zza;->zzj(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzbo$zzd$zza;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_aa} :catch_e1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_56 .. :try_end_aa} :catch_e1
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_56 .. :try_end_aa} :catch_e1
    .catchall {:try_start_56 .. :try_end_aa} :catchall_cc

    :try_start_aa
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbo$zzd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object p2

    array-length v0, p2

    invoke-virtual {p1, p2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_bd} :catch_ca
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_aa .. :try_end_bd} :catch_ca
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_aa .. :try_end_bd} :catch_ca
    .catchall {:try_start_aa .. :try_end_bd} :catchall_c7

    :try_start_bd
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c3

    :catch_c3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;)V

    return-void

    :catchall_c7
    move-exception p2

    move-object v2, p1

    goto :goto_d0

    :catch_ca
    move-object v2, p1

    goto :goto_e1

    :catchall_cc
    move-exception p2

    goto :goto_d0

    :catchall_ce
    move-exception p2

    move-object v5, v2

    :goto_d0
    if-eqz v5, :cond_d7

    :try_start_d2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_d7

    :catch_d6
    nop

    :cond_d7
    :goto_d7
    if-eqz v2, :cond_dc

    :try_start_d9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dc

    :catch_dc
    :cond_dc
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;)V

    throw p2

    :catch_e0
    move-object v5, v2

    :catch_e1
    :goto_e1
    if-eqz v5, :cond_e8

    :try_start_e3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7

    goto :goto_e8

    :catch_e7
    nop

    :cond_e8
    :goto_e8
    if-eqz v2, :cond_ed

    :try_start_ea
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ed

    :catch_ed
    :cond_ed
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;)V

    return-void
.end method

.method private static zza(ILcom/google/android/gms/internal/ads/zzbo$zza;)Z
    .registers 6

    const/4 v0, 0x4

    if-ge p0, v0, :cond_39

    const/4 p0, 0x1

    if-nez p1, :cond_7

    return p0

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbo$zza;->zzah()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbo$zza;->zzad()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_38

    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbo$zza;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbo$zza;->zzak()Lcom/google/android/gms/internal/ads/zzbo$zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbo$zze;->zzbd()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbo$zza;->zzak()Lcom/google/android/gms/internal/ads/zzbo$zze;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbo$zze;->zzbe()J

    move-result-wide v0

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_39

    :cond_38
    :goto_38
    return p0

    :cond_39
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdx;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyf:Z

    return p1
.end method

.method private static zzar(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;)V

    return-void
.end method

.method private static zzb(Ljava/io/File;)V
    .registers 4

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdx;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "File %s not found. No need for deletion"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic zzb(ILcom/google/android/gms/internal/ads/zzbo$zza;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdx;->zza(ILcom/google/android/gms/internal/ads/zzbo$zza;)Z

    move-result p0

    return p0
.end method

.method private final zzb(Ljava/io/File;Ljava/lang/String;)Z
    .registers 12

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1b

    return v3

    :cond_1b
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    const-string p1, "%s/%s.dex"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_33

    return v3

    :cond_33
    const/4 p1, 0x0

    :try_start_34
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-gtz v1, :cond_42

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;)V

    return v3

    :cond_42
    long-to-int v1, v5

    new-array v1, v1, [B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4a} :catch_ed
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_34 .. :try_end_4a} :catch_ed
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_34 .. :try_end_4a} :catch_ed
    .catchall {:try_start_34 .. :try_end_4a} :catchall_de

    :try_start_4a
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_5e

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdx;->TAG:Ljava/lang/String;

    const-string v1, "Cannot read the cache data."

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_ee
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4a .. :try_end_5a} :catch_ee
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_4a .. :try_end_5a} :catch_ee
    .catchall {:try_start_4a .. :try_end_5a} :catchall_dc

    :try_start_5a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5d

    :catch_5d
    return v3

    :cond_5e
    :try_start_5e
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqj;->zzazb()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzbo$zzd;->zzc([BLcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzbo$zzd;

    move-result-object v1

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbo$zzd;->zzaz()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdpm;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbo$zzd;->zzay()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdpm;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbo$zzd;->zzax()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdpm;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzci;->zzb([B)[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_d5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbo$zzd;->zzba()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdpm;->toByteArray()[B

    move-result-object p2

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_a8

    goto :goto_d5

    :cond_a8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxt:Lcom/google/android/gms/internal/ads/zzdh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxu:[B

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbo$zzd;->zzax()Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpm;->toByteArray()[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v0, v6}, Lcom/google/android/gms/internal/ads/zzdh;->zza([BLjava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_c5} :catch_ee
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5e .. :try_end_c5} :catch_ee
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_5e .. :try_end_c5} :catch_ee
    .catchall {:try_start_5e .. :try_end_c5} :catchall_dc

    :try_start_c5
    array-length p1, p2

    invoke-virtual {v0, p2, v3, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c9} :catch_d3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c5 .. :try_end_c9} :catch_d3
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_c5 .. :try_end_c9} :catch_d3
    .catchall {:try_start_c5 .. :try_end_c9} :catchall_d0

    :try_start_c9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_cf

    :catch_cf
    return v4

    :catchall_d0
    move-exception p2

    move-object p1, v0

    goto :goto_e0

    :catch_d3
    move-object p1, v0

    goto :goto_ee

    :cond_d5
    :goto_d5
    :try_start_d5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdx;->zzb(Ljava/io/File;)V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_ee
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d5 .. :try_end_d8} :catch_ee
    .catch Lcom/google/android/gms/internal/ads/zzdk; {:try_start_d5 .. :try_end_d8} :catch_ee
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_dc

    :try_start_d8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_db} :catch_db

    :catch_db
    return v3

    :catchall_dc
    move-exception p2

    goto :goto_e0

    :catchall_de
    move-exception p2

    move-object v5, p1

    :goto_e0
    if-eqz v5, :cond_e7

    :try_start_e2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6

    goto :goto_e7

    :catch_e6
    nop

    :cond_e7
    :goto_e7
    if-eqz p1, :cond_ec

    :try_start_e9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ec} :catch_ec

    :catch_ec
    :cond_ec
    throw p2

    :catch_ed
    move-object v5, p1

    :catch_ee
    :goto_ee
    if-eqz v5, :cond_f5

    :try_start_f0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f3} :catch_f4

    goto :goto_f5

    :catch_f4
    nop

    :cond_f5
    :goto_f5
    if-eqz p1, :cond_fa

    :try_start_f7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fa

    :catch_fa
    :cond_fa
    return v3
.end method

.method private final zzco()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxv:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxx:Z

    if-eqz v0, :cond_14

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxv:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_14
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxv:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-void
.end method

.method private final zzcp()Lcom/google/android/gms/internal/ads/zzbo$zza;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzczd;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object v0
    :try_end_23
    .catchall {:try_start_0 .. :try_end_23} :catchall_24

    goto :goto_25

    :catchall_24
    const/4 v0, 0x0

    :goto_25
    return-object v0
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzye:Z

    return v0
.end method

.method final zza(IZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyc:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxr:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzec;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzec;-><init>(Lcom/google/android/gms/internal/ads/zzdx;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p1, :cond_14

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxz:Ljava/util/concurrent/Future;

    :cond_14
    return-void
.end method

.method public final varargs zza(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyd:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyd:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(Lcom/google/android/gms/internal/ads/zzdx;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method final zzb(IZ)Lcom/google/android/gms/internal/ads/zzbo$zza;
    .registers 3

    if-lez p1, :cond_a

    if-eqz p2, :cond_a

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_a

    :catch_a
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdx;->zzcp()Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zzbz()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzya:Lcom/google/android/gms/internal/ads/zzda;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzda;->zzbz()I

    move-result v0

    goto :goto_b

    :cond_9
    const/high16 v0, -0x80000000

    :goto_b
    return v0
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyd:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfj;

    if-nez p1, :cond_11

    const/4 p1, 0x0

    return-object p1

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzcz()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public final zzce()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxr:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final zzcf()Ldalvik/system/DexClassLoader;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxs:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final zzcg()Lcom/google/android/gms/internal/ads/zzdh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxt:Lcom/google/android/gms/internal/ads/zzdh;

    return-object v0
.end method

.method public final zzch()[B
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxu:[B

    return-object v0
.end method

.method public final zzci()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyb:Z

    return v0
.end method

.method public final zzcj()Lcom/google/android/gms/internal/ads/zzda;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzya:Lcom/google/android/gms/internal/ads/zzda;

    return-object v0
.end method

.method public final zzck()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyc:Z

    return v0
.end method

.method public final zzcl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzyf:Z

    return v0
.end method

.method public final zzcm()Lcom/google/android/gms/internal/ads/zzbo$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxy:Lcom/google/android/gms/internal/ads/zzbo$zza;

    return-object v0
.end method

.method public final zzcn()Ljava/util/concurrent/Future;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxz:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final zzcq()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzwo:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxv:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxv:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxw:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_21

    const-wide/16 v2, 0x7d0

    :try_start_13
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxw:Ljava/util/concurrent/Future;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_21
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_1a} :catch_21
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxw:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :catch_21
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdx;->zzxv:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzdx.zza (com.google.android.gms.internal.ads.zzdx$zza)
.class final Lcom/google/android/gms/internal/ads/zzdx$zza;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation


# instance fields
.field private final synthetic zzyj:Lcom/google/android/gms/internal/ads/zzdx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdx$zza;->zzyj:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;Lcom/google/android/gms/internal/ads/zzea;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdx$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdx;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdx$zza;->zzyj:Lcom/google/android/gms/internal/ads/zzdx;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdx;->zza(Lcom/google/android/gms/internal/ads/zzdx;Z)Z

    return-void

    :cond_13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdx$zza;->zzyj:Lcom/google/android/gms/internal/ads/zzdx;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdx;->zza(Lcom/google/android/gms/internal/ads/zzdx;Z)Z

    :cond_25
    return-void
.end method
