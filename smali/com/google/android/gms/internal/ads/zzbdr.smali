###### Class com.google.android.gms.internal.ads.zzbdr (com.google.android.gms.internal.ads.zzbdr)
.class final Lcom/google/android/gms/internal/ads/zzbdr;
.super Lcom/google/android/gms/internal/ads/zzbdx;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/ads/zzagv;
.implements Lcom/google/android/gms/internal/ads/zzbbw;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation


# instance fields
.field private maxHeight:I

.field private maxWidth:I

.field private zzabd:Ljava/lang/String;

.field private final zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

.field private final zzbnk:Landroid/view/WindowManager;

.field private zzdgn:I

.field private zzdgo:I

.field private zzdia:Z

.field private zzdje:Ljava/lang/String;

.field private zzeat:Lcom/google/android/gms/internal/ads/zzzz;

.field private final zzeen:Lcom/google/android/gms/internal/ads/zzsd;

.field private final zzega:Lcom/google/android/gms/internal/ads/zzbdk;

.field private final zzegb:Lcom/google/android/gms/internal/ads/zzdf;

.field private final zzegc:Lcom/google/android/gms/ads/internal/zzi;

.field private final zzegd:Lcom/google/android/gms/ads/internal/zza;

.field private final zzegf:Lcom/google/android/gms/internal/ads/zzrf;

.field private final zzegg:Z

.field private zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field private zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

.field private zzego:Z

.field private zzegp:Z

.field private zzegq:I

.field private zzegr:Z

.field private zzegs:Z

.field private zzegt:Lcom/google/android/gms/internal/ads/zzbco;

.field private zzegu:Z

.field private zzegv:Z

.field private zzegw:Lcom/google/android/gms/internal/ads/zzaaw;

.field private zzegx:Lcom/google/android/gms/internal/ads/zzaav;

.field private zzegy:Lcom/google/android/gms/internal/ads/zzqr;

.field private zzegz:I

.field private zzeha:I

.field private zzehb:Lcom/google/android/gms/internal/ads/zzzz;

.field private zzehc:Lcom/google/android/gms/internal/ads/zzzz;

.field private zzehd:Lcom/google/android/gms/internal/ads/zzzy;

.field private zzehe:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzehf:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field private zzehh:Lcom/google/android/gms/internal/ads/zzawv;

.field private zzehi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzbax;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

