###### Class com.google.android.gms.internal.ads.zzbvh (com.google.android.gms.internal.ads.zzbvh)
.class public final Lcom/google/android/gms/internal/ads/zzbvh;
.super Lcom/google/android/gms/internal/ads/zzabp;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzbvz;


# static fields
.field public static final zzfmp:[Ljava/lang/String;


# instance fields
.field private zzbkb:Landroid/widget/FrameLayout;

.field private zzcwp:Lcom/google/android/gms/internal/ads/zzabh;

.field private final zzdwf:I

.field private zzegn:Z

.field private zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

.field private zzfmm:Lcom/google/android/gms/internal/ads/zzpf;

.field private final zzfmo:Ljava/lang/String;

.field private zzfmq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzfmr:Landroid/widget/FrameLayout;

.field private zzfms:Lcom/google/android/gms/internal/ads/zzddl;

.field private zzfmt:Landroid/view/View;

.field private zzfmu:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzfmv:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "2011"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1009"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "3010"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmp:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzabp;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmq:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmu:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzegn:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzbkb:Landroid/widget/FrameLayout;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzdwf:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "com.google.android.gms.ads.formats.NativeContentAdView"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_29

    const-string p2, "1007"

    goto :goto_3b

    :cond_29
    const-string p3, "com.google.android.gms.ads.formats.NativeAppInstallAdView"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_34

    const-string p2, "2009"

    goto :goto_3b

    :cond_34
    const-string p3, "com.google.android.gms.ads.formats.UnifiedNativeAdView"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string p2, "3012"

    :goto_3b
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmo:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlg()Lcom/google/android/gms/internal/ads/zzayd;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzayd;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzlg()Lcom/google/android/gms/internal/ads/zzayd;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzayd;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwm:Lcom/google/android/gms/internal/ads/zzddl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfms:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzpf;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-direct {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzpf;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmm:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final declared-synchronized zzaiu()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfms:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbvg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbvg;-><init>(Lcom/google/android/gms/internal/ads/zzbvh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized destroy()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzegn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_31

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbuj;->zzb(Lcom/google/android/gms/internal/ads/zzbvz;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzbkb:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmq:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzbkb:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmt:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmm:Lcom/google/android/gms/internal/ads/zzpf;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzegn:Z
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onClick(Landroid/view/View;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuj;->cancelUnconfirmedClick()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzaip()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzaiq()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onGlobalLayout()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzaip()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzaiq()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbuj;->zzx(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbuj;->zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onScrollChanged()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzaip()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzaiq()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzbuj;->zzx(Landroid/view/View;)Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbuj;->zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    :cond_c
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzabh;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzegn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmv:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzcwp:Lcom/google/android/gms/internal/ads/zzabh;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbuj;->zzahm()Lcom/google/android/gms/internal/ads/zzbup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbup;->zza(Lcom/google/android/gms/internal/ads/zzabh;)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zza(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzegn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_41

    if-eqz p3, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    if-nez p2, :cond_10

    :try_start_9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmq:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_41

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmq:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "1098"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3f

    const-string p3, "3011"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_3f

    :cond_2b
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzdwf:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzawm;->zzcp(I)Z

    move-result p1

    if-eqz p1, :cond_36

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_36
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_41

    monitor-exit p0

    return-void

    :cond_3f
    :goto_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zzaeu()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final zzain()Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzbkb:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final zzaio()Lcom/google/android/gms/internal/ads/zzpf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmm:Lcom/google/android/gms/internal/ads/zzpf;

    return-object v0
.end method

.method public final declared-synchronized zzaip()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmq:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzaiq()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmq:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzair()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzais()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmo:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzait()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmu:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-object v0
.end method

.method final synthetic zzaiv()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmt:Landroid/view/View;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmt:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmt:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmt:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmt:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2e
    return-void
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V
    .registers 3

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zzc(Ljava/lang/String;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbvh;->zza(Ljava/lang/String;Landroid/view/View;Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzcj(Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbvh;->zzfw(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzegn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4a

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbuj;

    if-nez v0, :cond_16

    const-string p1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_4a

    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbuj;->zzb(Lcom/google/android/gms/internal/ads/zzbvz;)V

    :cond_1f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzaiu()V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbuj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbuj;->zza(Lcom/google/android/gms/internal/ads/zzbvz;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbuj;->zzy(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzbkb:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbuj;->zzz(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmv:Z

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbuj;->zzahm()Lcom/google/android/gms/internal/ads/zzbup;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzcwp:Lcom/google/android/gms/internal/ads/zzabh;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbup;->zza(Lcom/google/android/gms/internal/ads/zzabh;)V
    :try_end_48
    .catchall {:try_start_16 .. :try_end_48} :catchall_4a

    :cond_48
    monitor-exit p0

    return-void

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzfw(Ljava/lang/String;)Landroid/view/View;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzegn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return-object v1

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_1c

    if-nez p1, :cond_14

    monitor-exit p0

    return-object v1

    :cond_14
    :try_start_14
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object p1

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzi(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfml:Lcom/google/android/gms/internal/ads/zzbuj;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuj;->setClickConfirmingView(Landroid/view/View;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmr:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzbvh;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final declared-synchronized zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzegn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvh;->zzfmu:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.google.android.gms.internal.ads.zzbvg (com.google.android.gms.internal.ads.zzbvg)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbvg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfmn:Lcom/google/android/gms/internal/ads/zzbvh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbvh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbvg;->zzfmn:Lcom/google/android/gms/internal/ads/zzbvh;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbvg;->zzfmn:Lcom/google/android/gms/internal/ads/zzbvh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbvh;->zzaiv()V

    return-void
.end method
