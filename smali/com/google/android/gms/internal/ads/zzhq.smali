###### Class com.google.android.gms.internal.ads.zzhq (com.google.android.gms.internal.ads.zzhq)
.class Lcom/google/android/gms/internal/ads/zzhq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private zzafn:I

.field protected zzahy:Landroid/media/AudioTrack;

.field private zzajq:Z

.field private zzajr:J

.field private zzajs:J

.field private zzajt:J

.field private zzaju:J

.field private zzajv:J

.field private zzajw:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhr;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhq;-><init>()V

    return-void
.end method


# virtual methods
.method public final pause()V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzaju:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method public zza(Landroid/media/AudioTrack;Z)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzahy:Landroid/media/AudioTrack;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajq:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzaju:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajr:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajs:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajt:J

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzafn:I

    :cond_1b
    return-void
.end method

.method public final zzds(J)V
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhq;->zzfi()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajv:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzaju:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajw:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public final zzfi()J
    .registers 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzaju:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzaju:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzafn:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajw:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajv:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_35

    return-wide v2

    :cond_35
    const-wide v4, 0xffffffffL

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzahy:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v1

    int-to-long v6, v1

    and-long/2addr v4, v6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajq:Z

    if-eqz v1, :cond_54

    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    cmp-long v0, v4, v2

    if-nez v0, :cond_51

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajr:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajt:J

    :cond_51
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajt:J

    add-long/2addr v4, v0

    :cond_54
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajr:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_61

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajs:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajs:J

    :cond_61
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajr:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzajs:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v4, v0

    return-wide v4
.end method

.method public final zzfj()J
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhq;->zzfi()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzafn:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public zzfk()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zzfl()J
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public zzfm()J
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
