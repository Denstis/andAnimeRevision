###### Class com.google.android.gms.internal.ads.zzaye (com.google.android.gms.internal.ads.zzaye)
.class final Lcom/google/android/gms/internal/ads/zzaye;
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
.field private final synthetic zzdwx:Lcom/google/android/gms/internal/ads/zzaxz;

.field private final synthetic zzdwy:Lcom/google/android/gms/internal/ads/zzaxx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzayc;Lcom/google/android/gms/internal/ads/zzaxz;Lcom/google/android/gms/internal/ads/zzaxx;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzdwx:Lcom/google/android/gms/internal/ads/zzaxz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzdwy:Lcom/google/android/gms/internal/ads/zzaxx;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzdwx:Lcom/google/android/gms/internal/ads/zzaxz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxz;->zzh(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaye;->zzdwy:Lcom/google/android/gms/internal/ads/zzaxx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaxx;->run()V

    return-void
.end method
