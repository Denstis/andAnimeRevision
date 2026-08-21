###### Class com.google.android.gms.internal.ads.zzcyb (com.google.android.gms.internal.ads.zzcyb)
.class final Lcom/google/android/gms/internal/ads/zzcyb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzglw:Lcom/google/android/gms/internal/ads/zzcxp;

.field private final synthetic zzglx:Lcom/google/android/gms/internal/ads/zzcxy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxy;Lcom/google/android/gms/internal/ads/zzcxp;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyb;->zzglx:Lcom/google/android/gms/internal/ads/zzcxy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyb;->zzglw:Lcom/google/android/gms/internal/ads/zzcxp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyb;->zzglx:Lcom/google/android/gms/internal/ads/zzcxy;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcxy;->zzglr:Lcom/google/android/gms/internal/ads/zzcxs;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcxs;->zzc(Lcom/google/android/gms/internal/ads/zzcxs;)Lcom/google/android/gms/internal/ads/zzcye;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyb;->zzglw:Lcom/google/android/gms/internal/ads/zzcxp;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcye;->zzc(Lcom/google/android/gms/internal/ads/zzcxp;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyb;->zzglx:Lcom/google/android/gms/internal/ads/zzcxy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcxy;->zzglr:Lcom/google/android/gms/internal/ads/zzcxs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcxs;->zzc(Lcom/google/android/gms/internal/ads/zzcxs;)Lcom/google/android/gms/internal/ads/zzcye;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyb;->zzglw:Lcom/google/android/gms/internal/ads/zzcxp;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcye;->zza(Lcom/google/android/gms/internal/ads/zzcxp;Ljava/lang/Throwable;)V

    return-void
.end method
