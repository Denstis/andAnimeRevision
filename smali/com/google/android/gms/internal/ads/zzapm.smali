###### Class com.google.android.gms.internal.ads.zzapm (com.google.android.gms.internal.ads.zzapm)
.class public final Lcom/google/android/gms/internal/ads/zzapm;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzbog:F

.field private zzdgn:I

.field private zzdgo:I

.field private zzdme:I

.field private zzdmf:Z

.field private zzdmg:Z

.field private zzdmh:Ljava/lang/String;

.field private zzdmi:Ljava/lang/String;

.field private zzdmj:Z

.field private final zzdmk:Z

.field private zzdml:Z

.field private zzdmm:Z

.field private zzdmn:Z

.field private zzdmo:Ljava/lang/String;

.field private zzdmp:Ljava/lang/String;

.field private zzdmq:Ljava/lang/String;

.field private zzdmr:I

.field private zzdms:I

.field private zzdmt:I

.field private zzdmu:I

.field private zzdmv:I

.field private zzdmw:I

.field private zzdmx:D

.field private zzdmy:Z

.field private zzdmz:Z

.field private zzdna:I

.field private zzdnb:Ljava/lang/String;

.field private zzdnc:Ljava/lang/String;

.field private zzdnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapm;->zzu(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapm;->zzv(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapm;->zzw(Landroid/content/Context;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "geo:0,0?q=donuts"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzapm;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmf:Z

    const-string v2, "http://www.google.com"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzapm;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmg:Z

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmi:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawy;->zzwj()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmj:Z

    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isLatchsky(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmk:Z

    invoke-static {p1}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdml:Z

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmo:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzapm;->zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmp:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzapm;->zzx(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmq:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_63

    return-void

    :cond_63
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    if-nez p1, :cond_6a

    return-void

    :cond_6a
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzbog:F

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdgn:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdgo:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzapj;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapm;->zzu(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapm;->zzv(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzapm;->zzw(Landroid/content/Context;)V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdnb:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdnc:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwichMR1()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaal;->zzk(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdnd:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdmf:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmf:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdmg:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmg:Z

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdmi:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmi:Ljava/lang/String;

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdmj:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmj:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdmk:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmk:Z

    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdml:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdml:Z

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdmo:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmo:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdmp:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmp:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdmq:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmq:Ljava/lang/String;

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzbog:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzbog:F

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdgn:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdgn:I

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzapj;->zzdgo:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdgo:I

    return-void
.end method

.method private static zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    return-object p0

    :catchall_12
    move-exception p0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object p1

    const-string v0, "DeviceInfo.getResolveInfo"

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Landroid/content/Context;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 5

    const-string v0, "market://details?id=com.google.android.gms.ads"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzapm;->zza(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    :cond_a
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p1, :cond_f

    return-object v0

    :cond_f
    :try_start_f
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3f

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_3e} :catch_3f

    return-object p0

    :catch_3f
    :cond_3f
    return-object v0
.end method

.method private final zzu(Landroid/content/Context;)V
    .registers 5

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const/4 v0, 0x2

    if-eqz p1, :cond_3b

    :try_start_b
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdme:I

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmm:Z

    invoke-virtual {p1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmn:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmr:I

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmv:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmw:I
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_31

    return-void

    :catchall_31
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v1

    const-string v2, "DeviceInfo.gatherAudioInfo"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_3b
    const/4 p1, -0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdme:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmm:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmn:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmv:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmw:I

    return-void
.end method

.method private final zzv(Landroid/content/Context;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmh:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmt:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmu:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdms:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmz:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdna:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzaul;->zzq(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5b

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    const/4 p1, 0x0

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdms:I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdna:I

    goto :goto_4f

    :cond_4d
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdms:I

    :goto_4f
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_5b

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmz:Z

    :cond_5b
    return-void
.end method

.method private final zzw(Landroid/content/Context;)V
    .registers 7

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    const/4 v1, -0x1

    const-string v2, "status"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "scale"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    int-to-float v1, v3

    int-to-float p1, p1

    div-float/2addr v1, p1

    float-to-double v3, v1

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmx:D

    const/4 p1, 0x2

    if-eq v2, p1, :cond_2e

    const/4 p1, 0x5

    if-ne v2, p1, :cond_2f

    :cond_2e
    const/4 v0, 0x1

    :cond_2f
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmy:Z

    return-void

    :cond_32
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmx:D

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmy:Z

    return-void
.end method

.method private static zzx(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    const-string v1, "com.android.vending"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_32

    iget v1, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    return-object p0

    :catch_32
    :cond_32
    return-object v0
.end method


# virtual methods
.method public final zzti()Lcom/google/android/gms/internal/ads/zzapj;
    .registers 36

    move-object/from16 v0, p0

    new-instance v32, Lcom/google/android/gms/internal/ads/zzapj;

    move-object/from16 v1, v32

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdme:I

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmf:Z

    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmg:Z

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmh:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmi:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmj:Z

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmk:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdml:Z

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmm:Z

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmn:Z

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmo:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmp:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmq:Ljava/lang/String;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmr:I

    move-object/from16 v33, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdms:I

    move/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmt:I

    move/from16 v17, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmu:I

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmv:I

    move/from16 v19, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmw:I

    move/from16 v20, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzbog:F

    move/from16 v21, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdgn:I

    move/from16 v22, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdgo:I

    move/from16 v23, v1

    move/from16 v34, v2

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmx:D

    move-wide/from16 v24, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmy:Z

    move/from16 v26, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdmz:Z

    move/from16 v27, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdna:I

    move/from16 v28, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdnb:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdnd:Z

    move/from16 v30, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzapm;->zzdnc:Ljava/lang/String;

    move-object/from16 v31, v1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct/range {v1 .. v31}, Lcom/google/android/gms/internal/ads/zzapj;-><init>(IZZLjava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIFIIDZZILjava/lang/String;ZLjava/lang/String;)V

    return-object v32
.end method
