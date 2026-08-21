###### Class com.google.android.exoplayer2.scheduler.Requirements (com.google.android.exoplayer2.scheduler.Requirements)
.class public final Lcom/google/android/exoplayer2/scheduler/Requirements;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/scheduler/Requirements$NetworkType;
    }
.end annotation


# static fields
.field private static final DEVICE_CHARGING:I = 0x10

.field private static final DEVICE_IDLE:I = 0x8

.field public static final NETWORK_TYPE_ANY:I = 0x1

.field private static final NETWORK_TYPE_MASK:I = 0x7

.field public static final NETWORK_TYPE_METERED:I = 0x4

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_NOT_ROAMING:I = 0x3

.field private static final NETWORK_TYPE_STRINGS:[Ljava/lang/String; = null

.field public static final NETWORK_TYPE_UNMETERED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Requirements"


# instance fields
.field private final requirements:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    return-void
.end method

.method public constructor <init>(IZZ)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    const/16 p2, 0x10

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    :goto_7
    or-int/2addr p1, p2

    if-eqz p3, :cond_c

    const/16 v0, 0x8

    :cond_c
    or-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    return-void
.end method

.method private checkChargingRequirement(Landroid/content/Context;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isChargingRequired()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_18

    return v0

    :cond_18
    const/4 v2, -0x1

    const-string v3, "status"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_25

    const/4 v2, 0x5

    if-ne p1, v2, :cond_26

    :cond_25
    const/4 v0, 0x1

    :cond_26
    return v0
.end method

.method private checkIdleRequirement(Landroid/content/Context;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isIdleRequired()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1c

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    goto :goto_2f

    :cond_1c
    const/16 v2, 0x14

    if-lt v0, v2, :cond_27

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_2f

    :cond_27
    invoke-virtual {p1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1
.end method

.method private static checkInternetConnectivity(Landroid/net/ConnectivityManager;)Z
    .registers 4

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_15

    const-string p0, "No active network."

    invoke-static {p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->logd(Ljava/lang/String;)V

    return v2

    :cond_15
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_23

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_24

    :cond_23
    const/4 v2, 0x1

    :cond_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network capability validated: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->logd(Ljava/lang/String;)V

    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method private checkNetworkRequirements(Landroid/content/Context;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->getRequiredNetworkType()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v2, :cond_6c

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_6c

    :cond_1e
    invoke-static {p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->checkInternetConnectivity(Landroid/net/ConnectivityManager;)Z

    move-result v4

    if-nez v4, :cond_25

    return v3

    :cond_25
    if-ne v0, v1, :cond_28

    return v1

    :cond_28
    const/4 v3, 0x3

    if-ne v0, v3, :cond_45

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roaming: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/scheduler/Requirements;->logd(Ljava/lang/String;)V

    xor-int/2addr p1, v1

    return p1

    :cond_45
    invoke-static {p1, v2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)Z

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metered network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/scheduler/Requirements;->logd(Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne v0, v2, :cond_62

    xor-int/2addr p1, v1

    return p1

    :cond_62
    const/4 v1, 0x4

    if-ne v0, v1, :cond_66

    return p1

    :cond_66
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_6c
    :goto_6c
    const-string p1, "No network info or no connection."

    invoke-static {p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->logd(Ljava/lang/String;)V

    return v3
.end method

.method private static isActiveNetworkMetered(Landroid/net/ConnectivityManager;Landroid/net/NetworkInfo;)Z
    .registers 4

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    return p0

    :cond_b
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1a

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public checkRequirements(Landroid/content/Context;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->checkNetworkRequirements(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->checkChargingRequirement(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/scheduler/Requirements;->checkIdleRequirement(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public getRequiredNetworkType()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getRequirementsData()I
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    return v0
.end method

.method public isChargingRequired()Z
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isIdleRequired()Z
    .registers 2

    iget v0, p0, Lcom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.exoplayer2.scheduler.Requirements.NetworkType (com.google.android.exoplayer2.scheduler.Requirements$NetworkType)
.class public interface abstract annotation Lcom/google/android/exoplayer2/scheduler/Requirements$NetworkType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/scheduler/Requirements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "NetworkType"
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
