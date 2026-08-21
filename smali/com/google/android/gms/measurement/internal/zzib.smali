###### Class com.google.android.gms.measurement.internal.zzib (com.google.android.gms.measurement.internal.zzib)
.class final Lcom/google/android/gms/measurement/internal/zzib;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Ljava/net/URL;

.field private final zzb:[B

.field private final zzc:Lcom/google/android/gms/measurement/internal/zzic;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzhz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhz;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/zzic;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/measurement/internal/zzic;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzf:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzib;->zza:Ljava/net/URL;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzb:[B

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzd:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzib;->zze:Ljava/util/Map;

    return-void
.end method

.method private final zzb(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Exception;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzf:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzq()Lcom/google/android/gms/measurement/internal/zzft;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/measurement/internal/zzie;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzie;-><init>(Lcom/google/android/gms/measurement/internal/zzib;ILjava/lang/Exception;[BLjava/util/Map;)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzft;->zza(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzf:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhz;->zzc()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzf:Lcom/google/android/gms/measurement/internal/zzhz;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzib;->zza:Ljava/net/URL;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzhz;->zza(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_77
    .catchall {:try_start_7 .. :try_end_f} :catchall_6a

    :try_start_f
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzib;->zze:Ljava/util/Map;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzib;->zze:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_39
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3d} :catch_67
    .catchall {:try_start_f .. :try_end_3d} :catchall_64

    :try_start_3d
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_60
    .catchall {:try_start_3d .. :try_end_41} :catchall_5c

    :try_start_41
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzf:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v4, v2}, Lcom/google/android/gms/measurement/internal/zzhz;->zza(Lcom/google/android/gms/measurement/internal/zzhz;Ljava/net/HttpURLConnection;)[B

    move-result-object v4
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_47} :catch_56
    .catchall {:try_start_41 .. :try_end_47} :catchall_50

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4c
    invoke-direct {p0, v1, v0, v4, v3}, Lcom/google/android/gms/measurement/internal/zzib;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void

    :catchall_50
    move-exception v4

    move-object v6, v4

    move v4, v1

    move-object v1, v3

    move-object v3, v6

    goto :goto_6e

    :catch_56
    move-exception v4

    move-object v6, v4

    move v4, v1

    move-object v1, v3

    move-object v3, v6

    goto :goto_7b

    :catchall_5c
    move-exception v3

    move v4, v1

    move-object v1, v0

    goto :goto_6e

    :catch_60
    move-exception v3

    move v4, v1

    move-object v1, v0

    goto :goto_7b

    :catchall_64
    move-exception v3

    move-object v1, v0

    goto :goto_6d

    :catch_67
    move-exception v3

    move-object v1, v0

    goto :goto_7a

    :catchall_6a
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    :goto_6d
    const/4 v4, 0x0

    :goto_6e
    if-eqz v2, :cond_73

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_73
    invoke-direct {p0, v4, v0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzib;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    throw v3

    :catch_77
    move-exception v3

    move-object v1, v0

    move-object v2, v1

    :goto_7a
    const/4 v4, 0x0

    :goto_7b
    if-eqz v2, :cond_80

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_80
    invoke-direct {p0, v4, v3, v0, v1}, Lcom/google/android/gms/measurement/internal/zzib;->zzb(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method

.method final synthetic zza(ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzc:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzib;->zzd:Ljava/lang/String;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzic;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method

###### Class com.google.android.gms.measurement.internal.zzie (com.google.android.gms.measurement.internal.zzie)
.class final synthetic Lcom/google/android/gms/measurement/internal/zzie;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzib;

.field private final zzb:I

.field private final zzc:Ljava/lang/Exception;

.field private final zzd:[B

.field private final zze:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzib;ILjava/lang/Exception;[BLjava/util/Map;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzie;->zza:Lcom/google/android/gms/measurement/internal/zzib;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzie;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzie;->zzc:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzie;->zzd:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzie;->zze:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzie;->zza:Lcom/google/android/gms/measurement/internal/zzib;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzie;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzie;->zzc:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzie;->zzd:[B

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzie;->zze:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzib;->zza(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
