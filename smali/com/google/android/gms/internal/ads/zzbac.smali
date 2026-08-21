###### Class com.google.android.gms.internal.ads.zzbac (com.google.android.gms.internal.ads.zzbac)
.class final Lcom/google/android/gms/internal/ads/zzbac;
.super Ljavax/net/ssl/SSLSocketFactory;
.source ""


# instance fields
.field private zzeca:Ljavax/net/ssl/SSLSocketFactory;

.field private final synthetic zzecb:Lcom/google/android/gms/internal/ads/zzazz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecb:Lcom/google/android/gms/internal/ads/zzazz;

    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocketFactory;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeca:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method private final zzb(Ljava/net/Socket;)Ljava/net/Socket;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecb:Lcom/google/android/gms/internal/ads/zzazz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazz;->zza(Lcom/google/android/gms/internal/ads/zzazz;)I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecb:Lcom/google/android/gms/internal/ads/zzazz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzazz;->zza(Lcom/google/android/gms/internal/ads/zzazz;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecb:Lcom/google/android/gms/internal/ads/zzazz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzazz;->zza(Lcom/google/android/gms/internal/ads/zzazz;Ljava/net/Socket;)V

    return-object p1
.end method


# virtual methods
.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeca:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbac;->zzb(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeca:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbac;->zzb(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeca:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbac;->zzb(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeca:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbac;->zzb(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeca:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbac;->zzb(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeca:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeca:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
