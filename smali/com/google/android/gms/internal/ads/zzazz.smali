###### Class com.google.android.gms.internal.ads.zzazz (com.google.android.gms.internal.ads.zzazz)
.class final Lcom/google/android/gms/internal/ads/zzazz;
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
.field private final zzbep:I

.field private final zzbeq:I

.field private final zzber:Ljava/lang/String;

.field private final zzbeu:Lcom/google/android/gms/internal/ads/zznm;

.field private final zzbev:Lcom/google/android/gms/internal/ads/zzns;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzns<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzazz;",
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

.field private zzebs:Ljavax/net/ssl/SSLSocketFactory;

.field private zzebt:I

.field private zzebu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazz;->zzbem:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzazz;->zzben:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzns;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzns<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzazz;",
            ">;III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbac;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbac;-><init>(Lcom/google/android/gms/internal/ads/zzazz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzebs:Ljavax/net/ssl/SSLSocketFactory;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzebu:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznr;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzber:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    new-instance p1, Lcom/google/android/gms/internal/ads/zznm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zznm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbeu:Lcom/google/android/gms/internal/ads/zznm;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbep:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbeq:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzebt:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzazz;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzebt:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzazz;Ljava/net/Socket;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzazz;->zza(Ljava/net/Socket;)V

    return-void
.end method

.method private final zza(Ljava/net/Socket;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzebu:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static zzc(Ljava/net/HttpURLConnection;)J
    .registers 10

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    if-nez v1, :cond_34

    :try_start_e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_12} :catch_13

    goto :goto_36

    :catch_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Length ["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    :cond_34
    const-wide/16 v3, -0x1

    :goto_36
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c9

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbem:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_c9

    const/4 v5, 0x2

    :try_start_4f
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v3, v7

    if-gez v1, :cond_6c

    move-wide v3, v5

    goto :goto_c9

    :cond_6c
    cmp-long v1, v3, v5

    if-eqz v1, :cond_c9

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_a6
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_a6} :catch_a8

    move-wide v3, v0

    goto :goto_c9

    :catch_a8
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

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    :cond_c9
    :goto_c9
    return-wide v3
.end method

.method private final zzic()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbex:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_11

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    const-string v1, "Unexpected error while disconnecting"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbex:Ljava/net/HttpURLConnection;

    :cond_11
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbey:Ljava/io/InputStream;

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbex:Ljava/net/HttpURLConnection;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfb:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_13

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfb:J

    goto :goto_18

    :cond_13
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfb:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzcc:J

    sub-long/2addr v3, v7

    :goto_18
    sget v7, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I

    const/16 v8, 0x13

    if-eq v7, v8, :cond_24

    sget v7, Lcom/google/android/gms/internal/ads/zzof;->SDK_INT:I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_93

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
    .catchall {:try_start_24 .. :try_end_6b} :catchall_93

    :catch_6b
    :cond_6b
    :goto_6b
    :try_start_6b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbey:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_71
    .catchall {:try_start_6b .. :try_end_70} :catchall_93

    goto :goto_7b

    :catch_71
    move-exception v2

    :try_start_72
    new-instance v3, Lcom/google/android/gms/internal/ads/zznk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbew:Lcom/google/android/gms/internal/ads/zznf;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V

    throw v3
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_93

    :cond_7b
    :goto_7b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbey:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazz;->zzic()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbez:Z

    if-eqz v0, :cond_8d

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbez:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz v0, :cond_8d

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzns;->zze(Ljava/lang/Object;)V

    :cond_8d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzebu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void

    :catchall_93
    move-exception v2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbey:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzazz;->zzic()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbez:Z

    if-eqz v0, :cond_a6

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbez:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz v0, :cond_a6

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzns;->zze(Ljava/lang/Object;)V

    :cond_a6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzebu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    throw v2
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbex:Ljava/net/HttpURLConnection;

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
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfc:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfa:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_5c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzazz;->zzben:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_19

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_19
    :goto_19
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfc:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfa:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_57

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfa:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfc:J

    sub-long/2addr v1, v6

    array-length v3, v0

    int-to-long v6, v3

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbey:Ljava/io/InputStream;

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_51

    if-eq v1, v5, :cond_4b

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfc:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfc:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

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
    sget-object v1, Lcom/google/android/gms/internal/ads/zzazz;->zzben:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_5c
    if-nez p3, :cond_5f

    return v4

    :cond_5f
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfb:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_79

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfb:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzcc:J

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbey:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_8e

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbfb:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_88

    return v5

    :cond_88
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_8e
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzcc:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzcc:J

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz p2, :cond_9d

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzns;->zzc(Ljava/lang/Object;I)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9d} :catch_9e

    :cond_9d
    return p1

    :catch_9e
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zznk;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzbew:Lcom/google/android/gms/internal/ads/zznf;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V

    goto :goto_a9

    :goto_a8
    throw p2

    :goto_a9
    goto :goto_a8
.end method

