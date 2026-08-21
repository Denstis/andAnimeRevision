###### Class com.google.android.gms.internal.ads.zzayb (com.google.android.gms.internal.ads.zzayb)
.class final Lcom/google/android/gms/internal/ads/zzayb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzdwu:Lcom/google/android/gms/internal/ads/zzayc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayc;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdwu:Lcom/google/android/gms/internal/ads/zzayc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdwu:Lcom/google/android/gms/internal/ads/zzayc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zza(Lcom/google/android/gms/internal/ads/zzayc;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzayb;->zzdwu:Lcom/google/android/gms/internal/ads/zzayc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayc;->zza(Lcom/google/android/gms/internal/ads/zzayc;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
