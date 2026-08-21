###### Class com.google.android.gms.internal.ads.zzckw (com.google.android.gms.internal.ads.zzckw)
.class public final Lcom/google/android/gms/internal/ads/zzckw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/zze;


# instance fields
.field private final zzfdp:Lcom/google/android/gms/internal/ads/zzbqw;

.field private final zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

.field private final zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

.field private final zzfjo:Lcom/google/android/gms/internal/ads/zzbhk;

.field private final zzfjq:Lcom/google/android/gms/internal/ads/zzbqv;

.field private zzgar:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbmv;Lcom/google/android/gms/internal/ads/zzbni;Lcom/google/android/gms/internal/ads/zzbqw;Lcom/google/android/gms/internal/ads/zzbqv;Lcom/google/android/gms/internal/ads/zzbhk;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzgar:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfdp:Lcom/google/android/gms/internal/ads/zzbqw;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfjq:Lcom/google/android/gms/internal/ads/zzbqv;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfjo:Lcom/google/android/gms/internal/ads/zzbhk;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzg(Landroid/view/View;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzgar:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_19

    if-nez v0, :cond_d

    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfjo:Lcom/google/android/gms/internal/ads/zzbhk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbhk;->onAdImpression()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfjq:Lcom/google/android/gms/internal/ads/zzbqv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbqv;->zzq(Landroid/view/View;)V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzjl()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzgar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfjn:Lcom/google/android/gms/internal/ads/zzbmv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmv;->onAdClicked()V

    :cond_d
    return-void
.end method

.method public final zzjm()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzgar:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfjm:Lcom/google/android/gms/internal/ads/zzbni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbni;->onAdImpression()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckw;->zzfdp:Lcom/google/android/gms/internal/ads/zzbqw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqw;->zzagq()V

    :cond_12
    return-void
.end method
