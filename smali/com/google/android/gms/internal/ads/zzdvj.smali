###### Class com.google.android.gms.internal.ads.zzdvj (com.google.android.gms.internal.ads.zzdvj)
.class public Lcom/google/android/gms/internal/ads/zzdvj;
.super Lcom/google/android/gms/internal/ads/zzdvl;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbb;


# instance fields
.field private type:Ljava/lang/String;

.field private zzauv:J

.field private zzhwm:Lcom/google/android/gms/internal/ads/zzbe;

.field private zzhwn:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdvl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvj;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvj;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzhwm:Lcom/google/android/gms/internal/ads/zzbe;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdvn;JLcom/google/android/gms/internal/ads/zzba;)V
    .registers 12

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwt:Lcom/google/android/gms/internal/ads/zzdvn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwy:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhwy:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzhwn:Z

    if-nez v2, :cond_1e

    const-wide/16 v2, 0x8

    add-long/2addr v2, p2

    const-wide v4, 0x100000000L

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1b

    goto :goto_1e

    :cond_1b
    const/16 v2, 0x8

    goto :goto_20

    :cond_1e
    :goto_1e
    const/16 v2, 0x10

    :goto_20
    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzbch:J

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->position()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdvn;->zzew(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->position()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzaqu:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdvl;->zzhww:Lcom/google/android/gms/internal/ads/zzba;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdvn;Ljava/nio/ByteBuffer;JLcom/google/android/gms/internal/ads/zzba;)V
    .registers 10

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdvn;->position()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzauv:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/16 v0, 0x10

    if-ne p2, v0, :cond_16

    const/4 p2, 0x1

    goto :goto_17

    :cond_16
    const/4 p2, 0x0

    :goto_17
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdvj;->zzhwn:Z

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzdvj;->zza(Lcom/google/android/gms/internal/ads/zzdvn;JLcom/google/android/gms/internal/ads/zzba;)V

    return-void
.end method
