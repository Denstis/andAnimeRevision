###### Class com.google.android.gms.internal.ads.zzayw (com.google.android.gms.internal.ads.zzayw)
.class public final Lcom/google/android/gms/internal/ads/zzayw;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzayr;


# instance fields
.field private final zzdya:Lcom/google/android/gms/internal/ads/zzazj;

.field private final zzdyb:Landroid/widget/FrameLayout;

.field private final zzdyc:Lcom/google/android/gms/internal/ads/zzaab;

.field private final zzdyd:Lcom/google/android/gms/internal/ads/zzazl;

.field private final zzdye:J

.field private zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

.field private zzdyg:Z

.field private zzdyh:Z

.field private zzdyi:Z

.field private zzdyj:Z

.field private zzdyk:J

.field private zzdyl:J

.field private zzdym:Ljava/lang/String;

.field private zzdyn:[Ljava/lang/String;

.field private zzdyo:Landroid/graphics/Bitmap;

.field private zzdyp:Landroid/widget/ImageView;

.field private zzdyq:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazj;IZLcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/internal/ads/zzazk;)V
    .registers 17

    move-object v0, p0

    move-object v8, p1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v3, p2

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdya:Lcom/google/android/gms/internal/ads/zzazj;

    move-object v6, p5

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyc:Lcom/google/android/gms/internal/ads/zzaab;

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyb:Landroid/widget/FrameLayout;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyb:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v2, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzazj;->zzxo()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzazj;->zzxo()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zza;->zzbko:Lcom/google/android/gms/internal/ads/zzayt;

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzayt;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazj;IZLcom/google/android/gms/internal/ads/zzaab;Lcom/google/android/gms/internal/ads/zzazk;)Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-eqz v1, :cond_5a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyb:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v9, v9, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzchp:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzayw;->zzxc()V

    :cond_5a
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyp:Landroid/widget/ImageView;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzcht:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdye:J

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzchr:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyj:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyc:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v1, :cond_97

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyj:Z

    if-eqz v2, :cond_90

    const-string v2, "1"

    goto :goto_92

    :cond_90
    const-string v2, "0"

    :goto_92
    const-string v3, "spinner_used"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaab;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    new-instance v1, Lcom/google/android/gms/internal/ads/zzazl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzazl;-><init>(Lcom/google/android/gms/internal/ads/zzayw;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyd:Lcom/google/android/gms/internal/ads/zzazl;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-eqz v1, :cond_a5

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Lcom/google/android/gms/internal/ads/zzayr;)V

    :cond_a5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v1, :cond_b0

    const-string v1, "AdVideoUnderlay Error"

    const-string v2, "Allocating player failed."

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayw;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzayw;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayw;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzazj;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzagn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzazj;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzazj;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "decoderProps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mimeTypes"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onVideoEvent"

    invoke-interface {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzagn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzazj;)V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "no_video_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onVideoEvent"

    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzagn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final varargs zzd(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_e
    if-ge v2, p1, :cond_1d

    aget-object v4, p2, v2

    if-nez v3, :cond_16

    move-object v3, v4

    goto :goto_1a

    :cond_16
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdya:Lcom/google/android/gms/internal/ads/zzazj;

    const-string p2, "onVideoEvent"

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzagn;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final zzxe()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyp:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private final zzxf()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdya:Lcom/google/android/gms/internal/ads/zzazj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzazj;->zzxn()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyh:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyi:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdya:Lcom/google/android/gms/internal/ads/zzazj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzazj;->zzxn()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyh:Z

    :cond_23
    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyd:Lcom/google/android/gms/internal/ads/zzazl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazl;->pause()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayu;->stop()V

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->zzxf()V

    return-void
.end method

.method public final finalize()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyd:Lcom/google/android/gms/internal/ads/zzazl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazl;->pause()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwm:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayv;->zza(Lcom/google/android/gms/internal/ads/zzayu;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_1b

    :cond_17
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1b
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final onPaused()V
    .registers 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "pause"

    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->zzxf()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyg:Z

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyd:Lcom/google/android/gms/internal/ads/zzazl;

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazl;->resume()V

    goto :goto_12

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazl;->pause()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyl:J

    :goto_12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzayy;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzayy;-><init>(Lcom/google/android/gms/internal/ads/zzayw;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyd:Lcom/google/android/gms/internal/ads/zzazl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazl;->resume()V

    const/4 p1, 0x1

    goto :goto_16

    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyd:Lcom/google/android/gms/internal/ads/zzazl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzazl;->pause()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyl:J

    const/4 p1, 0x0

    :goto_16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzayz;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzayz;-><init>(Lcom/google/android/gms/internal/ads/zzayw;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final pause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayu;->pause()V

    return-void
.end method

.method public final play()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayu;->play()V

    return-void
.end method

.method public final seekTo(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayu;->seekTo(I)V

    return-void
.end method

.method public final setVolume(F)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxy:Lcom/google/android/gms/internal/ads/zzazo;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzazo;->setVolume(F)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzwu()V

    return-void
.end method

.method public final zza(FF)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zza(FF)V

    :cond_7
    return-void
.end method

.method final synthetic zzan(Z)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hasWindowFocus"

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "windowFocusChanged"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayw;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdym:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyn:[Ljava/lang/String;

    return-void
.end method

.method public final zzcs(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzcs(I)V

    return-void
.end method

.method public final zzct(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzct(I)V

    return-void
.end method

.method public final zzcu(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzcu(I)V

    return-void
.end method

.method public final zzcv(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzcv(I)V

    return-void
.end method

.method public final zzcw(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzcw(I)V

    return-void
.end method

.method public final zzd(IIII)V
    .registers 6

    if-eqz p3, :cond_16

    if-nez p4, :cond_5

    goto :goto_16

    :cond_5
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyb:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_16
    :goto_16
    return-void
.end method

.method public final zze(Landroid/view/MotionEvent;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zzel()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyl:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_4d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayu;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzayu;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayu;->getVideoHeight()I

    move-result v2

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const-string v4, "videoWidth"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    const-string v1, "videoHeight"

    aput-object v1, v3, v0

    const/4 v0, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "canplaythrough"

    invoke-direct {p0, v0, v3}, Lcom/google/android/gms/internal/ads/zzayw;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method public final zzhk()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdym:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdym:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyn:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayu;->zzb(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_src"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzayw;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzj(II)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyj:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzchs:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr p1, v0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzza;->zzchs:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr p2, v1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_4c

    :cond_41
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyo:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyq:Z

    :cond_4c
    return-void
.end method

.method public final zzn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "what"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "extra"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "error"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzayw;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zzwv()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyd:Lcom/google/android/gms/internal/ads/zzazl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazl;->resume()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzayx;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzayx;-><init>(Lcom/google/android/gms/internal/ads/zzayw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzww()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdya:Lcom/google/android/gms/internal/ads/zzazj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzazj;->zzxn()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyh:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdya:Lcom/google/android/gms/internal/ads/zzazj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzazj;->zzxn()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyi:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyi:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdya:Lcom/google/android/gms/internal/ads/zzazj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzazj;->zzxn()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyh:Z

    :cond_3a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyg:Z

    return-void
.end method

.method public final zzwx()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ended"

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzayw;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->zzxf()V

    return-void
.end method

.method public final zzwy()V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyq:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->zzxe()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyp:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyo:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyp:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyp:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyd:Lcom/google/android/gms/internal/ads/zzazl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazl;->pause()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyl:J

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzaza;-><init>(Lcom/google/android/gms/internal/ads/zzayw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzwz()V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyg:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzayw;->zzxe()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyb:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_72

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyo:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyq:Z

    :cond_2a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaug;->zzuu()Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 v0, 0x2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Spinner frame grab took "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    :cond_54
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdye:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_72

    const-string v0, "Spinner frame grab crossed jank threshold! Suspending spinner."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyj:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyo:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyc:Lcom/google/android/gms/internal/ads/zzaab;

    if-eqz v0, :cond_72

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinner_jank"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaab;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    return-void
.end method

.method public final zzxa()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxy:Lcom/google/android/gms/internal/ads/zzazo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzazo;->setMuted(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzwu()V

    return-void
.end method

.method public final zzxb()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzayu;->zzdxy:Lcom/google/android/gms/internal/ads/zzazo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzazo;->setMuted(Z)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayu;->zzwu()V

    return-void
.end method

.method public final zzxc()V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v0, "AdMob - "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzayu;->zzwq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

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
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyb:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyb:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method final zzxd()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyf:Lcom/google/android/gms/internal/ads/zzayu;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayu;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyk:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_30

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_30

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "timeupdate"

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzayw;->zzd(Ljava/lang/String;[Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzayw;->zzdyk:J

    :cond_30
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzayy (com.google.android.gms.internal.ads.zzayy)
.class final synthetic Lcom/google/android/gms/internal/ads/zzayy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdys:Lcom/google/android/gms/internal/ads/zzayw;

.field private final zzdyt:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayw;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzdys:Lcom/google/android/gms/internal/ads/zzayw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzdyt:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzdys:Lcom/google/android/gms/internal/ads/zzayw;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzayy;->zzdyt:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzayw;->zzan(Z)V

    return-void
.end method
