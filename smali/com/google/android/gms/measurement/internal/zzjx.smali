###### Class com.google.android.gms.measurement.internal.zzjx (com.google.android.gms.measurement.internal.zzjx)
.class final Lcom/google/android/gms/measurement/internal/zzjx;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zza:Lcom/google/android/gms/common/util/Clock;

.field private zzb:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:J

    return-void
.end method

.method public final zza(J)Z
    .registers 7

    iget-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:J

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_a

    return v0

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zza:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x36ee80

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1b

    return v0

    :cond_1b
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzjx;->zzb:J

    return-void
.end method
