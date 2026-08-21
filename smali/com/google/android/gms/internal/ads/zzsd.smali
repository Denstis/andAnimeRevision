###### Class com.google.android.gms.internal.ads.zzsd (com.google.android.gms.internal.ads.zzsd)
.class public final Lcom/google/android/gms/internal/ads/zzsd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzbsa:Lcom/google/android/gms/internal/ads/zzsi;

.field private final zzbsb:Lcom/google/android/gms/internal/ads/zztl;

.field private final zzbsc:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsc:Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzsi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsa:Lcom/google/android/gms/internal/ads/zzsi;

    new-instance v0, Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zztl;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsb:Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsd;->zzmn()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzsi;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsa:Lcom/google/android/gms/internal/ads/zzsi;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcql:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsc:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zztl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsb:Lcom/google/android/gms/internal/ads/zztl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsd;->zzmn()V

    return-void
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzsf$zza$zza;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsb:Lcom/google/android/gms/internal/ads/zztl;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsd;->zzmo()[J

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zztl;->zzcat:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsa:Lcom/google/android/gms/internal/ads/zzsi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsb:Lcom/google/android/gms/internal/ads/zztl;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdus;->zzb(Lcom/google/android/gms/internal/ads/zzdus;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsi;->zzf([B)Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsf$zza$zza;->zzab()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsm;->zzbq(I)Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsm;->zzdh()V

    const-string v0, "Logging Event with event code : "

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsf$zza$zza;->zzab()I

    move-result p1

    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_40

    :cond_3b
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_40
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_45

    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzsf$zza$zza;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_51

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Ljava/io/File;

    const-string v2, "clearcut_events.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_51

    :try_start_10
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_16} :catch_4a
    .catchall {:try_start_10 .. :try_end_16} :catchall_51

    :try_start_16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsd;->zzd(Lcom/google/android/gms/internal/ads/zzsf$zza$zza;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_21} :catch_2f
    .catchall {:try_start_16 .. :try_end_21} :catchall_2d

    :try_start_21
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_26
    .catchall {:try_start_21 .. :try_end_24} :catchall_51

    monitor-exit p0

    return-void

    :catch_26
    :try_start_26
    const-string p1, "Could not close Clearcut output stream."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2b} :catch_4a
    .catchall {:try_start_26 .. :try_end_2b} :catchall_51

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    goto :goto_40

    :catch_2f
    :try_start_2f
    const-string p1, "Could not write Clearcut to file."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_2d

    :try_start_34
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39
    .catchall {:try_start_34 .. :try_end_37} :catchall_51

    monitor-exit p0

    return-void

    :catch_39
    :try_start_39
    const-string p1, "Could not close Clearcut output stream."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3e} :catch_4a
    .catchall {:try_start_39 .. :try_end_3e} :catchall_51

    monitor-exit p0

    return-void

    :goto_40
    :try_start_40
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_51

    goto :goto_49

    :catch_44
    :try_start_44
    const-string v0, "Could not close Clearcut output stream."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    :goto_49
    throw p1
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4a} :catch_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_51

    :catch_4a
    :try_start_4a
    const-string p1, "Could not find file for Clearcut"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-void

    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzsf$zza$zza;)Ljava/lang/String;
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "id=%s,timestamp=%s,event=%s,data=%s\n"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsb:Lcom/google/android/gms/internal/ads/zztl;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zztl;->zzcap:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzsf$zza$zza;->zzab()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsb:Lcom/google/android/gms/internal/ads/zztl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdus;->zzb(Lcom/google/android/gms/internal/ads/zzdus;)[B

    move-result-object p1

    const/4 v2, 0x3

    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-object p1

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static zzmm()Lcom/google/android/gms/internal/ads/zzsd;
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzsd;-><init>()V

    return-object v0
.end method

.method private final declared-synchronized zzmn()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsb:Lcom/google/android/gms/internal/ads/zztl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzth;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzth;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zztl;->zzcax:Lcom/google/android/gms/internal/ads/zzth;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsb:Lcom/google/android/gms/internal/ads/zztl;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zztl;->zzcax:Lcom/google/android/gms/internal/ads/zzth;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zztg;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzth;->zzbzv:Lcom/google/android/gms/internal/ads/zztg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsb:Lcom/google/android/gms/internal/ads/zztl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zztj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zztj;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zztl;->zzcau:Lcom/google/android/gms/internal/ads/zztj;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static zzmo()[J
    .registers 7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzza;->zzps()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_21
    if-ge v3, v4, :cond_d

    aget-object v5, v2, v3

    :try_start_25
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_32

    :catch_2d
    const-string v5, "Experiment ID is not a number"

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_40
    if-ge v3, v2, :cond_53

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_53
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzsf$zza$zza;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsc:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_23

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcqm:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsd;->zzc(Lcom/google/android/gms/internal/ads/zzsf$zza$zza;)V
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_23

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzsd;->zzb(Lcom/google/android/gms/internal/ads/zzsf$zza$zza;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzsg;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsc:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-eqz v0, :cond_16

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsd;->zzbsb:Lcom/google/android/gms/internal/ads/zztl;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzsg;->zza(Lcom/google/android/gms/internal/ads/zztl;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_18

    monitor-exit p0

    return-void

    :catch_c
    move-exception p1

    :try_start_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v0

    const-string v1, "AdMobClearcutLogger.modify"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
