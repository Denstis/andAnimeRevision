###### Class animebestapp.com.ui.info.player.ExoPlayerActivity (animebestapp.com.ui.info.player.ExoPlayerActivity)
.class public final Lanimebestapp/com/ui/info/player/ExoPlayerActivity;
.super Lanimebestapp/com/ui/a/a;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;
.implements Lanimebestapp/com/ui/info/player/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lanimebestapp/com/ui/a/a<",
        "Lanimebestapp/com/ui/info/player/c;",
        "Lanimebestapp/com/ui/info/player/a;",
        ">;",
        "Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;",
        "Lanimebestapp/com/ui/info/player/c;"
    }
.end annotation


# instance fields
.field private A:Z

.field private final B:Ljava/lang/Runnable;

.field private final C:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;

.field private final D:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;

.field private E:Ljava/util/HashMap;

.field private t:Lcom/google/android/gms/ads/InterstitialAd;

.field private final u:F

.field private final v:F

.field private final w:F

.field private x:F

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lanimebestapp/com/ui/a/a;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->u:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->v:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->w:F

    iget v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->u:F

    iput v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->x:F

    const/4 v0, 0x3

    iput v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->y:I

    const-string v0, ""

    iput-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->z:Ljava/lang/String;

    new-instance v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$g;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$g;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    iput-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->B:Ljava/lang/Runnable;

    new-instance v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    iput-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->C:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;

    new-instance v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    iput-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->D:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;

    return-void
.end method

.method private final C()V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$b;

    invoke-direct {v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :try_start_b
    const-string v1, "SSL"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    const-string v0, "sc"

    invoke-static {v1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    sget-object v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$a;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$a;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_2b
    .catch Ljava/security/KeyManagementException; {:try_start_b .. :try_end_2b} :catch_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_2b} :catch_2c

    goto :goto_35

    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_35

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    :goto_35
    return-void
.end method

.method private final D()V
    .registers 5

    iget-object v0, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast v0, Lanimebestapp/com/ui/info/player/a;

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/player/a;->g()Lanimebestapp/com/models/g;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->z:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-nez v1, :cond_69

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lanimebestapp/com/models/g;->f()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_69

    :cond_20
    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_4f

    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    if-eqz v0, :cond_4f

    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_4f
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lanimebestapp/com/ui/FunnyActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->z:Ljava/lang/String;

    const-string v3, "content"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1685

    invoke-virtual {p0, v0, v1}, Lb/k/a/e;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v2, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->A:Z

    :cond_69
    :goto_69
    return-void
.end method

.method private final E()V
    .registers 7

    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    const v2, 0x493e0

    int-to-long v2, v2

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    if-ne v0, v4, :cond_32

    sget v0, Lanimebestapp/com/a;->btnSkip:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$p;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$p;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    :cond_32
    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)I
    .registers 1

    iget p0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->y:I

    return p0
.end method

.method public static final synthetic a(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;I)V
    .registers 2

    iput p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->y:I

    return-void
.end method

