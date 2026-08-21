###### Class com.google.android.gms.internal.ads.zzar (com.google.android.gms.internal.ads.zzar)
.class public final Lcom/google/android/gms/internal/ads/zzar;
.super Lcom/google/android/gms/internal/ads/zzah;
.source ""


# instance fields
.field private final zzcj:Lcom/google/android/gms/internal/ads/zzat;

.field private final zzck:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzar;-><init>(Lcom/google/android/gms/internal/ads/zzat;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzat;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzar;-><init>(Lcom/google/android/gms/internal/ads/zzat;Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzat;Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzah;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzar;->zzcj:Lcom/google/android/gms/internal/ads/zzat;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzar;->zzck:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private static zza(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method private static zza(Ljava/util/Map;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzk;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzk;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_48
    return-object v0
.end method

.method private static zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/zzq;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzq;->zzf()[B

    move-result-object p1

    if-eqz p1, :cond_3d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "application/x-www-form-urlencoded; charset="

    const-string v2, "UTF-8"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_25
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    :goto_2b
    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_3d
    return-void
.end method

.method static synthetic zzb(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzar;->zza(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzq;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzq<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzap;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzq;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzq;->getHeaders()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzar;->zzcj:Lcom/google/android/gms/internal/ads/zzat;

    if-eqz p2, :cond_3a

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzat;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3b

    new-instance p1, Ljava/io/IOException;

    const-string p2, "URL blocked by rewriter: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_36

    :cond_30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_36
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    move-object p2, v0

    :cond_3b
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzq;->zzh()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v4, "https"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :try_start_68
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_70
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    :cond_86
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzq;->getMethod()I

    move-result v0

    packed-switch v0, :pswitch_data_11e

    new-instance p1, Ljava/lang/IllegalStateException;

    goto/16 :goto_10e

    :pswitch_91
    const-string v0, "PATCH"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :goto_96
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzar;->zza(Ljava/net/HttpURLConnection;Lcom/google/android/gms/internal/ads/zzq;)V

    goto :goto_b8

    :pswitch_9a
    const-string v0, "TRACE"

    :goto_9c
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_b8

    :pswitch_a0
    const-string v0, "OPTIONS"

    goto :goto_9c

    :pswitch_a3
    const-string v0, "HEAD"

    goto :goto_9c

    :pswitch_a6
    const-string v0, "DELETE"

    goto :goto_9c

    :pswitch_a9
    const-string v0, "PUT"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_96

    :pswitch_af
    const-string v0, "POST"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_96

    :pswitch_b5
    const-string v0, "GET"

    goto :goto_9c

    :goto_b8
    :pswitch_b8
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_106

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzq;->getMethod()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_d8

    const/16 p1, 0x64

    if-gt p1, v0, :cond_ce

    const/16 p1, 0xc8

    if-lt v0, p1, :cond_d8

    :cond_ce
    const/16 p1, 0xcc

    if-eq v0, p1, :cond_d8

    const/16 p1, 0x130

    if-eq v0, p1, :cond_d8

    const/4 p1, 0x1

    goto :goto_d9

    :cond_d8
    const/4 p1, 0x0

    :goto_d9
    if-nez p1, :cond_ec

    new-instance p1, Lcom/google/android/gms/internal/ads/zzap;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzar;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzap;-><init>(ILjava/util/List;)V
    :try_end_e8
    .catchall {:try_start_68 .. :try_end_e8} :catchall_114

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_ec
    :try_start_ec
    new-instance p1, Lcom/google/android/gms/internal/ads/zzap;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzar;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzau;

    invoke-direct {v4, p2}, Lcom/google/android/gms/internal/ads/zzau;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {p1, v0, v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzap;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_102
    .catchall {:try_start_ec .. :try_end_102} :catchall_103

    return-object p1

    :catchall_103
    move-exception p1

    const/4 v2, 0x1

    goto :goto_115

    :cond_106
    :try_start_106
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_10e
    const-string v0, "Unknown method type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_114
    .catchall {:try_start_106 .. :try_end_114} :catchall_114

    :catchall_114
    move-exception p1

    :goto_115
    if-nez v2, :cond_11a

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11a
    goto :goto_11c

    :goto_11b
    throw p1

    :goto_11c
    goto :goto_11b

    nop

    :pswitch_data_11e
    .packed-switch -0x1
        :pswitch_b8
        :pswitch_b5
        :pswitch_af
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
        :pswitch_9a
        :pswitch_91
    .end packed-switch
.end method