.field private final zzeid:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/dynamic/IObjectWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final zzwl:Landroid/util/DisplayMetrics;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzbdk;Lcom/google/android/gms/internal/ads/zzbdm;Lcom/google/android/gms/internal/ads/zzbdj;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdf;Lcom/google/android/gms/internal/ads/zzaxl;Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/ads/internal/zzi;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzsd;Lcom/google/android/gms/internal/ads/zzrf;Z)V
    .registers 16
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdv;)V

    const/4 p6, 0x1

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegr:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegs:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdje:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeid:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdgo:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdgn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->maxWidth:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->maxHeight:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzega:Lcom/google/android/gms/internal/ads/zzbdk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzabd:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzego:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegq:I

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegb:Lcom/google/android/gms/internal/ads/zzdf;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegc:Lcom/google/android/gms/ads/internal/zzi;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegd:Lcom/google/android/gms/ads/internal/zza;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbnk:Landroid/view/WindowManager;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbnk:Landroid/view/WindowManager;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeen:Lcom/google/android/gms/internal/ads/zzsd;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegf:Lcom/google/android/gms/internal/ads/zzrf;

    iput-boolean p14, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegg:Z

    new-instance p2, Lcom/google/android/gms/internal/ads/zzawv;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzega:Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbdk;->zzxn()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lcom/google/android/gms/internal/ads/zzawv;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehh:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object p2

    iget-object p3, p8, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p5

    invoke-virtual {p2, p1, p3, p5}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaak()V

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbcp;->zzc(Lcom/google/android/gms/internal/ads/zzbbw;)Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object p2

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdx;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_80
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaao()V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzzy;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzaab;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzabd:Ljava/lang/String;

    const-string p7, "make_wv"

    invoke-direct {p3, p6, p7, p5}, Lcom/google/android/gms/internal/ads/zzaab;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzzy;-><init>(Lcom/google/android/gms/internal/ads/zzaab;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzzy;->zzpy()Lcom/google/android/gms/internal/ads/zzaab;

    move-result-object p2

    invoke-virtual {p2, p9}, Lcom/google/android/gms/internal/ads/zzaab;->zzc(Lcom/google/android/gms/internal/ads/zzaab;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzzy;->zzpy()Lcom/google/android/gms/internal/ads/zzaab;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzzs;->zzb(Lcom/google/android/gms/internal/ads/zzaab;)Lcom/google/android/gms/internal/ads/zzzz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeat:Lcom/google/android/gms/internal/ads/zzzz;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeat:Lcom/google/android/gms/internal/ads/zzzz;

    const-string p5, "native:view_create"

    invoke-virtual {p2, p5, p3}, Lcom/google/android/gms/internal/ads/zzzy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzzz;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehc:Lcom/google/android/gms/internal/ads/zzzz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehb:Lcom/google/android/gms/internal/ads/zzzz;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaur;->zzbc(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdr;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeha:I

    return p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzbdr;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeha:I

    return p1
.end method

.method static final synthetic zza(ZILcom/google/android/gms/internal/ads/zztl;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzsp$zzw;->zznv()Lcom/google/android/gms/internal/ads/zzsp$zzw$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsp$zzw$zza;->zznu()Z

    move-result v1

    if-eq v1, p0, :cond_d

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzsp$zzw$zza;->zzp(Z)Lcom/google/android/gms/internal/ads/zzsp$zzw$zza;

    :cond_d
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzsp$zzw$zza;->zzce(I)Lcom/google/android/gms/internal/ads/zzsp$zzw$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzsp$zzw;

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zztl;->zzcaz:Lcom/google/android/gms/internal/ads/zzsp$zzw;

    return-void
.end method

.method private final zzaah()Z
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzyw()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzyx()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    :cond_12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzega:Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdk;->zzxn()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_38

    goto :goto_58

    :cond_38
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaul;->zzd(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzawy;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_5a

    :cond_58
    :goto_58
    move v6, v4

    move v7, v5

    :goto_5a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdgn:I

    if-ne v0, v4, :cond_6b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdgo:I

    if-ne v0, v5, :cond_6b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->maxWidth:I

    if-ne v0, v6, :cond_6b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->maxHeight:I

    if-ne v0, v7, :cond_6b

    return v1

    :cond_6b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdgn:I

    if-ne v0, v4, :cond_73

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdgo:I

    if-eq v0, v5, :cond_74

    :cond_73
    const/4 v1, 0x1

    :cond_74
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdgn:I

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdgo:I

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzbdr;->maxWidth:I

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzbdr;->maxHeight:I

    new-instance v3, Lcom/google/android/gms/internal/ads/zzanj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzbnk:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzanj;->zza(IIIIFI)V

    return v1
.end method

.method private final zzaaj()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->zzpy()Lcom/google/android/gms/internal/ads/zzaab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeat:Lcom/google/android/gms/internal/ads/zzzz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aeh2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzs;->zza(Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/internal/ads/zzzz;[Ljava/lang/String;)Z

    return-void
.end method

.method private final declared-synchronized zzaak()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzego:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaau()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1e

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaal()V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_32

    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaam()V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_32

    monitor-exit p0

    return-void

    :cond_28
    :goto_28
    :try_start_28
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaam()V
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_32

    monitor-exit p0

    return-void

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzaal()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegp:Z

    const/4 v1, 0x1

    if-nez v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegp:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzaam()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegp:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegp:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized zzaan()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Ljava/util/Map;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbax;->release()V

    goto :goto_f

    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Ljava/util/Map;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method

.method private final zzaao()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->zzpy()Lcom/google/android/gms/internal/ads/zzaab;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatr;->zzub()Lcom/google/android/gms/internal/ads/zzzr;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatr;->zzub()Lcom/google/android/gms/internal/ads/zzzr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzzr;->zza(Lcom/google/android/gms/internal/ads/zzaab;)Z

    :cond_20
    return-void
.end method

.method private final zzav(Z)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_c

    :cond_a
    const-string p1, "0"

    :goto_c
    const-string v1, "isVisible"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzagu;->zza(Lcom/google/android/gms/internal/ads/zzagv;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .registers 1

    return-object p0
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehh:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawv;->onAttachedToWindow()V

    :cond_f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegu:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzyx()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegv:Z

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzyy()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzyz()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegv:Z

    :cond_2e
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaah()Z

    const/4 v0, 0x1

    :cond_32
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzav(Z)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehh:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawv;->onDetachedFromWindow()V

    :cond_c
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegv:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzyx()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzyy()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzyz()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegv:Z

    :cond_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_41

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbdr;->zzav(Z)V

    return-void

    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    :catch_19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzdv(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/webkit/WebView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdx;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_41

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_20

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_20
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2b

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_2b
    cmpl-float v0, v1, v3

    if-lez v0, :cond_35

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_35
    cmpg-float v0, v1, v3

    if-gez v0, :cond_41

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_3f
    const/4 p1, 0x0

    return p1

    :cond_41
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaah()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzzl()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzst()V

    :cond_f
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1f3

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1ee

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzego:Z

    if-nez v0, :cond_1ee

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaav()Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_1ee

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaax()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_1f3

    monitor-exit p0

    return-void

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaaw()Z

    move-result v0

    if-eqz v0, :cond_91

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcol:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_4b
    .catchall {:try_start_2e .. :try_end_4b} :catchall_1f3

    monitor-exit p0

    return-void

    :cond_4d
    :try_start_4d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzxl()Lcom/google/android/gms/internal/ads/zzbco;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbco;->getAspectRatio()F

    move-result v0

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    cmpl-float v1, v0, v1

    if-nez v1, :cond_63

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_1f3

    monitor-exit p0

    return-void

    :cond_63
    :try_start_63
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_7c

    if-eqz v2, :cond_7c

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_84

    :cond_7c
    if-nez p1, :cond_84

    if-eqz v1, :cond_84

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    :cond_84
    :goto_84
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_8f
    .catchall {:try_start_63 .. :try_end_8f} :catchall_1f3

    monitor-exit p0

    return-void

    :cond_91
    :try_start_91
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->isFluid()Z

    move-result v0

    if-eqz v0, :cond_e3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcoo:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_de

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastJellyBeanMR1()Z

    move-result v0

    if-nez v0, :cond_b2

    goto :goto_de

    :cond_b2
    const-string v0, "/contentHeight"

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbdt;-><init>(Lcom/google/android/gms/internal/ads/zzbdr;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbdr;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzct(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeha:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d5

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeha:I

    int-to-float p2, p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_d9

    :cond_d5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_d9
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_dc
    .catchall {:try_start_91 .. :try_end_dc} :catchall_1f3

    monitor-exit p0

    return-void

    :cond_de
    :goto_de
    :try_start_de
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_1f3

    monitor-exit p0

    return-void

    :cond_e3
    :try_start_e3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaau()Z

    move-result v0

    if-eqz v0, :cond_f8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_f6
    .catchall {:try_start_e3 .. :try_end_f6} :catchall_1f3

    monitor-exit p0

    return-void

    :cond_f8
    :try_start_f8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_118

    if-ne v0, v3, :cond_114

    goto :goto_118

    :cond_114
    const v0, 0x7fffffff

    goto :goto_119

    :cond_118
    :goto_118
    move v0, p1

    :goto_119
    if-eq v2, v4, :cond_11d

    if-ne v2, v3, :cond_11e

    :cond_11d
    move v5, p2

    :cond_11e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbdj;->widthPixels:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_12e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbdj;->heightPixels:I

    if-le v2, v5, :cond_12c

    goto :goto_12e

    :cond_12c
    const/4 v2, 0x0

    goto :goto_12f

    :cond_12e
    :goto_12e
    const/4 v2, 0x1

    :goto_12f
    sget-object v4, Lcom/google/android/gms/internal/ads/zzza;->zzcrj:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_16e

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbdj;->widthPixels:I

    int-to-float v4, v4

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_16a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbdj;->heightPixels:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v4

    int-to-float v4, v5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_16a

    goto :goto_16b

    :cond_16a
    const/4 v3, 0x0

    :goto_16b
    if-eqz v2, :cond_16e

    move v2, v3

    :cond_16e
    const/16 v0, 0x8

    if-eqz v2, :cond_1d8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbdj;->widthPixels:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbdj;->heightPixels:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float p1, p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v4

    float-to-int p1, p1

    int-to-float p2, p2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzwl:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v4

    float-to-int p2, p2

    const/16 v4, 0x67

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Not enough space to show ad. Needs "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1d3

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1d3
    invoke-virtual {p0, v1, v1}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_1d6
    .catchall {:try_start_f8 .. :try_end_1d6} :catchall_1f3

    monitor-exit p0

    return-void

    :cond_1d8
    :try_start_1d8
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_1e1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_1e1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbdj;->widthPixels:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbdj;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V
    :try_end_1ec
    .catchall {:try_start_1d8 .. :try_end_1ec} :catchall_1f3

    monitor-exit p0

    return-void

    :cond_1ee
    :goto_1ee
    :try_start_1ee
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1f1
    .catchall {:try_start_1ee .. :try_end_1f1} :catchall_1f3

    monitor-exit p0

    return-void

    :catchall_1f3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->onPause()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResume()V
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->onResume()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdm;->zzyx()Z

    move-result v0

    if-eqz v0, :cond_17

    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegw:Lcom/google/android/gms/internal/ads/zzaaw;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegw:Lcom/google/android/gms/internal/ads/zzaaw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaaw;->zzc(Landroid/view/MotionEvent;)V

    :cond_12
    monitor-exit p0

    goto :goto_1e

    :catchall_14
    move-exception p1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw p1

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegb:Lcom/google/android/gms/internal/ads/zzdf;

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdf;->zzb(Landroid/view/MotionEvent;)V

    :cond_1e
    :goto_1e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdx;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehe:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegq:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegq:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->setRequestedOrientation(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final stopLoading()V
    .registers 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->stopLoading()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaag()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "AR ad is not enabled or the ad from the server is not an AR ad."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1d
    const-string v0, "Initializing ArWebView object."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegf:Lcom/google/android/gms/internal/ads/zzrf;

    invoke-interface {v0, p2, p0}, Lcom/google/android/gms/internal/ads/zzrf;->zza(Landroid/app/Activity;Landroid/webkit/WebView;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegf:Lcom/google/android/gms/internal/ads/zzrf;

    invoke-interface {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzrf;->zze(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_38

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegf:Lcom/google/android/gms/internal/ads/zzrf;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzrf;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_38
    const-string p1, "The FrameLayout object cannot be null."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaav;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegx:Lcom/google/android/gms/internal/ads/zzaav;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzaaw;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegw:Lcom/google/android/gms/internal/ads/zzaaw;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbco;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegt:Lcom/google/android/gms/internal/ads/zzbco;

    if-eqz v0, :cond_c

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegt:Lcom/google/android/gms/internal/ads/zzbco;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzbdj;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzpk;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzpk;->zzbnp:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegu:Z

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_c

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzpk;->zzbnp:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdr;->zzav(Z)V

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzqr;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegy:Lcom/google/android/gms/internal/ads/zzqr;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/Predicate<",
            "Lcom/google/android/gms/internal/ads/zzaer<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V

    :cond_7
    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaer<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    :cond_7
    return-void
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbax;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Ljava/util/Map;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Ljava/util/Map;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagu;->zza(Lcom/google/android/gms/internal/ads/zzagv;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagu;->zza(Lcom/google/android/gms/internal/ads/zzagv;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(ZILjava/lang/String;)V

    return-void
.end method

.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbdm;->zza(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(ZJ)V
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_b

    const-string p1, "1"

    goto :goto_d

    :cond_b
    const-string p1, "0"

    :goto_d
    const-string v1, "success"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onCacheAccessComplete"

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzagu;->zza(Lcom/google/android/gms/internal/ads/zzagv;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzaaa()Lcom/google/android/gms/internal/ads/zzaaw;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegw:Lcom/google/android/gms/internal/ads/zzaaw;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzaab()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzaac()V
    .registers 2

    const-string v0, "Cannot add text view to inner AdWebView"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized zzaad()Lcom/google/android/gms/internal/ads/zzqr;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegy:Lcom/google/android/gms/internal/ads/zzqr;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzaae()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzaaf()Lcom/google/android/gms/internal/ads/zzrf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegf:Lcom/google/android/gms/internal/ads/zzrf;

    return-object v0
.end method

.method public final zzaag()Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcth:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegf:Lcom/google/android/gms/internal/ads/zzrf;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegg:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized zzae(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzyw()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zza(ZZ)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_16

    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdia:Z
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzao(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzao(Z)V

    return-void
.end method

.method public final zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeid:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzaq(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdm;->zzaq(Z)V

    return-void
.end method

.method public final declared-synchronized zzas(Z)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzego:Z

    if-eq p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzego:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaak()V

    if-eqz v0, :cond_38

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcii:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdj;->zzaau()Z

    move-result v0

    if-nez v0, :cond_38

    :cond_29
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzanj;-><init>(Lcom/google/android/gms/internal/ads/zzbbw;)V

    if-eqz p1, :cond_33

    const-string p1, "expanded"

    goto :goto_35

    :cond_33
    const-string p1, "default"

    :goto_35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzanj;->zzdp(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit p0

    return-void

    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzat(Z)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegr:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzau(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegz:I

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, -0x1

    :goto_8
    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegz:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegz:I

    if-gtz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzsw()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized zzaw(Z)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_1c

    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaao()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehh:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawv;->zzwg()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->close()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;->onDestroy()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;

    :cond_1c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeid:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbdm;->destroy()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlf()Lcom/google/android/gms/internal/ads/zzbay;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbay;->zzc(Lcom/google/android/gms/internal/ads/zzazj;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaan()V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehf:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaer<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbbw;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdm;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaer;)V

    :cond_7
    return-void
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcz;->zzaaq()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzbcz;->zzf(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    move-object v3, p0

    move-object v4, p1

    move-object v8, p3

    invoke-super/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzbdx;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagu;->zzb(Lcom/google/android/gms/internal/ads/zzagv;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzb(ZI)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdm;->zzb(ZI)V

    return-void
.end method

.method public final zzbr(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzega:Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbdk;->setBaseContext(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehh:Lcom/google/android/gms/internal/ads/zzawv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzega:Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdk;->zzxn()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzawv;->zzh(Landroid/app/Activity;)V

    return-void
.end method

.method public final zzc(ZI)Z
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeen:Lcom/google/android/gms/internal/ads/zzsd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbdu;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbdu;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzsd;->zza(Lcom/google/android/gms/internal/ads/zzsg;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeen:Lcom/google/android/gms/internal/ads/zzsd;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzsf$zza$zza;->zzbts:Lcom/google/android/gms/internal/ads/zzsf$zza$zza;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzsd;->zza(Lcom/google/android/gms/internal/ads/zzsf$zza$zza;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final declared-synchronized zzct(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdx;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzbdx;->zzct(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    monitor-exit p0

    return-void

    :cond_c
    :try_start_c
    const-string p1, "The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzdb(I)V
    .registers 7

    if-nez p1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->zzpy()Lcom/google/android/gms/internal/ads/zzaab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeat:Lcom/google/android/gms/internal/ads/zzzz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aebb2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzs;->zza(Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/internal/ads/zzzz;[Ljava/lang/String;)Z

    :cond_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaaj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->zzpy()Lcom/google/android/gms/internal/ads/zzaab;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->zzpy()Lcom/google/android/gms/internal/ads/zzaab;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaab;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzagu;->zza(Lcom/google/android/gms/internal/ads/zzagv;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized zzez(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbax;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_8

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehi:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbax;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzjp()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegs:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegc:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegc:Lcom/google/android/gms/ads/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzi;->zzjp()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzjq()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegs:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegc:Lcom/google/android/gms/ads/internal/zzi;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegc:Lcom/google/android/gms/ads/internal/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzi;->zzjq()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzagu;->zza(Lcom/google/android/gms/internal/ads/zzagv;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzsu()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehb:Lcom/google/android/gms/internal/ads/zzzz;

    const/4 v1, 0x1

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->zzpy()Lcom/google/android/gms/internal/ads/zzaab;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeat:Lcom/google/android/gms/internal/ads/zzzz;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "aes2"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzzs;->zza(Lcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/internal/ads/zzzz;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->zzpy()Lcom/google/android/gms/internal/ads/zzaab;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzs;->zzb(Lcom/google/android/gms/internal/ads/zzaab;)Lcom/google/android/gms/internal/ads/zzzz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehb:Lcom/google/android/gms/internal/ads/zzzz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehb:Lcom/google/android/gms/internal/ads/zzzz;

    const-string v3, "native:view_show"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzzy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzzz;)V

    :cond_2c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzagu;->zza(Lcom/google/android/gms/internal/ads/zzagv;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzsv()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzzl()Lcom/google/android/gms/ads/internal/overlay/zzc;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzsv()V

    :cond_9
    return-void
.end method

.method public final zzxk()Lcom/google/android/gms/internal/ads/zzazc;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzxl()Lcom/google/android/gms/internal/ads/zzbco;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegt:Lcom/google/android/gms/internal/ads/zzbco;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzxm()Lcom/google/android/gms/internal/ads/zzzz;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeat:Lcom/google/android/gms/internal/ads/zzzz;

    return-object v0
.end method

.method public final zzxn()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzega:Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdk;->zzxn()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzxo()Lcom/google/android/gms/ads/internal/zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegd:Lcom/google/android/gms/ads/internal/zza;

    return-object v0
.end method

.method public final declared-synchronized zzxp()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdje:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzxq()Lcom/google/android/gms/internal/ads/zzzy;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    return-object v0
.end method

.method public final zzxr()Lcom/google/android/gms/internal/ads/zzaxl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    return-object v0
.end method

.method public final zzxs()I
    .registers 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzxt()I
    .registers 2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized zzxu()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegx:Lcom/google/android/gms/internal/ads/zzaav;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegx:Lcom/google/android/gms/internal/ads/zzaav;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaav;->zzqj()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzzi()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdr;->zzaaj()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaxl;->zzblz:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzagu;->zza(Lcom/google/android/gms/internal/ads/zzagv;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzzj()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzko()Lcom/google/android/gms/internal/ads/zzave;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzave;->zzot()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzko()Lcom/google/android/gms/internal/ads/zzave;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzave;->zzos()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzave;->zzbe(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzagu;->zza(Lcom/google/android/gms/internal/ads/zzagv;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzzk()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzega:Lcom/google/android/gms/internal/ads/zzbdk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbdk;->zzzk()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zzzl()Lcom/google/android/gms/ads/internal/overlay/zzc;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegk:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzzm()Lcom/google/android/gms/ads/internal/overlay/zzc;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehf:Lcom/google/android/gms/ads/internal/overlay/zzc;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzzn()Lcom/google/android/gms/internal/ads/zzbdj;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegm:Lcom/google/android/gms/internal/ads/zzbdj;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzzo()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzabd:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic zzzp()Lcom/google/android/gms/internal/ads/zzbdg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    return-object v0
.end method

.method public final zzzq()Landroid/webkit/WebViewClient;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeic:Lcom/google/android/gms/internal/ads/zzbdm;

    return-object v0
.end method

.method public final declared-synchronized zzzr()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzdia:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzzs()Lcom/google/android/gms/internal/ads/zzdf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegb:Lcom/google/android/gms/internal/ads/zzdf;

    return-object v0
.end method

.method public final zzzt()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzeid:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method

.method public final declared-synchronized zzzu()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzego:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzzv()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized zzzw()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegr:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzzx()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzegz:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method public final zzzy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehh:Lcom/google/android/gms/internal/ads/zzawv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawv;->zzwf()V

    return-void
.end method

.method public final zzzz()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehc:Lcom/google/android/gms/internal/ads/zzzz;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzy;->zzpy()Lcom/google/android/gms/internal/ads/zzaab;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzs;->zzb(Lcom/google/android/gms/internal/ads/zzaab;)Lcom/google/android/gms/internal/ads/zzzz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehc:Lcom/google/android/gms/internal/ads/zzzz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehd:Lcom/google/android/gms/internal/ads/zzzy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdr;->zzehc:Lcom/google/android/gms/internal/ads/zzzz;

    const-string v2, "native:view_load"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzzy;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzzz;)V

    :cond_19
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbdu (com.google.android.gms.internal.ads.zzbdu)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbdu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsg;


# instance fields
.field private final zzdtk:I

.field private final zzefz:Z


# direct methods
.method constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzefz:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzdtk:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zztl;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzefz:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdu;->zzdtk:I

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbdr;->zza(ZILcom/google/android/gms/internal/ads/zztl;)V

    return-void
.end method
