###### Class com.google.android.gms.internal.ads.zzavy (com.google.android.gms.internal.ads.zzavy)
.class public final Lcom/google/android/gms/internal/ads/zzavy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zzdui:Lcom/google/android/gms/internal/ads/zzu;

.field private static final zzduj:Ljava/lang/Object;

.field private static final zzduk:Lcom/google/android/gms/internal/ads/zzawc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzawc<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavy;->zzduj:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavy;->zzduk:Lcom/google/android/gms/internal/ads/zzawc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_e
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzavy;->zzbh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzu;

    return-void
.end method

.method private static zzbh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzu;
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzavy;->zzduj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzavy;->zzdui:Lcom/google/android/gms/internal/ads/zzu;

    if-nez v1, :cond_50

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzza;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v1

    if-nez v1, :cond_24

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzcpv:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    if-eqz v1, :cond_2c

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzavn;->zzbg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object p0

    goto :goto_4e

    :cond_2c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzak;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzar;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzar;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;-><init>(Lcom/google/android/gms/internal/ads/zzah;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v3, "volley"

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzu;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzal;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzal;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/ads/zzu;-><init>(Lcom/google/android/gms/internal/ads/zza;Lcom/google/android/gms/internal/ads/zzn;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzu;->start()V

    :goto_4e
    sput-object p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdui:Lcom/google/android/gms/internal/ads/zzu;

    :cond_50
    sget-object p0, Lcom/google/android/gms/internal/ads/zzavy;->zzdui:Lcom/google/android/gms/internal/ads/zzu;

    monitor-exit v0

    return-object p0

    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public static zzel(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Lcom/google/android/gms/internal/ads/zzo;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzavy;->zzdui:Lcom/google/android/gms/internal/ads/zzu;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzawe;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzawe;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaxv;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzu;->zze(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzq;

    return-object v0
.end method


# virtual methods
.method public final zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    new-instance v10, Lcom/google/android/gms/internal/ads/zzawb;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/google/android/gms/internal/ads/zzawb;-><init>(Lcom/google/android/gms/internal/ads/zzavx;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzawa;

    move-object v11, p0

    invoke-direct {v6, p0, v0, v10}, Lcom/google/android/gms/internal/ads/zzawa;-><init>(Lcom/google/android/gms/internal/ads/zzavy;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawb;)V

    new-instance v12, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/zzaxc;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/google/android/gms/internal/ads/zzavz;

    move-object v1, v13

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object v5, v10

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move-object v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzavz;-><init>(Lcom/google/android/gms/internal/ads/zzavy;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzab;Lcom/google/android/gms/internal/ads/zzy;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/zzaxc;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxc;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3f

    :try_start_29
    const-string v1, "GET"

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzavz;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzavz;->zzf()[B

    move-result-object v3

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_36
    .catch Lcom/google/android/gms/internal/ads/zzb; {:try_start_29 .. :try_end_36} :catch_37

    goto :goto_3f

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzavy;->zzdui:Lcom/google/android/gms/internal/ads/zzu;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzu;->zze(Lcom/google/android/gms/internal/ads/zzq;)Lcom/google/android/gms/internal/ads/zzq;

    return-object v10
.end method

.method public final zzc(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzddi;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzavy;->zza(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object p1

    return-object p1
.end method
