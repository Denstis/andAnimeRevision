###### Class com.google.android.gms.internal.ads.zzxb (com.google.android.gms.internal.ads.zzxb)
.class public final Lcom/google/android/gms/internal/ads/zzxb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzaax:Lcom/google/android/gms/internal/ads/zzty;

.field private zzbjz:Lcom/google/android/gms/ads/VideoOptions;

.field private zzbkg:Z

.field private zzbki:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

.field private zzbqy:Ljava/lang/String;

.field private final zzbra:Lcom/google/android/gms/internal/ads/zzaju;

.field private zzcbs:Lcom/google/android/gms/internal/ads/zztp;

.field private zzcbv:Lcom/google/android/gms/ads/AdListener;

.field private zzcdc:[Lcom/google/android/gms/ads/AdSize;

.field private final zzcem:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzcen:Lcom/google/android/gms/ads/VideoController;

.field private final zzceo:Lcom/google/android/gms/internal/ads/zzuu;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private zzcep:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private zzceq:Landroid/view/ViewGroup;

.field private zzcer:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 8

    sget-object v4, Lcom/google/android/gms/internal/ads/zzty;->zzccl:Lcom/google/android/gms/internal/ads/zzty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzxb;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzty;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .registers 9

    sget-object v4, Lcom/google/android/gms/internal/ads/zzty;->zzccl:Lcom/google/android/gms/internal/ads/zzty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzxb;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzty;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .registers 10

    sget-object v4, Lcom/google/android/gms/internal/ads/zzty;->zzccl:Lcom/google/android/gms/internal/ads/zzty;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzxb;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzty;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZI)V
    .registers 11

    sget-object v4, Lcom/google/android/gms/internal/ads/zzty;->zzccl:Lcom/google/android/gms/internal/ads/zzty;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzxb;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzty;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzty;I)V
    .registers 13
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzxb;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/zzvl;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/ads/zzty;Lcom/google/android/gms/internal/ads/zzvl;I)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {p5}, Lcom/google/android/gms/internal/ads/zzaju;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbra:Lcom/google/android/gms/internal/ads/zzaju;

    new-instance p5, Lcom/google/android/gms/ads/VideoController;

    invoke-direct {p5}, Lcom/google/android/gms/ads/VideoController;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcen:Lcom/google/android/gms/ads/VideoController;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzxa;

    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(Lcom/google/android/gms/internal/ads/zzxb;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzceo:Lcom/google/android/gms/internal/ads/zzuu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzceq:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzaax:Lcom/google/android/gms/internal/ads/zzty;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcem:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcer:I

    if-eqz p2, :cond_86

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_2f
    new-instance p6, Lcom/google/android/gms/internal/ads/zzuh;

    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/ads/zzuh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/ads/zzuh;->zzr(Z)[Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcdc:[Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzuh;->getAdUnitId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqy:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_40} :catch_6f

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_86

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcdc:[Lcom/google/android/gms/ads/AdSize;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcer:I

    sget-object p6, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p3, p6}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_5d

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua;->zzoc()Lcom/google/android/gms/internal/ads/zzua;

    move-result-object p3

    goto :goto_69

    :cond_5d
    new-instance p6, Lcom/google/android/gms/internal/ads/zzua;

    invoke-direct {p6, p4, p3}, Lcom/google/android/gms/internal/ads/zzua;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzxb;->zzci(I)Z

    move-result p3

    iput-boolean p3, p6, Lcom/google/android/gms/internal/ads/zzua;->zzccp:Z

    move-object p3, p6

    :goto_69
    const-string p4, "Ads by Google"

    invoke-virtual {p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzawy;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzua;Ljava/lang/String;)V

    goto :goto_86

    :catch_6f
    move-exception p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzoj()Lcom/google/android/gms/internal/ads/zzawy;

    move-result-object p3

    new-instance p5, Lcom/google/android/gms/internal/ads/zzua;

    sget-object p6, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p5, p4, p6}, Lcom/google/android/gms/internal/ads/zzua;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p5, p4, p2}, Lcom/google/android/gms/internal/ads/zzawy;->zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzua;Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    :goto_86
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzxb;)Lcom/google/android/gms/ads/VideoController;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcen:Lcom/google/android/gms/ads/VideoController;

    return-object p0
.end method

