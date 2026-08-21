###### Class com.google.android.gms.internal.ads.zzmi (com.google.android.gms.internal.ads.zzmi)
.class public final Lcom/google/android/gms/internal/ads/zzmi;
.super Lcom/google/android/gms/internal/ads/zzgy;
.source ""


# static fields
.field private static final zzbcx:Ljava/lang/Object;


# instance fields
.field private final zzags:Z

.field private final zzagt:Z

.field private final zzbcy:J

.field private final zzbcz:J

.field private final zzbda:J

.field private final zzbdb:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzmi;->zzbcx:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(JJJJZZ)V
    .registers 11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgy;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzbcy:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzbcz:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzbda:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzbdb:J

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzags:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzagt:Z

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 15

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v9, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/zzmi;-><init>(JJJJZZ)V

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzha;Z)Lcom/google/android/gms/internal/ads/zzha;
    .registers 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zznr;->zzc(III)I

    if-eqz p3, :cond_a

    sget-object p1, Lcom/google/android/gms/internal/ads/zzmi;->zzbcx:Ljava/lang/Object;

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    move-object v2, p1

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzbcy:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p2

    move-object v1, v2

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzha;->zza(Ljava/lang/Object;Ljava/lang/Object;IJJZ)Lcom/google/android/gms/internal/ads/zzha;

    move-result-object p1

    return-object p1
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzhd;ZJ)Lcom/google/android/gms/internal/ads/zzhd;
    .registers 8

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zznr;->zzc(III)I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzags:Z

    iget-wide p4, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzbcz:J

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagg:Ljava/lang/Object;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagq:J

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagr:J

    iput-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzags:Z

    iput-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagt:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagw:J

    iput-wide p4, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagh:J

    iput p3, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagu:I

    iput p3, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagv:I

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhd;->zzagx:J

    return-object p2
.end method

.method public final zzc(Ljava/lang/Object;)I
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzmi;->zzbcx:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 p1, -0x1

    return p1
.end method

.method public final zzep()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzeq()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
