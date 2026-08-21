###### Class com.google.android.gms.internal.ads.zzbdv (com.google.android.gms.internal.ads.zzbdv)
.class public Lcom/google/android/gms/internal/ads/zzbdv;
.super Landroid/webkit/WebViewClient;
.source ""


# static fields
.field private static final zzeek:[Ljava/lang/String;

.field private static final zzeel:[Ljava/lang/String;


# instance fields
.field private zzeif:Lcom/google/android/gms/internal/ads/zzbec;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "HOST_LOOKUP"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "UNSUPPORTED_AUTH_SCHEME"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "AUTHENTICATION"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "PROXY_AUTHENTICATION"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "CONNECT"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "IO"

    aput-object v8, v0, v7

    const/4 v8, 0x7

    const-string v9, "TIMEOUT"

    aput-object v9, v0, v8

    const/16 v8, 0x8

    const-string v9, "REDIRECT_LOOP"

    aput-object v9, v0, v8

    const/16 v8, 0x9

    const-string v9, "UNSUPPORTED_SCHEME"

    aput-object v9, v0, v8

    const/16 v8, 0xa

    const-string v9, "FAILED_SSL_HANDSHAKE"

    aput-object v9, v0, v8

    const/16 v8, 0xb

    const-string v9, "BAD_URL"

    aput-object v9, v0, v8

    const/16 v8, 0xc

    const-string v9, "FILE"

    aput-object v9, v0, v8

    const/16 v8, 0xd

    const-string v9, "FILE_NOT_FOUND"

    aput-object v9, v0, v8

    const/16 v8, 0xe

    const-string v9, "TOO_MANY_REQUESTS"

    aput-object v9, v0, v8

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeek:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "NOT_YET_VALID"

    aput-object v7, v0, v1

    const-string v1, "EXPIRED"

    aput-object v1, v0, v2

    const-string v1, "ID_MISMATCH"

    aput-object v1, v0, v3

    const-string v1, "UNTRUSTED"

    aput-object v1, v0, v4

    const-string v1, "DATE_INVALID"

    aput-object v1, v0, v5

    const-string v1, "INVALID"

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeel:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string p1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_14
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_1a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzb(Lcom/google/android/gms/internal/ads/zzbdy;)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeif:Lcom/google/android/gms/internal/ads/zzbec;

    if-eqz p2, :cond_10

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbec;->zza(Lcom/google/android/gms/internal/ads/zzbdy;)V

    return-void

    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Lcom/google/android/gms/internal/ads/zzbdy;)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-gez p2, :cond_a

    neg-int p1, p2

    add-int/lit8 p1, p1, -0x1

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbdv;->zzeek:[Ljava/lang/String;

    array-length p3, p3

    if-lt p1, p3, :cond_d

    :cond_a
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    :cond_d
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    if-ltz p1, :cond_e

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbdv;->zzeel:[Ljava/lang/String;

    array-length p2, p2

    if-lt p1, p2, :cond_11

    :cond_e
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    :cond_11
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    if-eqz p2, :cond_13

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_13

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzd(Lcom/google/android/gms/internal/ads/zzbdy;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzd(Lcom/google/android/gms/internal/ads/zzbdy;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_14

    const/16 p2, 0xde

    if-eq p1, p2, :cond_14

    packed-switch p1, :pswitch_data_16

    packed-switch p1, :pswitch_data_28

    const/4 p1, 0x0

    return p1

    :cond_14
    :pswitch_14
    const/4 p1, 0x1

    return p1

    :pswitch_data_16
    .packed-switch 0x55
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_28
    .packed-switch 0x7e
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    if-eqz p2, :cond_13

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_13

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzc(Lcom/google/android/gms/internal/ads/zzbdy;)Z

    move-result p1

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbdy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzc(Lcom/google/android/gms/internal/ads/zzbdy;)Z

    move-result p1

    return p1
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzbdy;)V
    .registers 2

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbec;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdv;->zzeif:Lcom/google/android/gms/internal/ads/zzbec;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzbdy;)V
    .registers 2

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/ads/zzbdy;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public zzd(Lcom/google/android/gms/internal/ads/zzbdy;)Landroid/webkit/WebResourceResponse;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method