.method private static zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzua;
    .registers 7

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    sget-object v3, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua;->zzoc()Lcom/google/android/gms/internal/ads/zzua;

    move-result-object p0

    return-object p0

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzua;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzua;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzxb;->zzci(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/ads/zzua;->zzccp:Z

    return-object v0
.end method

.method private static zzci(I)Z
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->destroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcbv:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/gms/ads/AdSize;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->zzjt()Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzua;->zzod()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcdc:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAdSizes()[Lcom/google/android/gms/ads/AdSize;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcdc:[Lcom/google/android/gms/ads/AdSize;

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqy:Ljava/lang/String;

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_15

    :try_start_8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqy:Ljava/lang/String;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_15

    :catch_f
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqy:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbki:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->zzju()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcep:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/ads/VideoController;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcen:Lcom/google/android/gms/ads/VideoController;

    return-object v0
.end method

.method public final getVideoOptions()Lcom/google/android/gms/ads/VideoOptions;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbjz:Lcom/google/android/gms/ads/VideoOptions;

    return-object v0
.end method

.method public final isLoading()Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->isLoading()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->pause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final recordManualImpression()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcem:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->zzjs()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_13} :catch_14

    :cond_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final resume()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->resume()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcbv:Lcom/google/android/gms/ads/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzceo:Lcom/google/android/gms/internal/ads/zzuu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzuu;->zza(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public final varargs setAdSizes([Lcom/google/android/gms/ads/AdSize;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcdc:[Lcom/google/android/gms/ads/AdSize;

    if-nez v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzxb;->zza([Lcom/google/android/gms/ads/AdSize;)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqy:Ljava/lang/String;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqy:Ljava/lang/String;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbki:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz p1, :cond_10

    new-instance v1, Lcom/google/android/gms/internal/ads/zzuc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzvt;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbkg:Z

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbkg:Z

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzvl;->setManualImpressionsEnabled(Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_d} :catch_e

    :cond_d
    return-void

    :catch_e
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .registers 4

    nop

    nop

    :try_start_2
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

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_14} :catch_15

    nop

    :catch_15
    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

.method public final setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbjz:Lcom/google/android/gms/ads/VideoOptions;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_12

    :cond_c
    new-instance v1, Lcom/google/android/gms/internal/ads/zzyj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    move-object p1, v1

    :goto_12
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzyj;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_16

    :cond_15
    return-void

    :catch_16
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztp;)V
    .registers 4

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcbs:Lcom/google/android/gms/internal/ads/zztp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz p1, :cond_10

    new-instance v1, Lcom/google/android/gms/internal/ads/zzto;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzto;-><init>(Lcom/google/android/gms/internal/ads/zztp;)V

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzux;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    :cond_14
    return-void

    :catch_15
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzwz;)V
    .registers 12

    const-string v0, "#007 Could not call remote method."

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-nez v1, :cond_c8

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcdc:[Lcom/google/android/gms/ads/AdSize;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqy:Ljava/lang/String;

    if-nez v1, :cond_12

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz v1, :cond_c0

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzceq:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcdc:[Lcom/google/android/gms/ads/AdSize;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcer:I

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzxb;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v5

    const-string v2, "search_v2"

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzua;->zzabd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_3d

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzok()Lcom/google/android/gms/internal/ads/zzug;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqy:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzun;

    invoke-direct {v4, v2, v1, v5, v3}, Lcom/google/android/gms/internal/ads/zzun;-><init>(Lcom/google/android/gms/internal/ads/zzug;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzua;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v8}, Lcom/google/android/gms/internal/ads/zzus;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    :goto_3a
    check-cast v1, Lcom/google/android/gms/internal/ads/zzvl;

    goto :goto_51

    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzok()Lcom/google/android/gms/internal/ads/zzug;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqy:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbra:Lcom/google/android/gms/internal/ads/zzaju;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzuj;

    move-object v2, v9

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzuj;-><init>(Lcom/google/android/gms/internal/ads/zzug;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzua;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzajx;)V

    invoke-virtual {v9, v1, v8}, Lcom/google/android/gms/internal/ads/zzus;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3a

    :goto_51
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzceo:Lcom/google/android/gms/internal/ads/zzuu;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zztt;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzuy;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcbs:Lcom/google/android/gms/internal/ads/zztp;

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzto;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcbs:Lcom/google/android/gms/internal/ads/zztp;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzto;-><init>(Lcom/google/android/gms/internal/ads/zztp;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzux;)V

    :cond_6f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbki:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzuc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbki:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzuc;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzvt;)V

    :cond_7f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcep:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaai;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcep:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzaai;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzaah;)V

    :cond_8f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbjz:Lcom/google/android/gms/ads/VideoOptions;

    if-eqz v1, :cond_9f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzyj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbjz:Lcom/google/android/gms/ads/VideoOptions;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzyj;-><init>(Lcom/google/android/gms/ads/VideoOptions;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzyj;)V

    :cond_9f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbkg:Z

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzvl;->setManualImpressionsEnabled(Z)V
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a6} :catch_e4

    :try_start_a6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzvl;->zzjr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    if-nez v1, :cond_af

    goto :goto_c8

    :cond_af
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzceq:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_ba} :catch_bb

    goto :goto_c8

    :catch_bb
    move-exception v1

    :try_start_bc
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c8

    :cond_c0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c8
    :goto_c8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzceq:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzty;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwz;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zztx;)Z

    move-result v1

    if-eqz v1, :cond_e3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbra:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzwz;->zzpc()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzaju;->zzf(Ljava/util/Map;)V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_e3} :catch_e4

    :cond_e3
    return-void

    :catch_e4
    move-exception p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs zza([Lcom/google/android/gms/ads/AdSize;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcdc:[Lcom/google/android/gms/ads/AdSize;

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzceq:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcdc:[Lcom/google/android/gms/ads/AdSize;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzcer:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxb;->zza(Landroid/content/Context;[Lcom/google/android/gms/ads/AdSize;I)Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Lcom/google/android/gms/internal/ads/zzua;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzceq:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvl;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzvl;->zzjr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_27

    if-nez v1, :cond_b

    return v0

    :cond_b
    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_18

    return v0

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzceq:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    const/4 p1, 0x1

    return p1

    :catch_27
    move-exception p1

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final zzde()Lcom/google/android/gms/internal/ads/zzwr;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxb;->zzbqx:Lcom/google/android/gms/internal/ads/zzvl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvl;->getVideoController()Lcom/google/android/gms/internal/ads/zzwr;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
