###### Class com.google.android.gms.measurement.module.Analytics (com.google.android.gms.measurement.module.Analytics)
.class public Lcom/google/android/gms/measurement/module/Analytics;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/module/Analytics$Param;,
        Lcom/google/android/gms/measurement/module/Analytics$Event;
    }
.end annotation


# static fields
.field public static final CRASH_ORIGIN:Ljava/lang/String; = "crash"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field public static final FCM_ORIGIN:Ljava/lang/String; = "fcm"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field public static final FIAM_ORIGIN:Ljava/lang/String; = "fiam"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field private static volatile zza:Lcom/google/android/gms/measurement/module/Analytics;


# instance fields
.field private final zzb:Lcom/google/android/gms/measurement/internal/zzga;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzga;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/module/Analytics;->zzb:Lcom/google/android/gms/measurement/internal/zzga;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/module/Analytics;
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation

    sget-object v0, Lcom/google/android/gms/measurement/module/Analytics;->zza:Lcom/google/android/gms/measurement/module/Analytics;

    if-nez v0, :cond_1c

    const-class v0, Lcom/google/android/gms/measurement/module/Analytics;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/measurement/module/Analytics;->zza:Lcom/google/android/gms/measurement/module/Analytics;

    if-nez v1, :cond_17

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/gms/measurement/internal/zzga;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzv;)Lcom/google/android/gms/measurement/internal/zzga;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/measurement/module/Analytics;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/module/Analytics;-><init>(Lcom/google/android/gms/measurement/internal/zzga;)V

    sput-object v1, Lcom/google/android/gms/measurement/module/Analytics;->zza:Lcom/google/android/gms/measurement/module/Analytics;

    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p0

    :cond_1c
    :goto_1c
    sget-object p0, Lcom/google/android/gms/measurement/module/Analytics;->zza:Lcom/google/android/gms/measurement/module/Analytics;

    return-object p0
.end method

###### Class com.google.android.gms.measurement.module.Analytics.Event (com.google.android.gms.measurement.module.Analytics$Event)
.class public final Lcom/google/android/gms/measurement/module/Analytics$Event;
.super Lcom/google/android/gms/measurement/internal/zzgv;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/module/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static final AD_REWARD:Ljava/lang/String; = "_ar"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field public static final APP_EXCEPTION:Ljava/lang/String; = "_ae"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgv;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.measurement.module.Analytics.Param (com.google.android.gms.measurement.module.Analytics$Param)
.class public final Lcom/google/android/gms/measurement/module/Analytics$Param;
.super Lcom/google/android/gms/measurement/internal/zzgy;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/module/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Param"
.end annotation


# static fields
.field public static final FATAL:Ljava/lang/String; = "fatal"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "type"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzgy;-><init>()V

    return-void
.end method
