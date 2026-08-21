###### Class com.google.android.gms.internal.ads.zzble (com.google.android.gms.internal.ads.zzble)
.class public final Lcom/google/android/gms/internal/ads/zzble;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private final zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

.field private zzffw:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnr;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzble;->zzffw:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzble;->zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

    return-void
.end method


# virtual methods
.method public final isClosed()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzble;->zzffw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final onPause()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 1

    return-void
.end method

.method public final zzsi()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzble;->zzffw:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzble;->zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnr;->onAdClosed()V

    return-void
.end method

.method public final zzsj()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzble;->zzffv:Lcom/google/android/gms/internal/ads/zzbnr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnr;->onAdOpened()V

    return-void
.end method
