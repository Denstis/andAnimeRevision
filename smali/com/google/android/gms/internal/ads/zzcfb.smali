###### Class com.google.android.gms.internal.ads.zzcfb (com.google.android.gms.internal.ads.zzcfb)
.class public final Lcom/google/android/gms/internal/ads/zzcfb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcxn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcxn<",
        "Lcom/google/android/gms/internal/ads/zzcfa;",
        "Lcom/google/android/gms/internal/ads/zzcfd;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzdjp:Ljava/lang/String;

.field private final zzfvf:Lcom/google/android/gms/internal/ads/zzapr;

.field private final zzfvs:Ljava/lang/String;

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapr;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zzfvs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zzfvf:Lcom/google/android/gms/internal/ads/zzapr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zzdjp:Ljava/lang/String;

    return-void
.end method

.method private final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapk;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcfd;
    .registers 25

    move-object/from16 v1, p0

    const-string v0, "Received error HTTP response code: "

    const-string v2, "doritos_v2"

    const-string v3, "doritos"

    const-string v4, ""

    :try_start_a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapk;->getErrorCode()I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_40

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapk;->getErrorCode()I

    move-result v0

    if-ne v0, v8, :cond_38

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapk;->zztd()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    const-string v0, ", "

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapk;->zztd()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    :cond_2c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcek;

    const-string v2, "Error building request URL."

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapk;->getErrorCode()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcek;

    const-string v2, "Internal error."

    invoke-direct {v0, v2, v7}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_40
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcfd;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcfd;-><init>()V

    const-string v6, "SDK version: "

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzcfb;->zzfvs:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_58

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5e

    :cond_58
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    :goto_5e
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaxi;->zzet(Ljava/lang/String;)V

    const-string v6, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_72

    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_78

    :cond_72
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v6, v9

    :goto_78
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    new-instance v6, Ljava/net/URL;

    move-object/from16 v9, p1

    invoke-direct {v6, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v10

    const/4 v12, 0x0

    :goto_90
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzcfb;->zzfvf:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-interface {v13}, Lcom/google/android/gms/internal/ads/zzapr;->zztk()V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_9b} :catch_279

    :try_start_9b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzcfb;->zzlk:Landroid/content/Context;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzcfb;->zzfvs:Ljava/lang/String;

    invoke-virtual {v13, v14, v15, v7, v6}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_b4

    const-string v13, "Cookie"

    move-object/from16 v14, p4

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6

    :cond_b4
    move-object/from16 v14, p4

    :goto_b6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapk;->zztg()Z

    move-result v13

    if-eqz v13, :cond_f3

    const-string v13, "pii"

    move-object/from16 v15, p3

    invoke-virtual {v15, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    if-eqz v13, :cond_ed

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d9

    const-string v7, "x-afma-drt-cookie"

    invoke-virtual {v13, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d9
    invoke-virtual {v13, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f5

    const-string v7, "x-afma-drt-v2-cookie"

    invoke-virtual {v13, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f5

    :cond_ed
    const-string v7, "DSID signal does not exist."

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    goto :goto_f5

    :cond_f3
    move-object/from16 v15, p3

    :cond_f5
    :goto_f5
    if-eqz p2, :cond_129

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapk;->zztf()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_129

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapk;->zztf()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v13, v8

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_111
    .catchall {:try_start_9b .. :try_end_111} :catchall_26f

    :try_start_111
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v13, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11a
    .catchall {:try_start_111 .. :try_end_11a} :catchall_123

    :try_start_11a
    invoke-virtual {v13, v8}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_121

    :try_start_11d
    invoke-static {v13}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_12a

    :catchall_121
    move-exception v0

    goto :goto_125

    :catchall_123
    move-exception v0

    const/4 v13, 0x0

    :goto_125
    invoke-static {v13}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_129
    const/4 v8, 0x0

    :goto_12a
    new-instance v7, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzaxc;-><init>()V

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_142
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_183

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    check-cast v2, Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    check-cast v3, Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_172

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_17e

    :cond_172
    move-object/from16 v17, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v9, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v17

    :goto_17e
    move-object/from16 v3, v18

    move-object/from16 v2, v19

    goto :goto_142

    :cond_183
    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzaxc;->zza(Ljava/net/HttpURLConnection;I)V
    :try_end_18c
    .catchall {:try_start_11d .. :try_end_18c} :catchall_26f

    const/16 v2, 0xc8

    const/16 v3, 0x12c

    if-lt v8, v2, :cond_1ee

    if-ge v8, v3, :cond_1ee

    :try_start_194
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_19d
    .catchall {:try_start_194 .. :try_end_19d} :catchall_1e8

    :try_start_19d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a4
    .catchall {:try_start_19d .. :try_end_1a4} :catchall_1e6

    :try_start_1a4
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzaxc;->zzep(Ljava/lang/String;)V

    iput v8, v5, Lcom/google/android/gms/internal/ads/zzcfd;->zzfvt:I

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzcfd;->zzdko:Ljava/lang/String;

    iput-object v9, v5, Lcom/google/android/gms/internal/ads/zzcfd;->zzab:Ljava/util/Map;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcrn:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c9

    goto :goto_1d2

    :cond_1c9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcek;

    const-string v2, "No Fill"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1d2
    :goto_1d2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    iput-wide v2, v5, Lcom/google/android/gms/internal/ads/zzcfd;->zzfvu:J
    :try_end_1dd
    .catchall {:try_start_1a4 .. :try_end_1dd} :catchall_26f

    :try_start_1dd
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcfb;->zzfvf:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzapr;->zztl()V
    :try_end_1e5
    .catch Ljava/io/IOException; {:try_start_1dd .. :try_end_1e5} :catch_279

    return-object v5

    :catchall_1e6
    move-exception v0

    goto :goto_1ea

    :catchall_1e8
    move-exception v0

    const/4 v2, 0x0

    :goto_1ea
    :try_start_1ea
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1ee
    if-lt v8, v3, :cond_246

    const/16 v2, 0x190

    if-ge v8, v2, :cond_246

    const-string v2, "Location"

    invoke-virtual {v6, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_239

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    add-int/2addr v12, v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzza;->zzcqt:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_217
    .catchall {:try_start_1ea .. :try_end_217} :catchall_26f

    if-gt v12, v4, :cond_22c

    :try_start_219
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcfb;->zzfvf:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzapr;->zztl()V
    :try_end_221
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_221} :catch_279

    move-object v6, v3

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    move-object/from16 v2, v19

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_90

    :cond_22c
    :try_start_22c
    const-string v0, "Too many redirects."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcek;

    const-string v2, "Too many redirects"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_239
    const-string v0, "No location header to follow redirect."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcek;

    const-string v2, "No location header to follow redirect"

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_246
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcek;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_26f
    .catchall {:try_start_22c .. :try_end_26f} :catchall_26f

    :catchall_26f
    move-exception v0

    :try_start_270
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzcfb;->zzfvf:Lcom/google/android/gms/internal/ads/zzapr;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzapr;->zztl()V

    throw v0
    :try_end_279
    .catch Ljava/io/IOException; {:try_start_270 .. :try_end_279} :catch_279

    :catch_279
    move-exception v0

    const-string v2, "Error while connecting to ad server: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_28f

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_295

    :cond_28f
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_295
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcek;

    const-string v3, "Error connecting to ad server:"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2af

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b4

    :cond_2af
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2b4
    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcek;-><init>(Ljava/lang/String;I)V

    goto :goto_2ba

    :goto_2b9
    throw v2

    :goto_2ba
    goto :goto_2b9
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfa;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcfa;->zza(Lcom/google/android/gms/internal/ads/zzcfa;)Lcom/google/android/gms/internal/ads/zzapk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzapk;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcfa;->zza(Lcom/google/android/gms/internal/ads/zzcfa;)Lcom/google/android/gms/internal/ads/zzapk;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcfa;->zzb(Lcom/google/android/gms/internal/ads/zzcfa;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfb;->zzdjp:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzcfb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzapk;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcfd;

    move-result-object p1

    return-object p1
.end method
