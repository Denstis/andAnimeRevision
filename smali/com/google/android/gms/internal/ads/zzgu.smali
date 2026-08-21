###### Class com.google.android.gms.internal.ads.zzgu (com.google.android.gms.internal.ads.zzgu)
.class public final Lcom/google/android/gms/internal/ads/zzgu;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final zzafz:Lcom/google/android/gms/internal/ads/zzgu;


# instance fields
.field public final zzaga:F

.field public final zzagb:F

.field private final zzagc:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgu;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzgu;-><init>(FF)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgu;->zzafz:Lcom/google/android/gms/internal/ads/zzgu;

    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzaga:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzagb:F

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzagc:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    const-class v2, Lcom/google/android/gms/internal/ads/zzgu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_23

    :cond_10
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgu;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzaga:F

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzgu;->zzaga:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_23

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzagb:F

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzgu;->zzagb:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_23

    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzaga:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzagb:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzdo(J)J
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgu;->zzagc:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1
.end method
