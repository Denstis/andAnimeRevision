###### Class com.google.android.gms.internal.measurement.zzen (com.google.android.gms.internal.measurement.zzen)
.class public abstract Lcom/google/android/gms/internal/measurement/zzen;
.super Lcom/google/android/gms/internal/measurement/zzdv;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/zzen$zzb;,
        Lcom/google/android/gms/internal/measurement/zzen$zza;
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/logging/Logger;

.field private static final zzc:Z


# instance fields
.field zza:Lcom/google/android/gms/internal/measurement/zzep;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/measurement/zzen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzen;->zzb:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->zza()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/zzen;->zzc:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzdv;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzem;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzen;-><init>()V

    return-void
.end method

.method public static zza(ILcom/google/android/gms/internal/measurement/zzft;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzft;->zzb()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzft;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzft;->zzb()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzgo;Lcom/google/android/gms/internal/measurement/zzhd;)I
    .registers 4

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzdl;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdl;->zzbj()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzhd;->zzb(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzdl;->zzc(I)V

    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static zza([B)Lcom/google/android/gms/internal/measurement/zzen;
    .registers 4

    array-length v0, p0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzen$zzb;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;-><init>([BII)V

    return-object v1
.end method

.method public static zzb(D)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzb(F)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzb(ID)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzb(IF)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/measurement/zzft;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen;->zza(ILcom/google/android/gms/internal/measurement/zzft;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(ILcom/google/android/gms/internal/measurement/zzgo;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzb(Lcom/google/android/gms/internal/measurement/zzgo;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method static zzb(ILcom/google/android/gms/internal/measurement/zzgo;Lcom/google/android/gms/internal/measurement/zzhd;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zza(Lcom/google/android/gms/internal/measurement/zzgo;Lcom/google/android/gms/internal/measurement/zzhd;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(ILjava/lang/String;)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzb(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(IZ)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzdu;)I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdu;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/measurement/zzgo;)I
    .registers 2

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzgo;->zzbn()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(Ljava/lang/String;)I
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzie;->zza(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/measurement/zzih; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    :catch_5
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzff;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    :goto_c
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzb(Z)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static zzb([B)I
    .registers 2

    array-length p0, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzc(ILcom/google/android/gms/internal/measurement/zzdu;)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdu;->zza()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static zzc(ILcom/google/android/gms/internal/measurement/zzgo;Lcom/google/android/gms/internal/measurement/zzhd;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzdl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdl;->zzbj()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzb(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzdl;->zzc(I)V

    :cond_16
    add-int/2addr p0, v0

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/measurement/zzgo;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzgo;->zzbn()I

    move-result p0

    return p0
.end method

.method static synthetic zzc()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/measurement/zzen;->zzc:Z

    return v0
.end method

.method public static zzd(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzd(ILcom/google/android/gms/internal/measurement/zzdu;)I
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzc(ILcom/google/android/gms/internal/measurement/zzdu;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzd(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen;->zze(J)I

    move-result p0

    return p0
.end method

.method public static zze(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result p0

    return p0
.end method

.method public static zze(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zze(J)I
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

.method public static zzf(I)I
    .registers 1

    if-ltz p0, :cond_7

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static zzf(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzf(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zzi(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zze(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzf(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzi(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen;->zze(J)I

    move-result p0

    return p0
.end method

.method public static zzg(I)I
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

.method public static zzg(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzg(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzg(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzh(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzm(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result p0

    return p0
.end method

.method public static zzh(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzm(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzh(IJ)I
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static zzh(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static zzi(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzi(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static zzi(J)J
    .registers 5

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzj(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static zzj(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static zzk(I)I
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzf(I)I

    move-result p0

    return p0
.end method

.method public static zzk(II)I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zze(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzf(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzl(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result p0

    return p0
.end method

.method private static zzm(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zza(B)V
.end method

.method public final zza(D)V
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zzc(J)V

    return-void
.end method

.method public final zza(F)V
    .registers 2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzd(I)V

    return-void
.end method

.method public abstract zza(I)V
.end method

.method public final zza(ID)V
    .registers 4

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzen;->zzc(IJ)V

    return-void
.end method

.method public final zza(IF)V
    .registers 3

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zze(II)V

    return-void
.end method

.method public abstract zza(II)V
.end method

.method public abstract zza(IJ)V
.end method

.method public abstract zza(ILcom/google/android/gms/internal/measurement/zzdu;)V
.end method

.method public abstract zza(ILcom/google/android/gms/internal/measurement/zzgo;)V
.end method

.method abstract zza(ILcom/google/android/gms/internal/measurement/zzgo;Lcom/google/android/gms/internal/measurement/zzhd;)V
.end method

.method public abstract zza(ILjava/lang/String;)V
.end method

.method public abstract zza(IZ)V
.end method

.method public abstract zza(J)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzdu;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/measurement/zzgo;)V
.end method

.method public abstract zza(Ljava/lang/String;)V
.end method

.method final zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzih;)V
    .registers 9

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzen;->zzb:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/google/android/gms/internal/measurement/zzff;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :try_start_14
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zzb(I)V

    const/4 p2, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/zzdv;->zza([BII)V
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Lcom/google/android/gms/internal/measurement/zzen$zza; {:try_start_14 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    throw p1

    :catch_20
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzen$zza;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/measurement/zzen$zza;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(Z)V
    .registers 2

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen;->zza(B)V

    return-void
.end method

.method public final zzb()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzen;->zza()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract zzb(I)V
.end method

.method public abstract zzb(II)V
.end method

.method public final zzb(IJ)V
    .registers 4

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/measurement/zzen;->zzi(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzen;->zza(IJ)V

    return-void
.end method

.method public abstract zzb(ILcom/google/android/gms/internal/measurement/zzdu;)V
.end method

.method public final zzb(J)V
    .registers 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zzi(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zza(J)V

    return-void
.end method

.method abstract zzb([BII)V
.end method

.method public final zzc(I)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzm(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen;->zzb(I)V

    return-void
.end method

.method public abstract zzc(II)V
.end method

.method public abstract zzc(IJ)V
.end method

.method public abstract zzc(J)V
.end method

.method public abstract zzd(I)V
.end method

.method public final zzd(II)V
    .registers 3

    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzen;->zzm(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzen;->zzc(II)V

    return-void
.end method

.method public abstract zze(II)V
.end method

###### Class com.google.android.gms.internal.measurement.zzen.zza (com.google.android.gms.internal.measurement.zzen$zza)
.class public final Lcom/google/android/gms/internal/measurement/zzen$zza;
.super Ljava/io/IOException;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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

###### Class com.google.android.gms.internal.measurement.zzen.zzb (com.google.android.gms.internal.measurement.zzen$zzb)
.class final Lcom/google/android/gms/internal/measurement/zzen$zzb;
.super Lcom/google/android/gms/internal/measurement/zzen;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field private final zzb:[B

.field private final zzc:I

.field private final zzd:I

.field private zze:I


# direct methods
.method constructor <init>([BII)V
    .registers 6

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/zzen;-><init>(Lcom/google/android/gms/internal/measurement/zzem;)V

    if-eqz p1, :cond_3d

    or-int/lit8 p2, p3, 0x0

    array-length v0, p1

    add-int/lit8 v1, p3, 0x0

    sub-int/2addr v0, v1

    or-int/2addr p2, v0

    const/4 v0, 0x0

    if-ltz p2, :cond_19

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzd:I

    return-void

    :cond_19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzc([BII)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzen$zza;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzd:I

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

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/measurement/zzen$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final zza()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zza(B)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzen$zza;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzd:I

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

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzen$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zza(I)V
    .registers 4

    if-ltz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(J)V

    return-void
.end method

.method public final zza(II)V
    .registers 3

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb(I)V

    return-void
.end method

.method public final zza(IJ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzdu;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzdu;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/measurement/zzgo;)V
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzc(II)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzgo;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/measurement/zzgo;Lcom/google/android/gms/internal/measurement/zzhd;)V
    .registers 6

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzdl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdl;->zzbj()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zzb(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/zzdl;->zzc(I)V

    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzen;->zza:Lcom/google/android/gms/internal/measurement/zzep;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/measurement/zzhd;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzis;)V

    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(IZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(B)V

    return-void
.end method

.method public final zza(J)V
    .registers 12

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzen;->zzc()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_3c

    :goto_13
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_13

    :cond_3c
    :goto_3c
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_4f

    :try_start_42
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v6, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

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

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzen$zza;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzd:I

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

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzen$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    :goto_8a
    throw p2

    :goto_8b
    goto :goto_8a
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzdu;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzdu;->zza()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/measurement/zzdu;->zza(Lcom/google/android/gms/internal/measurement/zzdv;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zzgo;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzgo;->zzbn()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb(I)V

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/measurement/zzgo;->zza(Lcom/google/android/gms/internal/measurement/zzen;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzen;->zzg(I)I

    move-result v2

    if-ne v2, v1, :cond_31

    add-int v1, v0, v2

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza()I

    move-result v4

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/internal/measurement/zzie;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb(I)V

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    return-void

    :cond_31
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzie;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzie;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I
    :try_end_46
    .catch Lcom/google/android/gms/internal/measurement/zzih; {:try_start_2 .. :try_end_46} :catch_4e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzen$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/measurement/zzen$zza;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4e
    move-exception v1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/measurement/zzen;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzih;)V

    return-void
.end method

.method public final zza([BII)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzc([BII)V

    return-void
.end method

.method public final zzb(I)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzen;->zzc()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzdr;->zza()Z

    move-result v0

    if-nez v0, :cond_ad

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_ad

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    return-void

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    return-void

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    return-void

    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    return-void

    :cond_8e
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/measurement/zzib;->zza([BJB)V

    return-void

    :cond_ad
    :goto_ad
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_bd

    :try_start_b1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_bd
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

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

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzen$zza;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzd:I

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

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzen$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f9

    :goto_f8
    throw v0

    :goto_f9
    goto :goto_f8
.end method

.method public final zzb(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(I)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/measurement/zzdu;)V
    .registers 6

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzc(II)V

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(ILcom/google/android/gms/internal/measurement/zzdu;)V

    const/4 p1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    return-void
.end method

.method public final zzb([BII)V
    .registers 4

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb(I)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzc([BII)V

    return-void
.end method

.method public final zzc(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb(I)V

    return-void
.end method

.method public final zzc(IJ)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzc(J)V

    return-void
.end method

.method public final zzc(J)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    long-to-int v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    const/16 v2, 0x8

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    const/16 v2, 0x10

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    const/16 v2, 0x18

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    const/16 v2, 0x28

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    const/16 v2, 0x30

    shr-long v2, p1, v2

    long-to-int v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

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

    new-instance p2, Lcom/google/android/gms/internal/measurement/zzen$zza;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzd:I

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

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzen$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzd(I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v1
    :try_end_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_32} :catch_33

    return-void

    :catch_33
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzen$zza;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zze:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzd:I

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

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzen$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zze(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zza(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzen$zzb;->zzd(I)V

    return-void
.end method
