###### Class com.google.android.gms.internal.ads.zzdtq (com.google.android.gms.internal.ads.zzdtq)
.class public final Lcom/google/android/gms/internal/ads/zzdtq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzhop:Lcom/google/android/gms/internal/ads/zzdtq;


# instance fields
.field private count:I

.field private zzhfr:Z

.field private zzhks:I

.field private zzhnb:[Ljava/lang/Object;

.field private zzhoq:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtq;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdtq;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhop:Lcom/google/android/gms/internal/ads/zzdtq;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzdtq;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhks:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhfr:Z

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzdtq;Lcom/google/android/gms/internal/ads/zzdtq;)Lcom/google/android/gms/internal/ads/zzdtq;
    .registers 8

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzdtq;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdtq;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V
    .registers 5

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_56

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_46

    const/4 v1, 0x3

    if-eq p0, v1, :cond_26

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1c

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/android/gms/internal/ads/zzduk;->zzad(II)V

    return-void

    :cond_1c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbah()Lcom/google/android/gms/internal/ads/zzdrf;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_26
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzduk;->zzayy()I

    move-result p0

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlg:I

    if-ne p0, v1, :cond_3a

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzduk;->zzgm(I)V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtq;->zzb(Lcom/google/android/gms/internal/ads/zzduk;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzduk;->zzgn(I)V

    return-void

    :cond_3a
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzduk;->zzgn(I)V

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdtq;->zzb(Lcom/google/android/gms/internal/ads/zzduk;)V

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzduk;->zzgm(I)V

    return-void

    :cond_46
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzduk;->zza(ILcom/google/android/gms/internal/ads/zzdpm;)V

    return-void

    :cond_4c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzduk;->zzi(IJ)V

    return-void

    :cond_56
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzduk;->zzo(IJ)V

    return-void
.end method

.method public static zzbbx()Lcom/google/android/gms/internal/ads/zzdtq;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhop:Lcom/google/android/gms/internal/ads/zzdtq;

    return-object v0
.end method

.method static zzbby()Lcom/google/android/gms/internal/ads/zzdtq;
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdtq;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/internal/ads/zzdtq;

    if-nez v2, :cond_d

    return v1

    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdtq;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    if-ne v2, v3, :cond_47

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v2, :cond_27

    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_24

    const/4 v2, 0x0

    goto :goto_28

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_27
    const/4 v2, 0x1

    :goto_28
    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v3, :cond_42

    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const/4 p1, 0x0

    goto :goto_43

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_42
    const/4 p1, 0x1

    :goto_43
    if-nez p1, :cond_46

    goto :goto_47

    :cond_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public final hashCode()I
    .registers 9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_e
    if-ge v5, v0, :cond_18

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_18
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    :goto_1f
    if-ge v3, v2, :cond_2d

    mul-int/lit8 v4, v4, 0x1f

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_2d
    add-int/2addr v1, v4

    return v1
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzduk;)V
    .registers 5

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzduk;->zzayy()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlh:I

    if-ne v0, v1, :cond_1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzduk;->zzb(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_34
    return-void
.end method

.method final zza(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsh;->zza(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public final zzaxj()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhfr:Z

    return-void
.end method

.method public final zzazu()I
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhks:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    if-ge v0, v2, :cond_78

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_66

    const/4 v4, 0x1

    if-eq v2, v4, :cond_57

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4c

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3b

    const/4 v4, 0x5

    if-ne v2, v4, :cond_31

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzah(II)I

    move-result v2

    goto :goto_74

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbah()Lcom/google/android/gms/internal/ads/zzdrf;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3b
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzgd(I)I

    move-result v2

    shl-int/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdtq;->zzazu()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_74

    :cond_4c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzdqf;->zzc(ILcom/google/android/gms/internal/ads/zzdpm;)I

    move-result v2

    goto :goto_74

    :cond_57
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdqf;->zzm(IJ)I

    move-result v2

    goto :goto_74

    :cond_66
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdqf;->zzk(IJ)I

    move-result v2

    :goto_74
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_78
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhks:I

    return v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzduk;)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzduk;->zzayy()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlg:I

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    :goto_e
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    if-ge v0, v1, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdtq;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    return-void

    :cond_21
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdtq;->zzb(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_35
    return-void
.end method

.method public final zzbbz()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhks:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    if-ge v0, v2, :cond_20

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdqf;->zzd(ILcom/google/android/gms/internal/ads/zzdpm;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_20
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhks:I

    return v1
.end method

.method final zzc(ILjava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhfr:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    array-length v1, v1

    if-ne v0, v1, :cond_26

    const/4 v1, 0x4

    if-ge v0, v1, :cond_11

    const/16 v0, 0x8

    goto :goto_13

    :cond_11
    shr-int/lit8 v0, v0, 0x1

    :goto_13
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhoq:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    aput p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->zzhnb:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdtq;->count:I

    return-void

    :cond_35
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