.method final setReceiveBufferSize(I)V
    .registers 4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzebt:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzebu:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    :try_start_1a
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzazz;->zzebt:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_1f
    .catch Ljava/net/SocketException; {:try_start_1a .. :try_end_1f} :catch_20

    goto :goto_8

    :catch_20
    move-exception v0

    const-string v1, "Failed to update receive buffer size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_27
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznf;)J
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Unable to connect to "

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbew:Lcom/google/android/gms/internal/ads/zznf;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzcc:J

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbfc:J

    const/4 v6, 0x1

    :try_start_f
    new-instance v0, Ljava/net/URL;

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zznf;->zzbek:[B

    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zznf;->zzaz(I)Z

    move-result v12

    move-object v14, v7

    move-object v7, v0

    const/4 v0, 0x0

    :goto_27
    add-int/lit8 v15, v0, 0x1

    const/16 v6, 0x14

    if-gt v0, v6, :cond_225

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    instance-of v13, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v13, :cond_3f

    move-object v13, v0

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzebs:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v13, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_3f
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbep:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbeq:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbeu:Lcom/google/android/gms/internal/ads/zznm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zznm;->zzif()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_77

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    goto :goto_57

    :cond_77
    const-wide/16 v4, -0x1

    const-wide/16 v17, 0x0

    cmp-long v6, v8, v17

    if-nez v6, :cond_87

    cmp-long v6, v10, v4

    if-eqz v6, :cond_84

    goto :goto_87

    :cond_84
    move-wide/from16 v16, v8

    goto :goto_d2

    :cond_87
    :goto_87
    const/16 v6, 0x1b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "bytes="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    cmp-long v13, v10, v4

    if-eqz v13, :cond_cb

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    add-long v19, v8, v10

    const-wide/16 v21, 0x1

    sub-long v4, v19, v21

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v16, 0x14

    add-int/lit8 v13, v13, 0x14

    move-wide/from16 v16, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_cd

    :cond_cb
    move-wide/from16 v16, v8

    :goto_cd
    const-string v4, "Range"

    invoke-virtual {v0, v4, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d2
    const-string v4, "User-Agent"

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzber:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_e2

    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz v14, :cond_ea

    const/4 v4, 0x1

    goto :goto_eb

    :cond_ea
    const/4 v4, 0x0

    :goto_eb
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v14, :cond_10a

    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    array-length v4, v14

    if-eqz v4, :cond_10a

    array-length v4, v14

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_10d

    :cond_10a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    :goto_10d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12c

    if-eq v4, v5, :cond_1d1

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_1d1

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_1d1

    const/16 v5, 0x12f

    if-eq v4, v5, :cond_1d1

    if-nez v14, :cond_12d

    const/16 v5, 0x133

    if-eq v4, v5, :cond_1d1

    const/16 v5, 0x134

    if-ne v4, v5, :cond_12d

    goto/16 :goto_1d1

    :cond_12d
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbex:Ljava/net/HttpURLConnection;
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12f} :catch_23e

    :try_start_12f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbex:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_135} :catch_1ab

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_18f

    const/16 v4, 0x12b

    if-le v0, v4, :cond_13e

    goto :goto_18f

    :cond_13e
    if-ne v0, v3, :cond_149

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zznf;->zzamq:J

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-eqz v0, :cond_14b

    goto :goto_14c

    :cond_149
    const-wide/16 v8, 0x0

    :cond_14b
    move-wide v4, v8

    :goto_14c
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbfa:J

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zznf;->zzaz(I)Z

    move-result v0

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zznf;->zzcb:J

    if-nez v0, :cond_16d

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_15e

    goto :goto_16d

    :cond_15e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbex:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazz;->zzc(Ljava/net/HttpURLConnection;)J

    move-result-wide v3

    cmp-long v0, v3, v5

    if-eqz v0, :cond_16c

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbfa:J

    sub-long/2addr v3, v5

    goto :goto_16d

    :cond_16c
    move-wide v3, v5

    :cond_16d
    :goto_16d
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbfb:J

    :try_start_16f
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbex:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbey:Ljava/io/InputStream;
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_16f .. :try_end_177} :catch_184

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbez:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbev:Lcom/google/android/gms/internal/ads/zzns;

    if-eqz v0, :cond_181

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzns;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zznf;)V

    :cond_181
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbfb:J

    return-wide v2

    :catch_184
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzazz;->zzic()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zznk;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V

    throw v3

    :cond_18f
    :goto_18f
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzazz;->zzbex:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzazz;->zzic()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zznj;

    invoke-direct {v4, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zznj;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/zznf;)V

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_1aa

    new-instance v0, Lcom/google/android/gms/internal/ads/zzng;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzng;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_1aa
    throw v4

    :catch_1ab
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzazz;->zzic()V

    new-instance v4, Lcom/google/android/gms/internal/ads/zznk;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1c6

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1cc

    :cond_1c6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_1cc
    const/4 v5, 0x1

    invoke-direct {v4, v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V

    throw v4

    :cond_1d1
    :goto_1d1
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v14, 0x0

    :try_start_1d5
    const-string v4, "Location"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v4, :cond_21d

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v7, v4}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v6, "https"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_215

    const-string v6, "http"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_215

    new-instance v0, Ljava/net/ProtocolException;

    const-string v5, "Unsupported protocol redirect: "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_20c

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_211

    :cond_20c
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_211
    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_215
    move-object v7, v0

    move-wide v4, v8

    move v0, v15

    move-wide/from16 v8, v16

    const/4 v6, 0x1

    goto/16 :goto_27

    :cond_21d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v4, "Null location redirect"

    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_225
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v4, 0x1f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Too many redirects: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_23e
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_23e} :catch_23e

    :catch_23e
    move-exception v0

    new-instance v4, Lcom/google/android/gms/internal/ads/zznk;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zznf;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_256

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_25c

    :cond_256
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_25c
    const/4 v5, 0x1

    invoke-direct {v4, v3, v0, v2, v5}, Lcom/google/android/gms/internal/ads/zznk;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zznf;I)V

    goto :goto_262

    :goto_261
    throw v4

    :goto_262
    goto :goto_261
.end method
