###### Class com.google.android.gms.internal.ads.zzpf (com.google.android.gms.internal.ads.zzpf)
.class public final Lcom/google/android/gms/internal/ads/zzpf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final zzbnj:J


# instance fields
.field private final zzbnk:Landroid/view/WindowManager;

.field private zzbnl:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzbnm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private zzbnn:Lcom/google/android/gms/internal/ads/zzpm;

.field private zzbno:Lcom/google/android/gms/internal/ads/zzawo;

.field private zzbnp:Z

.field private final zzbnq:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzpj;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbnr:Landroid/graphics/Rect;

.field private final zzwl:Landroid/util/DisplayMetrics;

.field private zzxh:Landroid/app/Application;

.field private final zzzc:Landroid/content/Context;

.field private final zzzd:Landroid/os/PowerManager;

.field private final zzze:Landroid/app/KeyguardManager;

.field private zzzg:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private zzzk:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzclx:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnj:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzawo;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbnj:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawo;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbno:Lcom/google/android/gms/internal/ads/zzawo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnp:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzk:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnq:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzc:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnk:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzc:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzd:Landroid/os/PowerManager;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzze:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzc:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_53

    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzxh:Landroid/app/Application;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzpm;

    check-cast v0, Landroid/app/Application;

    invoke-direct {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzpm;-><init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnn:Lcom/google/android/gms/internal/ads/zzpm;

    :cond_53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzwl:Landroid/util/DisplayMetrics;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnr:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnr:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnk:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnr:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnk:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnm:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_8b

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_8c

    :cond_8b
    const/4 p1, 0x0

    :goto_8c
    if-eqz p1, :cond_94

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzf(Landroid/view/View;)V

    :cond_94
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnm:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_ad

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaur;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_aa

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzpf;->zze(Landroid/view/View;)V

    :cond_aa
    invoke-virtual {p2, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_ad
    return-void
.end method

.method private final zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbn(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpf;->zzbn(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzpf;->zzbn(I)I

    move-result v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbn(I)I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private final zza(Landroid/app/Activity;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnm:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_28

    if-eqz p1, :cond_28

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    if-ne v0, p1, :cond_28

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzk:I

    :cond_28
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzpf;I)V
    .registers 2

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    return-void
.end method

.method private final zzbm(I)V
    .registers 33

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbnq:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbnm:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1f

    const/4 v6, 0x1

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    :goto_20
    if-nez v3, :cond_24

    const/4 v7, 0x1

    goto :goto_25

    :cond_24
    const/4 v7, 0x0

    :goto_25
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x2

    new-array v12, v0, [I

    new-array v0, v0, [I

    if-eqz v3, :cond_77

    invoke-virtual {v3, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v13

    invoke-virtual {v3, v10}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v14

    invoke-virtual {v3, v11}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    :try_start_4b
    invoke-virtual {v3, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_52

    goto :goto_58

    :catch_52
    move-exception v0

    const-string v15, "Failure getting view location."

    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_58
    aget v0, v12, v4

    iput v0, v8, Landroid/graphics/Rect;->left:I

    aget v0, v12, v5

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iget v0, v8, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v0, v12

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v0, v12

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v13

    move/from16 v26, v14

    goto :goto_7b

    :cond_77
    const/16 v24, 0x0

    const/16 v26, 0x0

    :goto_7b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcma:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_94

    if-eqz v3, :cond_94

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/zzpf;->zzh(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    goto :goto_98

    :cond_94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_98
    move-object/from16 v30, v0

    const/16 v0, 0x8

    if-eqz v3, :cond_a3

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v12

    goto :goto_a5

    :cond_a3
    const/16 v12, 0x8

    :goto_a5
    iget v13, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzzk:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_ab

    move v12, v13

    :cond_ab
    if-nez v7, :cond_c3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    move-result-object v7

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzzd:Landroid/os/PowerManager;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzze:Landroid/app/KeyguardManager;

    invoke-virtual {v7, v3, v13, v14}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v7

    if-eqz v7, :cond_c3

    if-eqz v24, :cond_c3

    if-eqz v26, :cond_c3

    if-nez v12, :cond_c3

    const/4 v7, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v7, 0x0

    :goto_c4
    if-eqz v6, :cond_d3

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbno:Lcom/google/android/gms/internal/ads/zzawo;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzawo;->tryAcquire()Z

    move-result v6

    if-nez v6, :cond_d3

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbnp:Z

    if-ne v7, v6, :cond_d3

    return-void

    :cond_d3
    if-nez v7, :cond_dc

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbnp:Z

    if-nez v6, :cond_dc

    if-ne v2, v5, :cond_dc

    return-void

    :cond_dc
    new-instance v2, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v16

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzzd:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v18

    if-eqz v3, :cond_fb

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzaur;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_fb

    const/16 v19, 0x1

    goto :goto_fd

    :cond_fb
    const/16 v19, 0x0

    :goto_fd
    if-eqz v3, :cond_106

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    move/from16 v20, v0

    goto :goto_108

    :cond_106
    const/16 v20, 0x8

    :goto_108
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbnr:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v21

    invoke-direct {v1, v8}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v22

    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v23

    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v25

    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v27

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzwl:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move-object v15, v2

    move/from16 v28, v0

    move/from16 v29, v7

    invoke-direct/range {v15 .. v30}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(JZZILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZLandroid/graphics/Rect;FZLjava/util/List;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbnq:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_130
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_140

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzpj;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzpj;->zza(Lcom/google/android/gms/internal/ads/zzpk;)V

    goto :goto_130

    :cond_140
    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbnp:Z

    return-void
.end method

.method private final zzbn(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzwl:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private final zzcr()V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaul;->zzdsu:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzpi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(Lcom/google/android/gms/internal/ads/zzpf;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zze(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzg:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnl:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_41

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzph;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzph;-><init>(Lcom/google/android/gms/internal/ads/zzpf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnl:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzle()Lcom/google/android/gms/internal/ads/zzawu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzc:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnl:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzawu;->zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzxh:Landroid/app/Application;

    if-eqz p1, :cond_51

    :try_start_45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnn:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_51
    return-void
.end method

.method private final zzf(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzg:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzg:Ljava/lang/ref/WeakReference;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    move-exception v1

    const-string v2, "Error while unregistering listeners from the last ViewTreeObserver."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    :goto_24
    :try_start_24
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_34} :catch_35

    goto :goto_3b

    :catch_35
    move-exception p1

    const-string v1, "Error while unregistering listeners from the ViewTreeObserver."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnl:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_5e

    :try_start_3f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzle()Lcom/google/android/gms/internal/ads/zzawu;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzc:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnl:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzawu;->zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_4a} :catch_56
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4a} :catch_4b

    goto :goto_5c

    :catch_4b
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v1

    const-string v2, "ActiveViewUnit.stopScreenStatusMonitoring"

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_5c

    :catch_56
    move-exception p1

    const-string v1, "Failed trying to unregister the receiver"

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5c
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnl:Landroid/content/BroadcastReceiver;

    :cond_5e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzxh:Landroid/app/Application;

    if-eqz p1, :cond_6e

    :try_start_62
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnn:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {p1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_68

    return-void

    :catch_68
    move-exception p1

    const-string v0, "Error registering activity lifecycle callbacks."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6e
    return-void
.end method

.method private final zzh(Landroid/view/View;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_9
    instance-of v1, p1, Landroid/view/View;

    if-eqz v1, :cond_40

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_20

    invoke-virtual {v1}, Landroid/view/View;->isScrollContainer()Z

    move-result v3

    goto :goto_2c

    :cond_20
    instance-of v3, v1, Landroid/widget/ScrollView;

    if-nez v3, :cond_2b

    instance-of v3, v1, Landroid/widget/ListView;

    if-eqz v3, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v3, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v3, 0x1

    :goto_2c
    if-eqz v3, :cond_3b

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_41

    goto :goto_9

    :cond_40
    return-object v0

    :catch_41
    move-exception p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkn()Lcom/google/android/gms/internal/ads/zzatr;

    move-result-object v0

    const-string v1, "PositionWatcher.getParentScrollViewRects"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzatr;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzcr()V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzcr()V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzcr()V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzcr()V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzcr()V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Landroid/app/Activity;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzcr()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzcr()V

    return-void
.end method

.method public final onGlobalLayout()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzcr()V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzk:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zze(Landroid/view/View;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzzk:I

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzpf;->zzcr()V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzf(Landroid/view/View;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzpj;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnq:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzpj;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbnq:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzeh(J)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbno:Lcom/google/android/gms/internal/ads/zzawo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzawo;->zzev(J)V

    return-void
.end method

.method public final zzli()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpf;->zzbno:Lcom/google/android/gms/internal/ads/zzawo;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzpf;->zzbnj:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zzev(J)V

    return-void
.end method

.method final synthetic zzlj()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpf;->zzbm(I)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzpi (com.google.android.gms.internal.ads.zzpi)
.class final synthetic Lcom/google/android/gms/internal/ads/zzpi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbnw:Lcom/google/android/gms/internal/ads/zzpf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzpf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpi;->zzbnw:Lcom/google/android/gms/internal/ads/zzpf;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpi;->zzbnw:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpf;->zzlj()V

    return-void
.end method
