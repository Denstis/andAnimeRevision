###### Class com.google.android.gms.internal.ads.zzyw (com.google.android.gms.internal.ads.zzyw)
.class public final Lcom/google/android/gms/internal/ads/zzyw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private metaData:Landroid/os/Bundle;

.field private final zzcfw:Landroid/os/ConditionVariable;

.field private volatile zzcfx:Z
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzcfy:Landroid/content/SharedPreferences;

.field private zzcfz:Landroid/content/Context;

.field private zzcga:Lorg/json/JSONObject;

.field private volatile zzye:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->lock:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfw:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzye:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfx:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfy:Landroid/content/SharedPreferences;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->metaData:Landroid/os/Bundle;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcga:Lorg/json/JSONObject;

    return-void
.end method

.method private final zzpt()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfy:Landroid/content/SharedPreferences;

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfz:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzyy;-><init>(Lcom/google/android/gms/internal/ads/zzyw;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzawq;->zza(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcga:Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;)V
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzye:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzye:Z

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfx:Z

    const/4 v2, 0x1

    if-nez v1, :cond_15

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfx:Z

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1d

    move-object v1, p1

    goto :goto_21

    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :goto_21
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfz:Landroid/content/Context;
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_87

    :try_start_23
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfz:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfz:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->metaData:Landroid/os/Bundle;
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_39} :catch_39
    .catch Ljava/lang/NullPointerException; {:try_start_23 .. :try_end_39} :catch_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_87

    :catch_39
    const/4 v1, 0x0

    :try_start_3a
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_49

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_7e

    if-nez v3, :cond_49

    move-object v3, p1

    :cond_49
    if-nez v3, :cond_54

    :try_start_4b
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfx:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfw:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_87

    return-void

    :cond_54
    :try_start_54
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzol()Lcom/google/android/gms/internal/ads/zzyx;

    const-string p1, "google_ads_flags"

    invoke-virtual {v3, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfy:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfy:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_68

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfy:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_68
    new-instance p1, Lcom/google/android/gms/internal/ads/zzzb;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzzb;-><init>(Lcom/google/android/gms/internal/ads/zzyw;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaar;->zza(Lcom/google/android/gms/internal/ads/zzaao;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyw;->zzpt()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzye:Z
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_7e

    :try_start_75
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfx:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfw:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :catchall_7e
    move-exception p1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfx:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfw:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw p1

    :catchall_87
    move-exception p1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_75 .. :try_end_89} :catchall_87

    throw p1
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    const-string p1, "flag_configuration"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyw;->zzpt()V

    :cond_b
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzyp<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfw:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfx:Z

    if-eqz v1, :cond_13

    monitor-exit v0

    goto :goto_1e

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Flags.initialize() was not called!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    :goto_1e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzye:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfy:Landroid/content/SharedPreferences;

    if-nez v0, :cond_33

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_29
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzye:Z

    if-eqz v1, :cond_6e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfy:Landroid/content/SharedPreferences;

    if-nez v1, :cond_32

    goto :goto_6e

    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_74

    :cond_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyp;->getSource()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_43

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyp;->zzpq()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzyp;->zza(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyp;->getSource()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcga:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyp;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcga:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzyp;->zza(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfz:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzyz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzyz;-><init>(Lcom/google/android/gms/internal/ads/zzyw;Lcom/google/android/gms/internal/ads/zzyp;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzawq;->zza(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6e
    :goto_6e
    :try_start_6e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzyp;->zzpq()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_74
    move-exception p1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_74

    throw p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfy:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzyp;->zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzpu()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyw;->zzcfy:Landroid/content/SharedPreferences;

    const-string v1, "flag_configuration"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzyy (com.google.android.gms.internal.ads.zzyy)
.class final synthetic Lcom/google/android/gms/internal/ads/zzyy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzcgb:Lcom/google/android/gms/internal/ads/zzyw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzyw;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzcgb:Lcom/google/android/gms/internal/ads/zzyw;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyy;->zzcgb:Lcom/google/android/gms/internal/ads/zzyw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzpu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzyz (com.google.android.gms.internal.ads.zzyz)
.class final synthetic Lcom/google/android/gms/internal/ads/zzyz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzcgb:Lcom/google/android/gms/internal/ads/zzyw;

.field private final zzcgc:Lcom/google/android/gms/internal/ads/zzyp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzyw;Lcom/google/android/gms/internal/ads/zzyp;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyz;->zzcgb:Lcom/google/android/gms/internal/ads/zzyw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzyz;->zzcgc:Lcom/google/android/gms/internal/ads/zzyp;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyz;->zzcgb:Lcom/google/android/gms/internal/ads/zzyw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyz;->zzcgc:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zze(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
