###### Class com.google.android.gms.internal.measurement.zzcu (com.google.android.gms.internal.measurement.zzcu)
.class public final Lcom/google/android/gms/internal/measurement/zzcu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzcb;


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/measurement/zzcu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzb:Landroid/content/SharedPreferences;

.field private final zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final zzd:Ljava/lang/Object;

.field private volatile zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/measurement/zzcc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/e/a;

    invoke-direct {v0}, Lb/e/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzct;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzct;-><init>(Lcom/google/android/gms/internal/measurement/zzcu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zzd:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zzf:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zzb:Landroid/content/SharedPreferences;

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zzb:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static zza(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzcu;
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzby;->zza()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "direct_boot:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzby;->zza(Landroid/content/Context;)Z

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    if-nez v0, :cond_18

    const/4 p0, 0x0

    return-object p0

    :cond_18
    const-class v0, Lcom/google/android/gms/internal/measurement/zzcu;

    monitor-enter v0

    :try_start_1b
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzcu;

    if-nez v1, :cond_51

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzcu;

    const-string v2, "direct_boot:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzby;->zza()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    :cond_3a
    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_49

    :cond_45
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_49
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/zzcu;-><init>(Landroid/content/SharedPreferences;)V

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_51
    monitor-exit v0

    return-object v1

    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_1b .. :try_end_55} :catchall_53

    throw p0
.end method

.method static declared-synchronized zza()V
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/measurement/zzcu;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzcu;

    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/zzcu;->zzb:Landroid/content/SharedPreferences;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/zzcu;->zzc:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_d

    :cond_21
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzcu;->zza:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0

    goto :goto_2c

    :goto_2b
    throw v1

    :goto_2c
    goto :goto_2b
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zze:Ljava/util/Map;

    if-nez v0, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zzd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zze:Ljava/util/Map;

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zzb:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zze:Ljava/util/Map;

    :cond_13
    monitor-exit v1

    goto :goto_18

    :catchall_15
    move-exception p1

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p1

    :cond_18
    :goto_18
    if-eqz v0, :cond_1f

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zzd:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    :try_start_4
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zze:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzcl;->zza()V

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_26

    monitor-enter p0

    :try_start_b
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzcu;->zzf:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzcc;

    invoke-interface {p2}, Lcom/google/android/gms/internal/measurement/zzcc;->zza()V

    goto :goto_11

    :cond_21
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_23

    throw p1

    :catchall_26
    move-exception p2

    :try_start_27
    monitor-exit p1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    goto :goto_2a

    :goto_29
    throw p2

    :goto_2a
    goto :goto_29
.end method

###### Class com.google.android.gms.internal.measurement.zzct (com.google.android.gms.internal.measurement.zzct)
.class final synthetic Lcom/google/android/gms/internal/measurement/zzct;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/measurement/zzcu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzcu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzct;->zza:Lcom/google/android/gms/internal/measurement/zzcu;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzct;->zza:Lcom/google/android/gms/internal/measurement/zzcu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzcu;->zza(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
