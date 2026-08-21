###### Class com.google.android.gms.internal.ads.zzaq (com.google.android.gms.internal.ads.zzaq)
.class public final Lcom/google/android/gms/internal/ads/zzaq;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static zzb(Lcom/google/android/gms/internal/ads/zzo;)Lcom/google/android/gms/internal/ads/zzd;
    .registers 22

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzo;->zzab:Ljava/util/Map;

    const-string v4, "Date"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_17

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaq;->zzf(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_19

    :cond_17
    const-wide/16 v7, 0x0

    :goto_19
    const-string v4, "Cache-Control"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v4, :cond_89

    const-string v11, ","

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_2f
    array-length v9, v4

    if-ge v10, v9, :cond_85

    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v5, "no-cache"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_83

    const-string v5, "no-store"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    goto :goto_83

    :cond_49
    const-string v5, "max-age="

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    const/16 v5, 0x8

    :try_start_53
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_80

    goto :goto_80

    :cond_5c
    const-string v5, "stale-while-revalidate="

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    const/16 v5, 0x17

    :try_start_66
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6e} :catch_80

    goto :goto_80

    :cond_6f
    const-string v5, "must-revalidate"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    const-string v5, "proxy-revalidate"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    :cond_7f
    const/4 v13, 0x1

    :catch_80
    :cond_80
    :goto_80
    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    :cond_83
    :goto_83
    const/4 v0, 0x0

    return-object v0

    :cond_85
    move v10, v13

    const/16 v16, 0x1

    goto :goto_8f

    :cond_89
    const-wide/16 v11, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    :goto_8f
    const-string v4, "Expires"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9e

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaq;->zzf(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_a0

    :cond_9e
    const-wide/16 v5, 0x0

    :goto_a0
    const-string v4, "Last-Modified"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_b1

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzaq;->zzf(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v19, v17

    goto :goto_b3

    :cond_b1
    const-wide/16 v19, 0x0

    :goto_b3
    const-string v4, "ETag"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v16, :cond_cd

    const-wide/16 v5, 0x3e8

    mul-long v11, v11, v5

    add-long/2addr v1, v11

    if-eqz v10, :cond_c5

    goto :goto_dc

    :cond_c5
    invoke-static {v14, v15}, Ljava/lang/Long;->signum(J)I

    mul-long v14, v14, v5

    add-long/2addr v14, v1

    move-wide v5, v14

    goto :goto_dd

    :cond_cd
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_db

    cmp-long v11, v5, v7

    if-ltz v11, :cond_db

    sub-long/2addr v5, v7

    add-long/2addr v5, v1

    move-wide v1, v5

    goto :goto_dd

    :cond_db
    move-wide v1, v9

    :goto_dc
    move-wide v5, v1

    :goto_dd
    new-instance v9, Lcom/google/android/gms/internal/ads/zzd;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzd;-><init>()V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzo;->data:[B

    iput-object v10, v9, Lcom/google/android/gms/internal/ads/zzd;->data:[B

    iput-object v4, v9, Lcom/google/android/gms/internal/ads/zzd;->zzg:Ljava/lang/String;

    iput-wide v1, v9, Lcom/google/android/gms/internal/ads/zzd;->zzk:J

    iput-wide v5, v9, Lcom/google/android/gms/internal/ads/zzd;->zzj:J

    iput-wide v7, v9, Lcom/google/android/gms/internal/ads/zzd;->zzh:J

    move-wide/from16 v1, v19

    iput-wide v1, v9, Lcom/google/android/gms/internal/ads/zzd;->zzi:J

    iput-object v3, v9, Lcom/google/android/gms/internal/ads/zzd;->zzl:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzo;->allHeaders:Ljava/util/List;

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzd;->zzm:Ljava/util/List;

    return-object v9
.end method

.method static zzb(J)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaq;->zzp()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzf(Ljava/lang/String;)J
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaq;->zzp()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    :catch_d
    move-exception v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Unable to parse dateStr: %s, falling back to 0"

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzag;->zza(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static zzp()Ljava/text/SimpleDateFormat;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method
