###### Class com.google.android.gms.internal.ads.zzqg (com.google.android.gms.internal.ads.zzqg)
.class public final Lcom/google/android/gms/internal/ads/zzqg;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F

.field private final zzbqe:I


# direct methods
.method public constructor <init>(FFFFI)V
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->left:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqg;->top:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->right:F

    add-float/2addr p2, p4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzqg;->bottom:F

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbqe:I

    return-void
.end method


# virtual methods
.method final zzma()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->left:F

    return v0
.end method

.method final zzmb()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->top:F

    return v0
.end method

.method final zzmc()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->right:F

    return v0
.end method

.method final zzmd()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->bottom:F

    return v0
.end method

.method final zzme()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzbqe:I

    return v0
.end method
