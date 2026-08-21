###### Class com.google.android.gms.internal.ads.zznh (com.google.android.gms.internal.ads.zznh)
.class public final Lcom/google/android/gms/internal/ads/zznh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzne;


# static fields
.field private static final zzbem:Ljava/util/regex/Pattern;

.field private static final zzben:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbeo:Z

.field private final zzbep:I

.field private final zzbeq:I

.field private final zzber:Ljava/lang/String;

.field private final zzbes:Lcom/google/android/gms/internal/ads/zzoe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzoe<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbet:Lcom/google/android/gms/internal/ads/zznm;

.field private final zzbeu:Lcom/google/android/gms/internal/ads/zznm;

.field private final zzbev:Lcom/google/android/gms/internal/ads/zzns;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzns<",
            "-",
            "Lcom/google/android/gms/internal/ads/zznh;",
            ">;"
        }
    .end annotation
.end field

.field private zzbew:Lcom/google/android/gms/internal/ads/zznf;

.field private zzbex:Ljava/net/HttpURLConnection;

.field private zzbey:Ljava/io/InputStream;

.field private zzbez:Z

.field private zzbfa:J

.field private zzbfb:J

.field private zzbfc:J

.field private zzcc:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zznh;->zzbem:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zznh;->zzben:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzoe;Lcom/google/android/gms/internal/ads/zzns;IIZLcom/google/android/gms/internal/ads/zznm;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzoe<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzns<",
            "-",
            "Lcom/google/android/gms/internal/ads/zznh;",
            ">;IIZ",
            "Lcom/google/android/gms/internal/ads/zznm;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzber:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbes:Lcom/google/android/gms/internal/ads/zzoe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    new-instance p2, Lcom/google/android/gms/internal/ads/zznm;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zznm;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbeu:Lcom/google/android/gms/internal/ads/zznm;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbep:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbeq:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbeo:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbet:Lcom/google/android/gms/internal/ads/zznm;

    return-void
.end method

