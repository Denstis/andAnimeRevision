###### Class com.google.android.gms.internal.ads.zziu (com.google.android.gms.internal.ads.zziu)
.class public final Lcom/google/android/gms/internal/ads/zziu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjb;


# instance fields
.field private final length:I

.field private final zzagh:J

.field private final zzamu:[I

.field private final zzamv:[J

.field private final zzamw:[J

.field private final zzamx:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzamu:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zziu;->zzamv:[J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zziu;->zzamw:[J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zziu;->zzamx:[J

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziu;->length:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziu;->length:I

    if-lez p1, :cond_1e

    add-int/lit8 p2, p1, -0x1

    aget-wide p2, p3, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zziu;->zzagh:J

    return-void

    :cond_1e
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzagh:J

    return-void
.end method


# virtual methods
.method public final getDurationUs()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzagh:J

    return-wide v0
.end method

.method public final zzdt(J)J
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziu;->zzamv:[J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziu;->zzamx:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/zzof;->zza([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public final zzgc()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
