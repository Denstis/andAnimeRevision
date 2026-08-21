###### Class com.google.android.gms.internal.ads.zzoz (com.google.android.gms.internal.ads.zzoz)
.class final Lcom/google/android/gms/internal/ads/zzoz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbjg:Lcom/google/android/gms/internal/ads/zzov;

.field private final synthetic zzbjh:I

.field private final synthetic zzbji:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzov;IJ)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoz;->zzbjg:Lcom/google/android/gms/internal/ads/zzov;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzoz;->zzbjh:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzoz;->zzbji:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoz;->zzbjg:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzow;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzoz;->zzbjh:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzoz;->zzbji:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzow;->zzf(IJ)V

    return-void
.end method
