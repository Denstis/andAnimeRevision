###### Class com.google.android.gms.internal.ads.zzkj (com.google.android.gms.internal.ads.zzkj)
.class final Lcom/google/android/gms/internal/ads/zzkj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final zzamu:[I

.field public final zzamv:[J

.field public final zzavc:I

.field public final zzavi:I

.field public final zzavk:[I

.field public final zzaxi:[J


# direct methods
.method public constructor <init>([J[II[J[I)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    array-length v1, p4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    array-length v0, p5

    array-length v1, p4

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    :goto_1f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznr;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzamv:[J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzamu:[I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzavi:I

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzaxi:[J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzavk:[I

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzavc:I

    return-void
.end method


# virtual methods
.method public final zzdw(J)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzaxi:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzof;->zza([JJZZ)I

    move-result p1

    :goto_8
    if-ltz p1, :cond_15

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzavk:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_12

    return p1

    :cond_12
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public final zzdx(J)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzaxi:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzof;->zzb([JJZZ)I

    move-result p1

    :goto_8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzaxi:[J

    array-length p2, p2

    if-ge p1, p2, :cond_18

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzkj;->zzavk:[I

    aget p2, p2, p1

    and-int/2addr p2, v1

    if-eqz p2, :cond_15

    return p1

    :cond_15
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_18
    const/4 p1, -0x1

    return p1
.end method
