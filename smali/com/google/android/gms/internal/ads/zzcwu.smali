###### Class com.google.android.gms.internal.ads.zzcwu (com.google.android.gms.internal.ads.zzcwu)
.class public final Lcom/google/android/gms/internal/ads/zzcwu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatx;
.implements Lcom/google/android/gms/internal/ads/zzbnb;


# instance fields
.field private final zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

.field private final zzgkw:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzlk:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzatz;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzgkw:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzlk:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdFailedToLoad(I)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzgkw:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzatz;->zzb(Ljava/util/HashSet;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    goto :goto_f

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_f
    :goto_f
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized zza(Ljava/util/HashSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/ads/zzatq;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzgkw:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzgkw:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzang()Landroid/os/Bundle;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzdqe:Lcom/google/android/gms/internal/ads/zzatz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwu;->zzlk:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzatz;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzatx;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
