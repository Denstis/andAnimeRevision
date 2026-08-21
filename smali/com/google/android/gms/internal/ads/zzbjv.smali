###### Class com.google.android.gms.internal.ads.zzbjv (com.google.android.gms.internal.ads.zzbjv)
.class public final Lcom/google/android/gms/internal/ads/zzbjv;
.super Lcom/google/android/gms/internal/ads/zzbio;
.source ""


# instance fields
.field private final zzfbx:Ljava/util/concurrent/Executor;

.field private final zzfeo:Lcom/google/android/gms/internal/ads/zzada;

.field private final zzfep:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbkn;Lcom/google/android/gms/internal/ads/zzada;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbio;-><init>(Lcom/google/android/gms/internal/ads/zzbkn;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzfeo:Lcom/google/android/gms/internal/ads/zzada;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzfep:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzfbx:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwr;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzua;)V
    .registers 3

    return-void
.end method

.method public final zzaet()Lcom/google/android/gms/internal/ads/zzcvu;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzaeu()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzaez()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zzafa()V
    .registers 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzfep:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbju;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbju;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzfbx:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbjx;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzbjx;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic zze(Ljava/lang/Runnable;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjv;->zzfeo:Lcom/google/android/gms/internal/ads/zzada;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzada;->zzq(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    return-void

    :catch_10
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final zzjs()V
    .registers 1

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbju (com.google.android.gms.internal.ads.zzbju)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbju;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfen:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfen:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbju;->zzfen:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzbjx (com.google.android.gms.internal.ads.zzbjx)
.class final synthetic Lcom/google/android/gms/internal/ads/zzbjx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfam:Ljava/lang/Runnable;

.field private final zzfeq:Lcom/google/android/gms/internal/ads/zzbjv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbjv;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjx;->zzfeq:Lcom/google/android/gms/internal/ads/zzbjv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjx;->zzfam:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjx;->zzfeq:Lcom/google/android/gms/internal/ads/zzbjv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbjx;->zzfam:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjv;->zze(Ljava/lang/Runnable;)V

    return-void
.end method
