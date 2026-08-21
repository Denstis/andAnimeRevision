###### Class com.google.android.gms.internal.ads.zzdqf (com.google.android.gms.internal.ads.zzdqf)
.class public abstract Lcom/google/android/gms/internal/ads/zzdqf;
.super Lcom/google/android/gms/internal/ads/zzdpn;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdqf$zze;,
        Lcom/google/android/gms/internal/ads/zzdqf$zzc;,
        Lcom/google/android/gms/internal/ads/zzdqf$zza;,
        Lcom/google/android/gms/internal/ads/zzdqf$zzb;,
        Lcom/google/android/gms/internal/ads/zzdqf$zzd;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzhgx:Z


# instance fields
.field zzhgy:Lcom/google/android/gms/internal/ads/zzdqg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzdqf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqf;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt;->zzbca()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzdqf;->zzhgx:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpn;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdqe;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqf;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/ads/zzdrl;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrl;->zzazu()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdrl;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdrl;->zzazu()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzaa([B)Lcom/google/android/gms/internal/ads/zzdqf;
    .registers 4

    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdqf$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;-><init>([BII)V

    return-object v1
.end method

.method public static zzab([B)I
    .registers 2

    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzae(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzge(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzaf(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzag(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgk(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzah(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzai(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzaj(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzge(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static synthetic zzayw()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdqf;->zzhgx:Z

    return v0
.end method

.method public static zzb(IF)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzdrl;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaf(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(ILcom/google/android/gms/internal/ads/zzdrl;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static zzb(ILcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzb(Lcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)I
    .registers 4

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdpf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpf;->zzaxh()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzau(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdpf;->zzfi(I)V

    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzbi(Z)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static zzc(D)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzc(ID)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzdpm;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->size()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzdsg;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzk(Lcom/google/android/gms/internal/ads/zzdsg;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method static zzc(ILcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpf;->zzaxh()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdsv;->zzau(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdpf;->zzfi(I)V

    :cond_16
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/ads/zzdpm;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaf(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdpm;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzd(ILcom/google/android/gms/internal/ads/zzdsg;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzaf(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdsg;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzda(Lcom/google/android/gms/internal/ads/zzdpm;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpm;->size()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzfd(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfe(J)I

    move-result p0

    return p0
.end method

.method public static zzfe(J)I
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 p0, 0xa

    return p0

    :cond_12
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2f

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_2f
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    return v0
.end method

.method public static zzff(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfi(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfe(J)I

    move-result p0

    return p0
.end method

.method public static zzfg(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzfh(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method private static zzfi(J)J
    .registers 5

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzg(F)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzgd(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result p0

    return p0
.end method

.method public static zzge(I)I
    .registers 1

    if-ltz p0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static zzgf(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static zzgg(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgk(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result p0

    return p0
.end method

.method public static zzgh(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzgi(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzgj(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzge(I)I

    move-result p0

    return p0
.end method

.method private static zzgk(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzgl(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result p0

    return p0
.end method

.method public static zzh(ILjava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzhj(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzh(IZ)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzhj(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdtw;->zza(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzdtz; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    :catch_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqx;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_c
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzj(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfe(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzk(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfe(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzk(Lcom/google/android/gms/internal/ads/zzdsg;)I
    .registers 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdsg;->zzazu()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzl(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfi(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfe(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzl(Lcom/google/android/gms/internal/ads/zzdsg;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzdsg;->zzazu()I

    move-result p0

    return p0
.end method

.method public static zzm(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzm(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzdqf;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdqf$zza;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt;->zzbcb()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zze;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_24
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ByteBuffer is read-only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zzn(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method


# virtual methods
.method public abstract flush()V
.end method

.method public abstract write([BII)V
.end method

.method public final zza(IF)V
    .registers 3

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzad(II)V

    return-void
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzdpm;)V
.end method

.method public abstract zza(ILcom/google/android/gms/internal/ads/zzdsg;)V
.end method

.method abstract zza(ILcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V
.end method

.method abstract zza(Lcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdtz;)V
    .registers 9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqf;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdqx;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_14
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdpn;->zzi([BII)V
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Lcom/google/android/gms/internal/ads/zzdqf$zzd; {:try_start_14 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    throw p1

    :catch_20
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract zzaa(II)V
.end method

.method public abstract zzab(II)V
.end method

.method public final zzac(II)V
    .registers 3

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgk(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzab(II)V

    return-void
.end method

.method public abstract zzad(II)V
.end method

.method public abstract zzayu()I
.end method

.method public final zzayv()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqf;->zzayu()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(D)V
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfc(J)V

    return-void
.end method

.method public final zzb(ID)V
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzi(IJ)V

    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/ads/zzdpm;)V
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/ads/zzdsg;)V
.end method

.method public final zzbh(Z)V
    .registers 2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzd(B)V

    return-void
.end method

.method public abstract zzcz(Lcom/google/android/gms/internal/ads/zzdpm;)V
.end method

.method public abstract zzd(B)V
.end method

.method public final zzf(F)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgc(I)V

    return-void
.end method

.method public abstract zzfa(J)V
.end method

.method public final zzfb(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfi(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfa(J)V

    return-void
.end method

.method public abstract zzfc(J)V
.end method

.method public abstract zzfz(I)V
.end method

.method public abstract zzg(IJ)V
.end method

.method public abstract zzg(ILjava/lang/String;)V
.end method

.method public abstract zzg(IZ)V
.end method

.method public abstract zzga(I)V
.end method

.method public final zzgb(I)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgk(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzga(I)V

    return-void
.end method

.method public abstract zzgc(I)V
.end method

.method public final zzh(IJ)V
    .registers 4

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzfi(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzg(IJ)V

    return-void
.end method

.method public abstract zzhi(Ljava/lang/String;)V
.end method

.method public abstract zzi(IJ)V
.end method

.method public abstract zzj(Lcom/google/android/gms/internal/ads/zzdsg;)V
.end method

.method abstract zzk([BII)V
.end method

.method public abstract zzz(II)V
.end method

###### Class com.google.android.gms.internal.ads.zzdqf.zza (com.google.android.gms.internal.ads.zzdqf$zza)
.class final Lcom/google/android/gms/internal/ads/zzdqf$zza;
.super Lcom/google/android/gms/internal/ads/zzdqf$zzb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field private final zzhgz:Ljava/nio/ByteBuffer;

.field private zzhha:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;-><init>([BII)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zza;->zzhgz:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zza;->zzhha:I

    return-void
.end method


# virtual methods
.method public final flush()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zza;->zzhgz:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zza;->zzhha:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzayx()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdqf.zzb (com.google.android.gms.internal.ads.zzdqf$zzb)
.class Lcom/google/android/gms/internal/ads/zzdqf$zzb;
.super Lcom/google/android/gms/internal/ads/zzdqf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final offset:I

.field private position:I


# direct methods
.method constructor <init>([BII)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqf;-><init>(Lcom/google/android/gms/internal/ads/zzdqe;)V

    if-eqz p1, :cond_3d

    or-int v0, p2, p3

    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_18

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->offset:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->limit:I

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public flush()V
    .registers 1

    return-void
.end method

.method public final write([BII)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzcz(Lcom/google/android/gms/internal/ads/zzdpm;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzj(Lcom/google/android/gms/internal/ads/zzdsg;)V

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V
    .registers 6

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpf;->zzaxh()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzdsv;->zzau(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdpf;->zzfi(I)V

    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzga(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqf;->zzhgy:Lcom/google/android/gms/internal/ads/zzdqg;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpf;->zzaxh()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzau(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpf;->zzfi(I)V

    :cond_11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzga(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf;->zzhgy:Lcom/google/android/gms/internal/ads/zzdqg;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void
.end method

.method public final zzaa(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzfz(I)V

    return-void
.end method

.method public final zzab(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzga(I)V

    return-void
.end method

.method public final zzad(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzgc(I)V

    return-void
.end method

.method public final zzayu()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzayx()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzab(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzab(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zza(ILcom/google/android/gms/internal/ads/zzdsg;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    return-void
.end method

.method public final zzcz(Lcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzga(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzdpm;->zza(Lcom/google/android/gms/internal/ads/zzdpn;)V

    return-void
.end method

.method public final zzd(B)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzfa(J)V
    .registers 12

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqf;->zzayw()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzayu()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_3c

    :goto_13
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_13

    :cond_3c
    :goto_3c
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_4f

    :try_start_42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_5f} :catch_61

    ushr-long/2addr p1, v1

    goto :goto_3c

    :catch_61
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    :goto_8a
    throw p2

    :goto_8b
    goto :goto_8a
.end method

.method public final zzfc(J)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    const/16 v2, 0x38

    shr-long/2addr p1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1
    :try_end_7b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_7b} :catch_7c

    return-void

    :catch_7c
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzfz(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzga(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzfa(J)V

    return-void
.end method

.method public final zzg(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzfa(J)V

    return-void
.end method

.method public final zzg(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzhi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzg(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzd(B)V

    return-void
.end method

.method public final zzga(I)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqf;->zzayw()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpj;->zzaxl()Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzayu()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_ad

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    return-void

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    return-void

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    return-void

    :cond_8e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJB)V

    return-void

    :cond_ad
    :goto_ad
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_bd

    :try_start_b1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_bd
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b1 .. :try_end_cc} :catch_cf

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_ad

    :catch_cf
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f9

    :goto_f8
    throw v0

    :goto_f9
    goto :goto_f8
.end method

.method public final zzgc(I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzhi(Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v2

    if-ne v2, v1, :cond_31

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzayu()I

    move-result v4

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzdtw;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzga(I)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    return-void

    :cond_31
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtw;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzga(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzayu()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdtw;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I
    :try_end_46
    .catch Lcom/google/android/gms/internal/ads/zzdtz; {:try_start_2 .. :try_end_46} :catch_4e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4e
    move-exception v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->position:I

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdtz;)V

    return-void
.end method

.method public final zzi(IJ)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzz(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzfc(J)V

    return-void
.end method

.method public final zzi([BII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->write([BII)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdsg;->zzazu()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzga(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzdsg;->zzb(Lcom/google/android/gms/internal/ads/zzdqf;)V

    return-void
.end method

.method public final zzk([BII)V
    .registers 4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzga(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->write([BII)V

    return-void
.end method

.method public final zzz(II)V
    .registers 3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzb;->zzga(I)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdqf.zzc (com.google.android.gms.internal.ads.zzdqf$zzc)
.class final Lcom/google/android/gms/internal/ads/zzdqf$zzc;
.super Lcom/google/android/gms/internal/ads/zzdqf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzc"
.end annotation


# instance fields
.field private final zzakm:Ljava/nio/ByteBuffer;

.field private final zzhha:I

.field private final zzhhb:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqf;-><init>(Lcom/google/android/gms/internal/ads/zzdqe;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzhhb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzhha:I

    return-void
.end method

.method private final zzhk(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdtw;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final flush()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzhhb:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final write([BII)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_d
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_d
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzcz(Lcom/google/android/gms/internal/ads/zzdpm;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzj(Lcom/google/android/gms/internal/ads/zzdsg;)V

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zza(Lcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpf;->zzaxh()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzau(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpf;->zzfi(I)V

    :cond_11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzga(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf;->zzhgy:Lcom/google/android/gms/internal/ads/zzdqg;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void
.end method

.method public final zzaa(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzfz(I)V

    return-void
.end method

.method public final zzab(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzga(I)V

    return-void
.end method

.method public final zzad(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzgc(I)V

    return-void
.end method

.method public final zzayu()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzab(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzab(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zza(ILcom/google/android/gms/internal/ads/zzdsg;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    return-void
.end method

.method public final zzcz(Lcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzga(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzdpm;->zza(Lcom/google/android/gms/internal/ads/zzdpn;)V

    return-void
.end method

.method public final zzd(B)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzfa(J)V
    .registers 8

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_1c
    .catch Ljava/nio/BufferOverflowException; {:try_start_9 .. :try_end_1c} :catch_1f

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    :catch_1f
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    goto :goto_27

    :goto_26
    throw p2

    :goto_27
    goto :goto_26
.end method

.method public final zzfc(J)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzfz(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzga(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzfa(J)V

    return-void
.end method

.method public final zzg(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzfa(J)V

    return-void
.end method

.method public final zzg(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzhi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzg(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzd(B)V

    return-void
.end method

.method public final zzga(I)V
    .registers 4

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_b

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_15
    .catch Ljava/nio/BufferOverflowException; {:try_start_4 .. :try_end_15} :catch_18

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :catch_18
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    goto :goto_20

    :goto_1f
    throw v0

    :goto_20
    goto :goto_1f
.end method

.method public final zzgc(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzhi(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v2

    if-ne v2, v1, :cond_3f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzhk(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzga(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_3f
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtw;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzga(I)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzhk(Ljava/lang/String;)V
    :try_end_49
    .catch Lcom/google/android/gms/internal/ads/zzdtz; {:try_start_6 .. :try_end_49} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_51
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdtz;)V

    return-void
.end method

.method public final zzi(IJ)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzz(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzfc(J)V

    return-void
.end method

.method public final zzi([BII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->write([BII)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdsg;->zzazu()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzga(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzdsg;->zzb(Lcom/google/android/gms/internal/ads/zzdqf;)V

    return-void
.end method

.method public final zzk([BII)V
    .registers 4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzga(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->write([BII)V

    return-void
.end method

.method public final zzz(II)V
    .registers 3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzc;->zzga(I)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdqf.zzd (com.google.android.gms.internal.ads.zzdqf$zzd)
.class public final Lcom/google/android/gms/internal/ads/zzdqf$zzd;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "CodedOutputStream was writing to a flat byte array and ran out of space.: "

    if-eqz v0, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "CodedOutputStream was writing to a flat byte array and ran out of space.: "

    if-eqz v0, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdqf.zze (com.google.android.gms.internal.ads.zzdqf$zze)
.class final Lcom/google/android/gms/internal/ads/zzdqf$zze;
.super Lcom/google/android/gms/internal/ads/zzdqf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zze"
.end annotation


# instance fields
.field private final zzakm:Ljava/nio/ByteBuffer;

.field private zzamq:J

.field private final zzhhb:Ljava/nio/ByteBuffer;

.field private final zzhhc:J

.field private final zzhhd:J

.field private final zzhhe:J

.field private final zzhhf:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqf;-><init>(Lcom/google/android/gms/internal/ads/zzdqe;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzakm:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzn(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhc:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhc:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhd:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhc:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhf:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    return-void
.end method

.method private final zzfj(J)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzakm:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhc:J

    sub-long/2addr p1, v1

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public final flush()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhb:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhc:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public final write([BII)V
    .registers 15

    if-eqz p1, :cond_21

    if-ltz p2, :cond_21

    if-ltz p3, :cond_21

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_21

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    int-to-long v9, p3

    sub-long/2addr v0, v9

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_15

    goto :goto_21

    :cond_15
    int-to-long v3, p2

    move-object v2, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzdtt;->zza([BJJJ)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    return-void

    :cond_21
    :goto_21
    if-nez p1, :cond_2b

    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzcz(Lcom/google/android/gms/internal/ads/zzdpm;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzj(Lcom/google/android/gms/internal/ads/zzdsg;)V

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V
    .registers 5

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zza(Lcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsv;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdpf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdpf;->zzaxh()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzau(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdpf;->zzfi(I)V

    :cond_11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzga(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf;->zzhgy:Lcom/google/android/gms/internal/ads/zzdqg;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void
.end method

.method public final zzaa(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzfz(I)V

    return-void
.end method

.method public final zzab(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzga(I)V

    return-void
.end method

.method public final zzad(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzgc(I)V

    return-void
.end method

.method public final zzayu()I
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzab(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzab(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zza(ILcom/google/android/gms/internal/ads/zzdsg;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    return-void
.end method

.method public final zzcz(Lcom/google/android/gms/internal/ads/zzdpm;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzga(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzdpm;->zza(Lcom/google/android/gms/internal/ads/zzdpn;)V

    return-void
.end method

.method public final zzd(B)V
    .registers 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    return-void

    :cond_11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzfa(J)V
    .registers 15

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhf:J

    const/4 v4, 0x7

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x80

    const-wide/16 v9, 0x1

    cmp-long v11, v0, v2

    if-gtz v11, :cond_2f

    :goto_f
    and-long v0, p1, v7

    cmp-long v2, v0, v5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    if-nez v2, :cond_20

    :goto_17
    add-long/2addr v9, v0

    iput-wide v9, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    return-void

    :cond_20
    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    ushr-long/2addr p1, v4

    goto :goto_f

    :cond_2f
    :goto_2f
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    cmp-long v11, v0, v2

    if-gez v11, :cond_4d

    and-long v2, p1, v7

    cmp-long v11, v2, v5

    if-nez v11, :cond_3e

    goto :goto_17

    :cond_3e
    add-long v2, v0, v9

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    ushr-long/2addr p1, v4

    goto :goto_2f

    :cond_4d
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p2, v2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/String;)V

    goto :goto_74

    :goto_73
    throw p1

    :goto_74
    goto :goto_73
.end method

.method public final zzfc(J)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzakm:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhc:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    return-void
.end method

.method public final zzfz(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzga(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzfa(J)V

    return-void
.end method

.method public final zzg(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzfa(J)V

    return-void
.end method

.method public final zzg(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzg(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzd(B)V

    return-void
.end method

.method public final zzga(I)V
    .registers 9

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhf:J

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_29

    :goto_a
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_18

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    :goto_10
    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    return-void

    :cond_18
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_a

    :cond_29
    :goto_29
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    cmp-long v6, v0, v2

    if-gez v6, :cond_45

    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_36

    goto :goto_10

    :cond_36
    add-long v2, v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_29

    :cond_45
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhe:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/String;)V

    goto :goto_6c

    :goto_6b
    throw p1

    :goto_6c
    goto :goto_6b
.end method

.method public final zzgc(I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzakm:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhc:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    return-void
.end method

.method public final zzhi(Ljava/lang/String;)V
    .registers 10

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgf(I)I

    move-result v3

    if-ne v3, v2, :cond_38

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzhhc:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzakm:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzdtw;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzakm:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzga(I)V

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    return-void

    :cond_38
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdtw;->zza(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzga(I)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzfj(J)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzakm:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzdtw;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J
    :try_end_4f
    .catch Lcom/google/android/gms/internal/ads/zzdtz; {:try_start_2 .. :try_end_4f} :catch_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_4f} :catch_57
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_4f} :catch_50

    return-void

    :catch_50
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_57
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdqf$zzd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zzd;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_5e
    move-exception v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzamq:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzfj(J)V

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdtz;)V

    return-void
.end method

.method public final zzi(IJ)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzz(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzfc(J)V

    return-void
.end method

.method public final zzi([BII)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->write([BII)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzdsg;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdsg;->zzazu()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzga(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzdsg;->zzb(Lcom/google/android/gms/internal/ads/zzdqf;)V

    return-void
.end method

.method public final zzk([BII)V
    .registers 4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzga(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->write([BII)V

    return-void
.end method

.method public final zzz(II)V
    .registers 3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqf$zze;->zzga(I)V

    return-void
.end method
