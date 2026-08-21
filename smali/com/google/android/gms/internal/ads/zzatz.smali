###### Class com.google.android.gms.internal.ads.zzatz (com.google.android.gms.internal.ads.zzatz)
.class public final Lcom/google/android/gms/internal/ads/zzatz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqa;


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

.field private final zzdrs:Lcom/google/android/gms/internal/ads/zzaua;

.field private final zzdrt:Lcom/google/android/gms/internal/ads/zzaty;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final zzdru:Ljava/util/HashSet;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdrv:Ljava/util/HashSet;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaui;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdru:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrv:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaty;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaty;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaui;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrt:Lcom/google/android/gms/internal/ads/zzaty;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaua;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaua;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrs:Lcom/google/android/gms/internal/ads/zzaua;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzatx;)Landroid/os/Bundle;
    .registers 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdru:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdru:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_6e

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrt:Lcom/google/android/gms/internal/ads/zzaty;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrs:Lcom/google/android/gms/internal/ads/zzaua;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaua;->zzus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzaty;->zzo(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "app"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrv:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_65

    const-string v2, "slots"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzatq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzatq;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_48

    :cond_5c
    const-string v2, "ads"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzatx;->zza(Ljava/util/HashSet;)V

    return-object v1

    :cond_65
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1

    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    goto :goto_72

    :goto_71
    throw p1

    :goto_72
    goto :goto_71
.end method

.method public final zza(Lcom/google/android/gms/common/util/Clock;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzatq;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrs:Lcom/google/android/gms/internal/ads/zzaua;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaua;->zzur()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p2}, Lcom/google/android/gms/internal/ads/zzatq;-><init>(Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzatz;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztx;J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrt:Lcom/google/android/gms/internal/ads/zzaty;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaty;->zza(Lcom/google/android/gms/internal/ads/zztx;J)V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatq;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdru:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final zzb(Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdru:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public final zzo(Z)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaui;->zzvf()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzza;->zzcko:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_2b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrt:Lcom/google/android/gms/internal/ads/zzaty;

    const/4 v0, -0x1

    iput v0, p1, Lcom/google/android/gms/internal/ads/zzaty;->zzdrm:I

    return-void

    :cond_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrt:Lcom/google/android/gms/internal/ads/zzaty;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaui;->zzvg()I

    move-result v0

    iput v0, p1, Lcom/google/android/gms/internal/ads/zzaty;->zzdrm:I

    return-void

    :cond_36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaui;->zzet(J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrp:Lcom/google/android/gms/internal/ads/zzaui;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrt:Lcom/google/android/gms/internal/ads/zzaty;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzaty;->zzdrm:I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaui;->zzcn(I)V

    return-void
.end method

.method public final zztx()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrt:Lcom/google/android/gms/internal/ads/zzaty;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaty;->zztx()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final zzty()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatz;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzatz;->zzdrt:Lcom/google/android/gms/internal/ads/zzaty;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaty;->zzty()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
