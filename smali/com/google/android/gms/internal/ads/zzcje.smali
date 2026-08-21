###### Class com.google.android.gms.internal.ads.zzcje (com.google.android.gms.internal.ads.zzcje)
.class final Lcom/google/android/gms/internal/ads/zzcje;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zzfze:Ljava/lang/String;

.field private final synthetic zzfzf:J

.field private final synthetic zzfzg:Lcom/google/android/gms/internal/ads/zzcjf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjf;Ljava/lang/String;J)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfzg:Lcom/google/android/gms/internal/ads/zzcjf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfze:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfzf:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfzg:Lcom/google/android/gms/internal/ads/zzcjf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcjf;->zza(Lcom/google/android/gms/internal/ads/zzcjf;)Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfzg:Lcom/google/android/gms/internal/ads/zzcjf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfze:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfzf:J

    sub-long/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjf;->zza(Lcom/google/android/gms/internal/ads/zzcjf;Ljava/lang/String;IJ)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfzg:Lcom/google/android/gms/internal/ads/zzcjf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjf;->zza(Lcom/google/android/gms/internal/ads/zzcjf;)Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    instance-of v2, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v3, 0x3

    const/4 v4, 0x6

    if-eqz v2, :cond_12

    const/4 v3, 0x2

    goto :goto_2c

    :cond_12
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzciv;

    if-eqz v2, :cond_17

    goto :goto_2c

    :cond_17
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v2, :cond_1d

    const/4 v3, 0x4

    goto :goto_2c

    :cond_1d
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzccu;

    if-eqz v2, :cond_2b

    check-cast p1, Lcom/google/android/gms/internal/ads/zzccu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzccu;->getErrorCode()I

    move-result p1

    if-ne p1, v3, :cond_2b

    const/4 v3, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x6

    :goto_2c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfzg:Lcom/google/android/gms/internal/ads/zzcjf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfze:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcje;->zzfzf:J

    sub-long/2addr v0, v4

    invoke-static {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzcjf;->zza(Lcom/google/android/gms/internal/ads/zzcjf;Ljava/lang/String;IJ)V

    return-void
.end method
