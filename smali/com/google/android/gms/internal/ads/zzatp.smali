###### Class com.google.android.gms.internal.ads.zzatp (com.google.android.gms.internal.ads.zzatp)
.class final Lcom/google/android/gms/internal/ads/zzatp;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzdqb:J

.field private zzdqc:J

.field private final synthetic zzdqd:Lcom/google/android/gms/internal/ads/zzatq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzatq;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdqd:Lcom/google/android/gms/internal/ads/zzatq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdqb:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdqc:J

    return-void
.end method


# virtual methods
.method public final toBundle()Landroid/os/Bundle;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdqb:J

    const-string v3, "topen"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdqc:J

    const-string v3, "tclose"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final zztu()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdqc:J

    return-wide v0
.end method

.method public final zztv()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdqd:Lcom/google/android/gms/internal/ads/zzatq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzatq;->zza(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdqc:J

    return-void
.end method

.method public final zztw()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdqd:Lcom/google/android/gms/internal/ads/zzatq;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzatq;->zza(Lcom/google/android/gms/internal/ads/zzatq;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzatp;->zzdqb:J

    return-void
.end method
