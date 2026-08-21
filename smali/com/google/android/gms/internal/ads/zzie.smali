###### Class com.google.android.gms.internal.ads.zzie (com.google.android.gms.internal.ads.zzie)
.class public final Lcom/google/android/gms/internal/ads/zzie;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhe;


# instance fields
.field private zzafm:I

.field private zzaga:F

.field private zzagb:F

.field private zzajf:Ljava/nio/ByteBuffer;

.field private zzaki:I

.field private zzakm:Ljava/nio/ByteBuffer;

.field private zzakn:Z

.field private zzakw:Lcom/google/android/gms/internal/ads/zzif;

.field private zzakx:Ljava/nio/ShortBuffer;

.field private zzaky:J

.field private zzakz:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaga:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzagb:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzafm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaki:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakm:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakx:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzajf:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final flush()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzif;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaki:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzie;->zzafm:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzif;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakw:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakw:Lcom/google/android/gms/internal/ads/zzif;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaga:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzif;->setSpeed(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakw:Lcom/google/android/gms/internal/ads/zzif;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzagb:F

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzif;->zzc(F)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzajf:Ljava/nio/ByteBuffer;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaky:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakz:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakn:Z

    return-void
.end method

.method public final isActive()Z
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaga:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzagb:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0
.end method

.method public final reset()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakw:Lcom/google/android/gms/internal/ads/zzif;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakm:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakx:Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzajf:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzafm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaki:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaky:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakz:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakn:Z

    return-void
.end method

.method public final zza(F)F
    .registers 4

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzof;->zza(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaga:F

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaga:F

    return p1
.end method

.method public final zzb(F)F
    .registers 4

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzof;->zza(FFF)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzagb:F

    return p1
.end method

.method public final zzb(III)Z
    .registers 5

    const/4 v0, 0x2

    if-ne p3, v0, :cond_13

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaki:I

    if-ne p3, p1, :cond_d

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzie;->zzafm:I

    if-ne p3, p2, :cond_d

    const/4 p1, 0x0

    return p1

    :cond_d
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaki:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzie;->zzafm:I

    const/4 p1, 0x1

    return p1

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhh;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhh;-><init>(III)V

    throw v0
.end method

.method public final zzeo()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakn:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakw:Lcom/google/android/gms/internal/ads/zzif;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzif;->zzfr()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public final zzet()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzafm:I

    return v0
.end method

.method public final zzeu()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final zzev()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakw:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzif;->zzev()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakn:Z

    return-void
.end method

.method public final zzew()Ljava/nio/ByteBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzajf:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhe;->zzagy:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzajf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final zzfp()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaky:J

    return-wide v0
.end method

.method public final zzfq()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakz:J

    return-wide v0
.end method

.method public final zzi(Ljava/nio/ByteBuffer;)V
    .registers 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaky:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzie;->zzaky:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakw:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzif;->zza(Ljava/nio/ShortBuffer;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakw:Lcom/google/android/gms/internal/ads/zzif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzif;->zzfr()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzafm:I

    mul-int p1, p1, v0

    shl-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_6e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_4e

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakm:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakx:Ljava/nio/ShortBuffer;

    goto :goto_58

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakx:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    :goto_58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakw:Lcom/google/android/gms/internal/ads/zzif;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakx:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzif;->zzb(Ljava/nio/ShortBuffer;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakz:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakz:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzakm:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzie;->zzajf:Ljava/nio/ByteBuffer;

    :cond_6e
    return-void
.end method
