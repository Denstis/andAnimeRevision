###### Class com.google.android.gms.internal.ads.zzhx (com.google.android.gms.internal.ads.zzhx)
.class final Lcom/google/android/gms/internal/ads/zzhx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzadh:Lcom/google/android/gms/internal/ads/zzgu;

.field private final zzaev:J

.field private final zzake:J


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgu;JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzake:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzaev:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgu;JJLcom/google/android/gms/internal/ads/zzhr;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzhx;-><init>(Lcom/google/android/gms/internal/ads/zzgu;JJ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzhx;)Lcom/google/android/gms/internal/ads/zzgu;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzadh:Lcom/google/android/gms/internal/ads/zzgu;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzhx;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzaev:J

    return-wide v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzhx;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhx;->zzake:J

    return-wide v0
.end method
