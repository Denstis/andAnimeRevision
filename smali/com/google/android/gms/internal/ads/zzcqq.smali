###### Class com.google.android.gms.internal.ads.zzcqq (com.google.android.gms.internal.ads.zzcqq)
.class public final Lcom/google/android/gms/internal/ads/zzcqq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcru;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lcom/google/android/gms/internal/ads/zzcrr<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcru<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzgey:Lcom/google/android/gms/internal/ads/zzcru;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcru<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final zzgfn:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcru;JLjava/util/concurrent/ScheduledExecutorService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcru<",
            "TS;>;J",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzgey:Lcom/google/android/gms/internal/ads/zzcru;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzgfn:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zzalv()Lcom/google/android/gms/internal/ads/zzddi;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzddi<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzgey:Lcom/google/android/gms/internal/ads/zzcru;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcru;->zzalv()Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzgfn:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_16

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcqq;->zzfcx:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdcy;->zza(Lcom/google/android/gms/internal/ads/zzddi;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    :cond_16
    const-class v1, Ljava/lang/Throwable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzcqp;->zzbkv:Lcom/google/android/gms/internal/ads/zzdcj;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdcy;->zzb(Lcom/google/android/gms/internal/ads/zzddi;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdcj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    return-object v0
.end method