.method public static final synthetic b(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->D:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;

    return-object p0
.end method

.method public static final synthetic c(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->C:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;

    return-object p0
.end method

.method public static final synthetic d(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lcom/google/android/gms/ads/InterstitialAd;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->t:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mInterstitialAd"

    invoke-static {p0}, Lg/p/b/f;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic e(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->B:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic f(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)F
    .registers 1

    iget p0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->x:F

    return p0
.end method

.method public static final synthetic g(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lanimebestapp/com/ui/info/player/a;
    .registers 1

    iget-object p0, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p0, Lanimebestapp/com/ui/info/player/a;

    return-object p0
.end method

.method public static final synthetic h(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Z
    .registers 1

    iget-boolean p0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->A:Z

    return p0
.end method

.method public static final synthetic i(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->D()V

    return-void
.end method

.method public static final synthetic j(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 1

    invoke-direct {p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->E()V

    return-void
.end method


# virtual methods
.method public final A()F
    .registers 2

    iget v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->v:F

    return v0
.end method

.method public final B()F
    .registers 2

    iget v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->u:F

    return v0
.end method

.method public final a(Landroid/app/Activity;Z)V
    .registers 12

    const-string v0, "activity"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x8000000

    const-string v1, "decorView"

    const-string v2, "v"

    const/16 v3, 0x13

    const/16 v4, 0xc

    const/16 v5, 0x12

    const/16 v6, 0x800

    const/16 v7, 0x400

    const-string v8, "activity.window"

    if-eqz p2, :cond_6a

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_22

    invoke-virtual {p2, v7}, Landroid/view/Window;->addFlags(I)V

    :cond_22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2b

    invoke-virtual {p2, v6}, Landroid/view/Window;->clearFlags(I)V

    :cond_2b
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, p2, :cond_30

    goto :goto_43

    :cond_30
    if-lt v5, p2, :cond_43

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v8}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x8

    goto :goto_92

    :cond_43
    :goto_43
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_b8

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2, v8}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v2, 0xf06

    invoke-static {p2, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    new-instance p1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$c;

    invoke-direct {p1, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$c;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_b8

    :cond_6a
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_73

    invoke-virtual {p2, v7}, Landroid/view/Window;->clearFlags(I)V

    :cond_73
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_7c

    invoke-virtual {p2, v6}, Landroid/view/Window;->addFlags(I)V

    :cond_7c
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v4, p2, :cond_81

    goto :goto_96

    :cond_81
    if-lt v5, p2, :cond_96

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v8}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_92
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_b8

    :cond_96
    :goto_96
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v3, :cond_b8

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-static {p2, v8}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const/16 v2, 0x900

    invoke-static {p2, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_b8
    :goto_b8
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    new-instance v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/LinkedHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "series"

    invoke-static {p1, v0}, Lg/p/b/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .registers 5

    sget v0, Lanimebestapp/com/a;->btnNext:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "btnNext"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    const/4 v2, 0x4

    :goto_12
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lanimebestapp/com/a;->btnNext:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public c(Z)V
    .registers 5

    sget v0, Lanimebestapp/com/a;->btnPreview:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "btnPreview"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_11

    const/4 v2, 0x0

    goto :goto_12

    :cond_11
    const/4 v2, 0x4

    :goto_12
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lanimebestapp/com/a;->btnPreview:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public d(I)V
    .registers 2

    return-void
.end method

.method public h(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->E:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->E:Ljava/util/HashMap;

    :cond_b
    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->E:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_26

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/d;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->E:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method

.method public l()Lanimebestapp/com/ui/info/player/a;
    .registers 6

    new-instance v0, Lanimebestapp/com/ui/info/player/a;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "anime"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Lanimebestapp/com/models/Anime;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Gson().fromJson(intent.g\u2026ime\"), Anime::class.java)"

    invoke-static {v1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lanimebestapp/com/models/Anime;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "position"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lanimebestapp/com/ui/info/player/a;-><init>(Lanimebestapp/com/models/Anime;I)V

    return-object v0
.end method

.method public bridge synthetic l()Lc/b/a/c/c;
    .registers 2

    invoke-virtual {p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->l()Lanimebestapp/com/ui/info/player/a;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lb/k/a/e;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1685

    if-ne p1, p2, :cond_1e

    sget p1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_1b

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_1b
    const/4 p1, 0x0

    iput-boolean p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->A:Z

    :cond_1e
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-super {p0, p1}, Lanimebestapp/com/ui/a/a;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->C()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1f

    const-string p1, "https://animebestapp.org/donate.html"

    :cond_1f
    const-string v0, "intent.getStringExtra(CO\u2026fEmpty { BuildConfig.RE }"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->z:Ljava/lang/String;

    const p1, 0x7f0b001d

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/a/a;->setContentView(I)V

    iget-object p1, p0, Lc/b/a/c/a;->r:Lc/b/a/c/c;

    check-cast p1, Lanimebestapp/com/ui/info/player/a;

    const/4 v0, 0x0

    invoke-static {p1, v2, v1, v0}, Lanimebestapp/com/ui/info/player/a;->a(Lanimebestapp/com/ui/info/player/a;IILjava/lang/Object;)V

    invoke-virtual {p0, p0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->a(Landroid/app/Activity;Z)V

    sget p1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setControllerVisibilityListener(Lcom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;)V

    sget p1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v2, "playerView"

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setUseController(Z)V

    sget p1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestFocus()Z

    sget p1, Lanimebestapp/com/a;->btnBack:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    new-instance v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$i;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$i;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnSkip:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$j;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$j;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnPreview:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnNext:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnSpeed:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$m;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$m;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnLeft:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p1, Lanimebestapp/com/a;->btnRight:I

    invoke-virtual {p0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0079

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->t:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->t:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v1, "mInterstitialAd"

    if-eqz p1, :cond_124

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->t:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz p1, :cond_120

    new-instance v2, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$h;

    invoke-direct {v2, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$h;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->t:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz p1, :cond_11c

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result p1

    if-nez p1, :cond_11b

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->t:Lcom/google/android/gms/ads/InterstitialAd;

    if-eqz p1, :cond_117

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_11b

    :cond_117
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0

    :cond_11b
    :goto_11b
    return-void

    :cond_11c
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0

    :cond_120
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0

    :cond_124
    invoke-static {v1}, Lg/p/b/f;->c(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->a(Landroid/app/Activity;Z)V

    invoke-super {p0}, Lc/b/a/c/a;->onDestroy()V

    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->release()V

    :cond_1a
    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-super {p0}, Lc/b/a/c/a;->onPause()V

    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_17
    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lc/b/a/c/a;->onResume()V

    return-void
.end method

.method public onVisibilityChange(I)V
    .registers 2

    return-void
.end method

.method public final y()V
    .registers 5

    iget v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->x:F

    iget v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->v:F

    const-string v2, "btnSpeed"

    cmpg-float v1, v0, v1

    if-nez v1, :cond_39

    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v3, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->w:F

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_24
    iget v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->w:F

    iput v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->x:F

    sget v0, Lanimebestapp/com/a;->btnSpeed:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "2x"

    :goto_35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_97

    :cond_39
    iget v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->w:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_6b

    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_59

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v3, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->u:F

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_59
    iget v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->u:F

    iput v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->x:F

    sget v0, Lanimebestapp/com/a;->btnSpeed:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "1x"

    goto :goto_35

    :cond_6b
    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_85

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_85

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget v3, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->v:F

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_85
    iget v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->v:F

    iput v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->x:F

    sget v0, Lanimebestapp/com/a;->btnSpeed:I

    invoke-virtual {p0, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "1.5x"

    goto :goto_35

    :goto_97
    return-void
.end method

.method public final z()F
    .registers 2

    iget v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->w:F

    return v0
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.a (animebestapp.com.ui.info.player.ExoPlayerActivity$a)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$a;

    invoke-direct {v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$a;-><init>()V

    sput-object v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$a;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$a;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.b (animebestapp.com.ui.info.player.ExoPlayerActivity$b)
.class public final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.c (animebestapp.com.ui.info.player.ExoPlayerActivity$c)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->a(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$c;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .registers 3

    if-nez p1, :cond_8

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$c;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, p1, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->a(Landroid/app/Activity;Z)V

    :cond_8
    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.d (animebestapp.com.ui.info.player.ExoPlayerActivity$d)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    iput-object p2, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->c:Ljava/lang/String;

    iput-object p3, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->d:Ljava/lang/String;

    iput-wide p4, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getPlayWhenReady()Z

    move-result v0

    if-ne v0, v2, :cond_3e

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v3, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v3}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/Player;->stop(Z)V

    :cond_2f
    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v3, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v3}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_3e

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_3e
    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v3, Lanimebestapp/com/a;->tvSeries:I

    invoke-virtual {v0, v3}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v3, "tvSeries"

    invoke-static {v0, v3}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \u0441\u0435\u0440\u0438\u044f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lanimebestapp/com/utils/c;->a:Lanimebestapp/com/utils/c$a;

    iget-object v3, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {v0, v3}, Lanimebestapp/com/utils/c$a;->a(Landroid/content/Context;)Lcom/google/android/exoplayer2/SimpleExoPlayer;

    move-result-object v0

    iget-object v3, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v4, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v3, v4}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v3, :cond_7a

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    :cond_7a
    sget-object v3, Lanimebestapp/com/utils/c;->a:Lanimebestapp/com/utils/c$a;

    iget-object v4, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    const/4 v5, 0x2

    invoke-static {v3, v4, v1, v5, v1}, Lanimebestapp/com/utils/c$a;->a(Lanimebestapp/com/utils/c$a;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Lcom/google/android/exoplayer2/upstream/DefaultDataSourceFactory;

    move-result-object v1

    iget-object v4, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "Uri.parse(url)"

    invoke-static {v4, v5}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lanimebestapp/com/utils/c$a;->a(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->prepare(Lcom/google/android/exoplayer2/source/MediaSource;)V

    new-instance v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;

    invoke-direct {v1, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$EventListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positionPlayer: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->e:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LOGS"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v3, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->e:J

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/BasePlayer;->seekTo(J)V

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->f(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)F

    move-result v0

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->A()F

    move-result v1

    cmpg-float v1, v0, v1

    if-nez v1, :cond_f5

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_13b

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_13b

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v2, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {v2}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->A()F

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    :goto_f1
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Player;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto :goto_13b

    :cond_f5
    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->z()F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_11d

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_13b

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_13b

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v2, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {v2}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->z()F

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    goto :goto_f1

    :cond_11d
    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_13b

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_13b

    new-instance v1, Lcom/google/android/exoplayer2/PlaybackParameters;

    iget-object v2, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {v2}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->B()F

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/PlaybackParameters;-><init>(F)V

    goto :goto_f1

    :cond_13b
    :goto_13b
    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.d.a (animebestapp.com.ui.info.player.ExoPlayerActivity$d$a)
.class public final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;
.super Lanimebestapp/com/utils/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    invoke-direct {p0}, Lanimebestapp/com/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOGS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .registers 5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    const-string v0, "EXOPLAYER"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object p1, p1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->a(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)I

    move-result p1

    if-lez p1, :cond_41

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object p1, p1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->a(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->a(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object p1, p1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v0, Lanimebestapp/com/a;->tvSeries:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_41

    new-instance v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a$a;

    invoke-direct {v0, p0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a$a;-><init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_41
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .registers 5

    invoke-super {p0, p1, p2}, Lanimebestapp/com/utils/a;->onPlayerStateChanged(ZI)V

    const/16 p2, 0x80

    const/high16 v0, 0x80000

    if-eqz p1, :cond_27

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object p1, p1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->j(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object p1, p1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object p1, p1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_54

    :cond_27
    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object p1, p1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object v1, v1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->e(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object p1, p1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object p1, p1, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    :goto_54
    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .registers 3

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.d.a.RunnableC0059a (animebestapp.com.ui.info.player.ExoPlayerActivity$d$a$a)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->onPlayerError(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;

    iget-object v0, v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d$a;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;

    iget-object v1, v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    iget-object v2, v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->d:Ljava/lang/String;

    iget-object v3, v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->c:Ljava/lang/String;

    iget-wide v4, v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$d;->e:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.e (animebestapp.com.ui.info.player.ExoPlayerActivity$e)
.class public final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;
.super Lcom/google/android/gms/ads/AdListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->d(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->g(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lanimebestapp/com/ui/info/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/player/a;->e()V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToLoad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOGS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.f (animebestapp.com.ui.info.player.ExoPlayerActivity$f)
.class public final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;
.super Lcom/google/android/gms/ads/AdListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->d(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->g(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lanimebestapp/com/ui/info/player/a;

    move-result-object v0

    invoke-virtual {v0}, Lanimebestapp/com/ui/info/player/a;->h()V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToLoad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOGS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.g (animebestapp.com.ui.info.player.ExoPlayerActivity$g)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$g;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$g;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$g;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->g(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lanimebestapp/com/ui/info/player/a;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lanimebestapp/com/ui/info/player/a;->a(J)V

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$g;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->j(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    :cond_24
    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.h (animebestapp.com.ui.info.player.ExoPlayerActivity$h)
.class public final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$h;
.super Lcom/google/android/gms/ads/AdListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$h;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$h;->a:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->d(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToLoad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LOGS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.i (animebestapp.com.ui.info.player.ExoPlayerActivity$i)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$i;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$i;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {p1}, Lanimebestapp/com/ui/a/a;->onBackPressed()V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.j (animebestapp.com.ui.info.player.ExoPlayerActivity$j)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$j;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$j;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$j;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v0, Lanimebestapp/com/a;->btnSkip:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "btnSkip"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$j;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v0, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v0, "playerView"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    const-string v0, "playerView.player"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    const p1, 0x15f90

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$j;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v2, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p1, v2}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_5c

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :cond_5c
    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.k (animebestapp.com.ui.info.player.ExoPlayerActivity$k)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v0, Lanimebestapp/com/a;->btnSkip:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "btnSkip"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->e(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->d(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_47
    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->d(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->d(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->b(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lanimebestapp/com/ui/info/player/ExoPlayerActivity$e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    goto :goto_69

    :cond_60
    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->g(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lanimebestapp/com/ui/info/player/a;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/player/a;->e()V

    :goto_69
    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$k;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->i(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.l (animebestapp.com.ui.info.player.ExoPlayerActivity$l)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v0, Lanimebestapp/com/a;->btnSkip:I

    invoke-virtual {p1, v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "btnSkip"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    iget-object v1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->e(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->d(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {p1, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player;->setPlayWhenReady(Z)V

    :cond_47
    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->d(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->d(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object p1

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {v0}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->c(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lanimebestapp/com/ui/info/player/ExoPlayerActivity$f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    goto :goto_69

    :cond_60
    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->g(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)Lanimebestapp/com/ui/info/player/a;

    move-result-object p1

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/player/a;->h()V

    :goto_69
    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$l;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-static {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->i(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.m (animebestapp.com.ui.info.player.ExoPlayerActivity$m)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$m;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$m;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-virtual {p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->y()V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.n (animebestapp.com.ui.info.player.ExoPlayerActivity$n)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v1, "playerView"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const-string v1, "playerView.player"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v0

    const/16 v2, 0x2710

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_39

    move-wide v0, v2

    :cond_39
    const-string v2, "it"

    invoke-static {p1, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v3, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v2, v3}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v2, :cond_59

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v2

    if-eqz v2, :cond_59

    invoke-interface {v2, v0, v1}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :cond_59
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n$a;

    invoke-direct {v0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n$a;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6b
    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.n.a (animebestapp.com.ui.info.player.ExoPlayerActivity$n$a)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$n$a;->b:Landroid/view/View;

    const-string v1, "it"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.o (animebestapp.com.ui.info.player.ExoPlayerActivity$o)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    const-string v1, "playerView"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    const-string v2, "playerView.player"

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v3

    const/16 v0, 0x2710

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v5, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v5}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_66

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v3, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v3}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    invoke-static {v0, v2}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player;->getDuration()J

    move-result-wide v3

    :cond_66
    const-string v0, "it"

    invoke-static {p1, v0}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->playerView:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/ui/PlayerView;

    if-eqz v0, :cond_86

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/PlayerView;->getPlayer()Lcom/google/android/exoplayer2/Player;

    move-result-object v0

    if-eqz v0, :cond_86

    invoke-interface {v0, v3, v4}, Lcom/google/android/exoplayer2/Player;->seekTo(J)V

    :cond_86
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o$a;

    invoke-direct {v0, p1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o$a;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_98
    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.o.a (animebestapp.com.ui.info.player.ExoPlayerActivity$o$a)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$o$a;->b:Landroid/view/View;

    const-string v1, "it"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

###### Class animebestapp.com.ui.info.player.ExoPlayerActivity.p (animebestapp.com.ui.info.player.ExoPlayerActivity$p)
.class final Lanimebestapp/com/ui/info/player/ExoPlayerActivity$p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;


# direct methods
.method constructor <init>(Lanimebestapp/com/ui/info/player/ExoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$p;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lanimebestapp/com/ui/info/player/ExoPlayerActivity$p;->b:Lanimebestapp/com/ui/info/player/ExoPlayerActivity;

    sget v1, Lanimebestapp/com/a;->btnSkip:I

    invoke-virtual {v0, v1}, Lanimebestapp/com/ui/info/player/ExoPlayerActivity;->h(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "btnSkip"

    invoke-static {v0, v1}, Lg/p/b/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
