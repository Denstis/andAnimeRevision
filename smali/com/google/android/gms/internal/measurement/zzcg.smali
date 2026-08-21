###### Class com.google.android.gms.internal.measurement.zzcg (com.google.android.gms.internal.measurement.zzcg)
.class final Lcom/google/android/gms/internal/measurement/zzcg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcb;


# static fields
.field private static zza:Lcom/google/android/gms/internal/measurement/zzcg;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcg;->zzb:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcg;->zzc:Landroid/database/ContentObserver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcg;->zzb:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzci;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/measurement/zzci;-><init>(Lcom/google/android/gms/internal/measurement/zzcg;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcg;->zzc:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzbw;->zza:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcg;->zzc:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/zzcg;
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/measurement/zzcg;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzcg;

    if-nez v1, :cond_21

    const-string v1, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    invoke-static {p0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_1a

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>(Landroid/content/Context;)V

    goto :goto_1f

    :cond_1a
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/zzcg;-><init>()V

    :goto_1f
    sput-object v1, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzcg;

    :cond_21
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzcg;

    monitor-exit v0

    return-object p0

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method static declared-synchronized zza()V
    .registers 3

    const-class v0, Lcom/google/android/gms/internal/measurement/zzcg;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzcg;

    if-eqz v1, :cond_22

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzcg;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzcg;->zzb:Landroid/content/Context;

    if-eqz v1, :cond_22

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzcg;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzcg;->zzc:Landroid/database/ContentObserver;

    if-eqz v1, :cond_22

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzcg;

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzcg;->zzb:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzcg;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzcg;->zzc:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_22
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzcg;->zza:Lcom/google/android/gms/internal/measurement/zzcg;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_27

    monitor-exit v0

    return-void

    :catchall_27
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final zzc(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcg;->zzb:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/zzcf;-><init>(Lcom/google/android/gms/internal/measurement/zzcg;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzce;->zza(Lcom/google/android/gms/internal/measurement/zzcd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_11} :catch_14
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    goto :goto_15

    :catch_14
    move-exception v0

    :goto_15
    const-string v2, "Unable to read GServices for: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_26

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2b

    :cond_26
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2b
    const-string v2, "GservicesLoader"

    invoke-static {v2, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzcg;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzb(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcg;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzbw;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.measurement.zzcf (com.google.android.gms.internal.measurement.zzcf)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzcf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcd;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzcg;

.field private final zzb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzcg;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcf;->zza:Lcom/google/android/gms/internal/measurement/zzcg;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzcf;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcf;->zza:Lcom/google/android/gms/internal/measurement/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcf;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcg;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