.method private final zza(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .registers 14

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbep:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbeq:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbeu:Lcom/google/android/gms/internal/ads/zznm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznm;->zzif()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_3a
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p3, v0

    if-nez v4, :cond_46

    cmp-long v0, p5, v2

    if-eqz v0, :cond_88

    :cond_46
    const/16 v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "bytes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, p5, v2

    if-eqz v1, :cond_83

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-long/2addr p3, p5

    const-wide/16 p5, 0x1

    sub-long/2addr p3, p5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, 0x14

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_83
    const-string p3, "Range"

    invoke-virtual {p1, p3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzber:Ljava/lang/String;

    const-string p4, "User-Agent"

    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p7, :cond_98

    const-string p3, "Accept-Encoding"

    const-string p4, "identity"

    invoke-virtual {p1, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_98
    invoke-virtual {p1, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p2, :cond_9f

    const/4 p3, 0x1

    goto :goto_a0

    :cond_9f
    const/4 p3, 0x0

    :goto_a0
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p2, :cond_bf

    const-string p3, "POST"

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    array-length p3, p2

    if-eqz p3, :cond_bf

    array-length p3, p2

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    goto :goto_c2

    :cond_bf
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_c2
    return-object p1
.end method

.method private static zzc(Ljava/net/HttpURLConnection;)J
    .registers 11

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, "DefaultHttpDataSource"

    if-nez v1, :cond_36

    :try_start_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_38

    :catch_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Length ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const-wide/16 v4, -0x1

    :goto_38
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cb

    sget-object v1, Lcom/google/android/gms/internal/ads/zznh;->zzbem:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_cb

    const/4 v6, 0x2

    :try_start_51
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_6e

    move-wide v4, v6

    goto :goto_cb

    :cond_6e
    cmp-long v1, v4, v6

    if-eqz v1, :cond_cb

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_a8} :catch_aa

    move-wide v4, v0

    goto :goto_cb

    :catch_aa
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected Content-Range ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    :goto_cb
    return-wide v4
.end method

.method private final zzic()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;

    :cond_13
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbey:Ljava/io/InputStream;

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfb:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_13

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfb:J

    goto :goto_18

    :cond_13
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfb:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zznh;->zzcc:J

    sub-long/2addr v3, v7

    :goto_18
    sget v7, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v8, 0x13

    if-eq v7, v8, :cond_24

    sget v7, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_8e

    const/16 v8, 0x14

    if-ne v7, v8, :cond_6b

    :cond_24
    :try_start_24
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_34

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3a

    goto :goto_6b

    :cond_34
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-lez v7, :cond_6b

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    :cond_52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_6b} :catch_6b
    .catchall {:try_start_24 .. :try_end_6b} :catchall_8e

    :catch_6b
    :cond_6b
    :goto_6b
    :try_start_6b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbey:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_71
    .catchall {:try_start_6b .. :try_end_70} :catchall_8e

    goto :goto_7b

    :catch_71
    move-exception v2

    :try_start_72
    new-instance v3, Lcom/google/android/gms/internal/ads/zznk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbew:Lcom/google/android/gms/internal/ads/zznf;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V

    throw v3
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_8e

    :cond_7b
    :goto_7b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbey:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzic()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbez:Z

    if-eqz v0, :cond_8d

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbez:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz v0, :cond_8d

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzns;->zze(Ljava/lang/Object;)V

    :cond_8d
    return-void

    :catchall_8e
    move-exception v2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbey:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzic()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbez:Z

    if-eqz v0, :cond_a1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbez:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz v0, :cond_a1

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzns;->zze(Ljava/lang/Object;)V

    :cond_a1
    throw v2
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final read([BII)I
    .registers 12

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfc:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfa:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_5c

    sget-object v0, Lcom/google/android/gms/internal/ads/zznh;->zzben:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_19

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_19
    :goto_19
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfc:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfa:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_57

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfa:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfc:J

    sub-long/2addr v1, v6

    array-length v3, v0

    int-to-long v6, v3

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbey:Ljava/io/InputStream;

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_51

    if-eq v1, v5, :cond_4b

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfc:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfc:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    invoke-interface {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzns;->zzc(Ljava/lang/Object;I)V

    goto :goto_19

    :cond_4b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_51
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_57
    sget-object v1, Lcom/google/android/gms/internal/ads/zznh;->zzben:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_5c
    if-nez p3, :cond_5f

    return v4

    :cond_5f
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfb:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_79

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfb:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zznh;->zzcc:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_73

    return v5

    :cond_73
    int-to-long v6, p3

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbey:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_8e

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfb:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_88

    return v5

    :cond_88
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_8e
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzcc:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzcc:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz p2, :cond_9d

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzns;->zzc(Ljava/lang/Object;I)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9d} :catch_9e

    :cond_9d
    return p1

    :catch_9e
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zznk;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbew:Lcom/google/android/gms/internal/ads/zznf;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V

    goto :goto_a9

    :goto_a8
    throw p2

    :goto_a9
    goto :goto_a8
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznf;)J
    .registers 26

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string v12, "Unable to connect to "

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbew:Lcom/google/android/gms/internal/ads/zznf;

    const-wide/16 v13, 0x0

    iput-wide v13, v10, Lcom/google/android/gms/internal/ads/zznh;->zzcc:J

    iput-wide v13, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbfc:J

    const/4 v15, 0x1

    :try_start_f
    new-instance v2, Ljava/net/URL;

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zznf;->zzbek:[B

    iget-wide v8, v11, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zznf;->zzaz(I)Z

    move-result v0

    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbeo:Z

    const/4 v4, 0x0

    if-nez v1, :cond_36

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-wide v4, v8

    move v8, v0

    move/from16 v9, v16

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zznh;->zza(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_78

    :cond_36
    move-object v4, v2

    move-object/from16 v16, v3

    const/4 v1, 0x0

    :goto_3a
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_171

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, v16

    move-object/from16 v19, v4

    move/from16 v18, v5

    move-wide v4, v8

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move v8, v0

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zznh;->zza(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x12c

    if-eq v2, v3, :cond_11c

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_11c

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_11c

    const/16 v3, 0x12f

    if-eq v2, v3, :cond_11c

    if-nez v16, :cond_77

    const/16 v3, 0x133

    if-eq v2, v3, :cond_11c

    const/16 v3, 0x134

    if-ne v2, v3, :cond_77

    goto/16 :goto_11c

    :cond_77
    move-object v0, v1

    :goto_78
    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_7a} :catch_18e

    :try_start_7a
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_80} :catch_f8

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_dc

    const/16 v2, 0x12b

    if-le v0, v2, :cond_89

    goto :goto_dc

    :cond_89
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    if-ne v0, v1, :cond_97

    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    cmp-long v2, v0, v13

    if-eqz v2, :cond_97

    goto :goto_98

    :cond_97
    move-wide v0, v13

    :goto_98
    iput-wide v0, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbfa:J

    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zznf;->zzaz(I)Z

    move-result v0

    if-nez v0, :cond_ba

    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a9

    goto :goto_bc

    :cond_a9
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->zzc(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b7

    iget-wide v2, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbfa:J

    sub-long v2, v0, v2

    :cond_b7
    iput-wide v2, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbfb:J

    goto :goto_be

    :cond_ba
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    :goto_bc
    iput-wide v0, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbfb:J

    :goto_be
    :try_start_be
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbey:Ljava/io/InputStream;
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c6} :catch_d2

    iput-boolean v15, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbez:Z

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz v0, :cond_cf

    invoke-interface {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzns;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zznf;)V

    :cond_cf
    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbfb:J

    return-wide v0

    :catch_d2
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zznh;->zzic()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zznk;

    invoke-direct {v1, v0, v11, v15}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V

    throw v1

    :cond_dc
    :goto_dc
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zznh;->zzbex:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zznh;->zzic()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zznj;

    invoke-direct {v2, v0, v1, v11}, Lcom/google/android/gms/internal/ads/zznj;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/zznf;)V

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_f7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzng;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzng;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_f7
    throw v2

    :catch_f8
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zznh;->zzic()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zznk;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_113

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_118

    :cond_113
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_118
    invoke-direct {v1, v2, v0, v11, v15}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V

    throw v1

    :cond_11c
    :goto_11c
    const/4 v3, 0x0

    const/16 v16, 0x0

    :try_start_11f
    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_169

    new-instance v4, Ljava/net/URL;

    move-object/from16 v1, v19

    invoke-direct {v4, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_161

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_161

    new-instance v0, Ljava/net/ProtocolException;

    const-string v2, "Unsupported protocol redirect: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_158

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_15d

    :cond_158
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_15d
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_161
    move/from16 v1, v18

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    goto/16 :goto_3a

    :cond_169
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_171
    move/from16 v18, v5

    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many redirects: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18e
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_18e} :catch_18e

    :catch_18e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zznk;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a6

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1ab

    :cond_1a6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1ab
    invoke-direct {v1, v2, v0, v11, v15}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V

    goto :goto_1b0

    :goto_1af
    throw v1

    :goto_1b0
    goto :goto_1af
.end method
