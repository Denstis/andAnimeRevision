###### Class com.google.android.gms.internal.ads.zzajp (com.google.android.gms.internal.ads.zzajp)
.class public final Lcom/google/android/gms/internal/ads/zzajp;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zzdbu:Lcom/google/android/gms/internal/ads/zzajp;


# instance fields
.field private zzdbv:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbv:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V
    .registers 4

    :try_start_0
    const-string v0, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager"

    sget-object v1, Lcom/google/android/gms/internal/ads/zzajq;->zzbty:Lcom/google/android/gms/internal/ads/zzaxk;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaxh;->zza(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbed;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajm;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzajm;-><init>(Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    invoke-interface {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbed;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbeb;)V
    :try_end_16
    .catch Lcom/google/android/gms/internal/ads/zzaxj; {:try_start_0 .. :try_end_16} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_16} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    goto :goto_1c

    :catch_19
    move-exception p0

    goto :goto_1c

    :catch_1b
    move-exception p0

    :goto_1c
    const-string p1, "#007 Could not call remote method."

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic zzd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzza;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcjn:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcjm:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    :goto_2b
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "measurementEnabled"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "FA-Ads"

    const-string v2, "am"

    invoke-static {p0, v0, v2, p1, v1}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzajp;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    return-void
.end method

.method private static zzn(Landroid/content/Context;)Z
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v0, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_9} :catch_b

    const/4 p0, 0x1

    return p0

    :catch_b
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzo(Landroid/content/Context;)V
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzza;->initialize(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcjr:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzajp;->zzn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {p0}, Lcom/google/android/gms/measurement/api/AppMeasurementSdk;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/api/AppMeasurementSdk;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzajp;->zza(Landroid/content/Context;Lcom/google/android/gms/measurement/api/AppMeasurementSdk;)V

    :cond_22
    return-void
.end method

.method public static zzrn()Lcom/google/android/gms/internal/ads/zzajp;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbu:Lcom/google/android/gms/internal/ads/zzajp;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzajp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbu:Lcom/google/android/gms/internal/ads/zzajp;

    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbu:Lcom/google/android/gms/internal/ads/zzajp;

    return-object v0
.end method


# virtual methods
.method public final zzc(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajo;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajo;-><init>(Lcom/google/android/gms/internal/ads/zzajp;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public final zzm(Landroid/content/Context;)Ljava/lang/Thread;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzdbv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzajr;-><init>(Lcom/google/android/gms/internal/ads/zzajp;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzajo (com.google.android.gms.internal.ads.zzajo)
.class final synthetic Lcom/google/android/gms/internal/ads/zzajo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcfb:Landroid/content/Context;

.field private final zzdbs:Lcom/google/android/gms/internal/ads/zzajp;

.field private final zzdbt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajp;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzdbs:Lcom/google/android/gms/internal/ads/zzajp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzcfb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzdbt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzcfb:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajo;->zzdbt:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzajp;->zzd(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzajr (com.google.android.gms.internal.ads.zzajr)
.class final synthetic Lcom/google/android/gms/internal/ads/zzajr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcfb:Landroid/content/Context;

.field private final zzdbs:Lcom/google/android/gms/internal/ads/zzajp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzajp;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajr;->zzdbs:Lcom/google/android/gms/internal/ads/zzajp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajr;->zzcfb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajr;->zzcfb:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzajp;->zzo(Landroid/content/Context;)V

    return-void
.end method
