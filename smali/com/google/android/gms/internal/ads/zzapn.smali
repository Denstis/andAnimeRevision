###### Class com.google.android.gms.internal.ads.zzapn (com.google.android.gms.internal.ads.zzapn)
.class final Lcom/google/android/gms/internal/ads/zzapn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzdnm:J

.field public final zzdnn:Lcom/google/android/gms/internal/ads/zzapj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzapl;Lcom/google/android/gms/internal/ads/zzapj;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkq()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzdnm:J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapn;->zzdnn:Lcom/google/android/gms/internal/ads/zzapj;

    return-void
.end method
