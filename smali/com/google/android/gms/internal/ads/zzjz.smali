###### Class com.google.android.gms.internal.ads.zzjz (com.google.android.gms.internal.ads.zzjz)
.class final Lcom/google/android/gms/internal/ads/zzjz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final id:I

.field private final zzafh:I

.field private final zzcu:J


# direct methods
.method public constructor <init>(IJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjz;->id:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzcu:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzafh:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzjz;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzcu:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzjz;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzjz;->id:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzjz;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzjz;->zzafh:I

    return p0
.end method
