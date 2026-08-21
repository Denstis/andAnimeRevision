###### Class com.google.android.gms.internal.ads.zzdtt (com.google.android.gms.internal.ads.zzdtt)
.class final Lcom/google/android/gms/internal/ads/zzdtt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdtt$zza;,
        Lcom/google/android/gms/internal/ads/zzdtt$zzc;,
        Lcom/google/android/gms/internal/ads/zzdtt$zzb;,
        Lcom/google/android/gms/internal/ads/zzdtt$zzd;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final zzgqj:Lsun/misc/Unsafe;

.field private static final zzhft:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final zzhgx:Z

.field private static final zzhou:Z

.field private static final zzhov:Z

.field private static final zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

.field private static final zzhox:Z

.field static final zzhoy:J

.field private static final zzhoz:J

.field private static final zzhpa:J

.field private static final zzhpb:J

.field private static final zzhpc:J

.field private static final zzhpd:J

.field private static final zzhpe:J

.field private static final zzhpf:J

.field private static final zzhpg:J

.field private static final zzhph:J

.field private static final zzhpi:J

.field private static final zzhpj:J

.field private static final zzhpk:J

.field private static final zzhpl:J

.field private static final zzhpm:I

.field static final zzhpn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-class v0, [Ljava/lang/Object;

    const-class v1, [D

    const-class v2, [F

    const-class v3, [J

    const-class v4, [I

    const-class v5, [Z

    const-class v6, Lcom/google/android/gms/internal/ads/zzdtt;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sput-object v6, Lcom/google/android/gms/internal/ads/zzdtt;->logger:Ljava/util/logging/Logger;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt;->zzbcc()Lsun/misc/Unsafe;

    move-result-object v6

    sput-object v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzgqj:Lsun/misc/Unsafe;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpj;->zzaxm()Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzhft:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzm(Ljava/lang/Class;)Z

    move-result v6

    sput-boolean v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzhou:Z

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzm(Ljava/lang/Class;)Z

    move-result v6

    sput-boolean v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzhov:Z

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzgqj:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    if-nez v6, :cond_3a

    goto :goto_5f

    :cond_3a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpj;->zzaxl()Z

    move-result v6

    if-eqz v6, :cond_58

    sget-boolean v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzhou:Z

    if-eqz v6, :cond_4c

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdtt$zzc;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzgqj:Lsun/misc/Unsafe;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzdtt$zzc;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_5f

    :cond_4c
    sget-boolean v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzhov:Z

    if-eqz v6, :cond_5f

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdtt$zza;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzgqj:Lsun/misc/Unsafe;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzdtt$zza;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_5f

    :cond_58
    new-instance v7, Lcom/google/android/gms/internal/ads/zzdtt$zzb;

    sget-object v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzgqj:Lsun/misc/Unsafe;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzdtt$zzb;-><init>(Lsun/misc/Unsafe;)V

    :cond_5f
    :goto_5f
    sput-object v7, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt;->zzbce()Z

    move-result v6

    sput-boolean v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzhox:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt;->zzbcd()Z

    move-result v6

    sput-boolean v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzhgx:Z

    const-class v6, [B

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Class;)I

    move-result v6

    int-to-long v6, v6

    sput-wide v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzhoy:J

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Class;)I

    move-result v6

    int-to-long v6, v6

    sput-wide v6, Lcom/google/android/gms/internal/ads/zzdtt;->zzhoz:J

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Class;)I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpa:J

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Class;)I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpb:J

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpc:J

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Class;)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpd:J

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpe:J

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Class;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpf:J

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpg:J

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Class;)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/google/android/gms/internal/ads/zzdtt;->zzhph:J

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpi:J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Class;)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpj:J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtt;->zzl(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpk:J

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt;->zzbcf()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_dc

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    if-nez v1, :cond_d5

    goto :goto_dc

    :cond_d5
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_de

    :cond_dc
    :goto_dc
    const-wide/16 v0, -0x1

    :goto_de
    sput-wide v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpl:J

    sget-wide v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhoy:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v1, v0

    sput v1, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpm:I

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_f2

    const/4 v0, 0x1

    goto :goto_f3

    :cond_f2
    const/4 v0, 0x0

    :goto_f3
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpn:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza([BJ)B
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzdtt;->zzhoy:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzy(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static zza(JB)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zza(JB)V

    return-void
.end method

.method private static zza(Ljava/lang/Object;JB)V
    .registers 8

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    xor-int/lit8 p1, p2, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JD)V
    .registers 11

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zza(Ljava/lang/Object;JD)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JF)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zza(Ljava/lang/Object;JF)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JJ)V
    .registers 11

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zza(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static zza(Ljava/lang/Object;JZ)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zza(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zza([BJB)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzdtt;->zzhoy:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zze(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zza([BJJJ)V
    .registers 15

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zza([BJJJ)V

    return-void
.end method

.method private static zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_6

    :catchall_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method

.method private static zzb(Ljava/lang/Object;JB)V
    .registers 8

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result v2

    long-to-int p2, p1

    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v3, p2, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v2

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method static zzb(Ljava/lang/Object;JI)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method private static zzb(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JB)V

    return-void
.end method

.method static zzbca()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhgx:Z

    return v0
.end method

.method static zzbcb()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhox:Z

    return v0
.end method

.method static zzbcc()Lsun/misc/Unsafe;
    .registers 1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdtv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdtv;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_d

    :catchall_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method private static zzbcd()Z
    .registers 9

    const-class v0, Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdtt;->zzgqj:Lsun/misc/Unsafe;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return v2

    :cond_8
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "objectFieldOffset"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Field;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayBaseOffset"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "arrayIndexScale"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getInt"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putInt"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getLong"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putLong"

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getObject"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putObject"

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    aput-object v0, v7, v5

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpj;->zzaxl()Z

    move-result v3

    if-eqz v3, :cond_8f

    return v4

    :cond_8f
    const-string v3, "getByte"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putByte"

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getBoolean"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putBoolean"

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getFloat"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putFloat"

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "getDouble"

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "putDouble"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v0, v6, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v4

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_107
    .catchall {:try_start_8 .. :try_end_107} :catchall_108

    return v4

    :catchall_108
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdtt;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string v5, "supportsUnsafeArrayOperations"

    invoke-virtual {v1, v3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private static zzbce()Z
    .registers 10

    const-string v0, "copyMemory"

    const-string v1, "getLong"

    const-class v2, Ljava/lang/Object;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdtt;->zzgqj:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    return v4

    :cond_c
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "objectFieldOffset"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/reflect/Field;

    aput-object v8, v7, v4

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v2, v7, v4

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtt;->zzbcf()Ljava/lang/reflect/Field;

    move-result-object v7

    if-nez v7, :cond_2f

    return v4

    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpj;->zzaxl()Z

    move-result v7

    if-eqz v7, :cond_36

    return v6

    :cond_36
    const-string v7, "getByte"

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "putByte"

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "getInt"

    new-array v8, v6, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v7, "putInt"

    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v1, "putLong"

    new-array v7, v5, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v5

    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v2, v7, v4

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v2, v7, v5

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v7, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v7, v1

    invoke-virtual {v3, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_ab
    .catchall {:try_start_c .. :try_end_ab} :catchall_ac

    return v6

    :catchall_ac
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdtt;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.protobuf.UnsafeUtil"

    const-string v5, "supportsUnsafeByteBufferOperations"

    invoke-virtual {v1, v2, v3, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private static zzbcf()Ljava/lang/reflect/Field;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpj;->zzaxl()Z

    move-result v0

    if-eqz v0, :cond_11

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_24

    return-object v0

    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic zzc(Ljava/lang/Object;JB)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zza(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static zzc(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzd(Ljava/lang/Object;JB)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic zzd(Ljava/lang/Object;JZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzb(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static synthetic zze(Ljava/lang/Object;JZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzc(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static zzj(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzgqj:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static zzk(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhgx:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method static zzk(Ljava/lang/Object;J)I
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzk(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method private static zzl(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhgx:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method static zzl(Ljava/lang/Object;J)J
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzl(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzm(Ljava/lang/Class;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, [B

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdpj;->zzaxl()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdtt;->zzhft:Ljava/lang/Class;

    const-string v3, "peekLong"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeLong"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeInt"

    new-array v6, v5, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v4

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekInt"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByte"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object p0, v6, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByte"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object p0, v6, v2

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "pokeByteArray"

    const/4 v6, 0x4

    new-array v8, v6, [Ljava/lang/Class;

    aput-object p0, v8, v2

    aput-object v0, v8, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    invoke-virtual {v1, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v3, "peekByteArray"

    new-array v6, v6, [Ljava/lang/Class;

    aput-object p0, v6, v2

    aput-object v0, v6, v7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v4

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v6, v5

    invoke-virtual {v1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_88
    .catchall {:try_start_a .. :try_end_88} :catchall_89

    return v7

    :catchall_89
    return v2
.end method

.method static zzm(Ljava/lang/Object;J)Z
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzm(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static zzn(Ljava/lang/Object;J)F
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzn(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method static zzn(Ljava/nio/ByteBuffer;)J
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    sget-wide v1, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpl:J

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzl(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static zzo(Ljava/lang/Object;J)D
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzo(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zzp(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhow:Lcom/google/android/gms/internal/ads/zzdtt$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static zzq(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long/2addr p1, v0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method private static zzr(Ljava/lang/Object;J)B
    .registers 5

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdtt;->zzk(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p2, p1

    ushr-int/2addr p0, p2

    int-to-byte p0, p0

    return p0
.end method

.method private static zzs(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzq(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method private static zzt(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzr(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zzu(Ljava/lang/Object;J)B
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzq(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic zzv(Ljava/lang/Object;J)B
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzr(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static synthetic zzw(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzs(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static synthetic zzx(Ljava/lang/Object;J)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdtt;->zzt(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

###### Class com.google.android.gms.internal.ads.zzdtt.zza (com.google.android.gms.internal.ads.zzdtt$zza)
.class final Lcom/google/android/gms/internal/ads/zzdtt$zza;
.super Lcom/google/android/gms/internal/ads/zzdtt$zzd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final zza(JB)V
    .registers 6

    const-wide/16 v0, -0x1

    and-long/2addr p1, v0

    long-to-int p2, p1

    invoke-static {p2, p3}, Llibcore/io/Memory;->pokeByte(IB)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JD)V
    .registers 12

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zza(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JF)V
    .registers 5

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JZ)V
    .registers 6

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpn:Z

    if-eqz v0, :cond_8

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzd(Ljava/lang/Object;JZ)V

    return-void

    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtt;->zze(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final zza([BJJJ)V
    .registers 10

    const-wide/16 v0, -0x1

    and-long/2addr p4, v0

    long-to-int p5, p4

    long-to-int p3, p2

    long-to-int p2, p6

    invoke-static {p5, p1, p3, p2}, Llibcore/io/Memory;->pokeByteArray(I[BII)V

    return-void
.end method

.method public final zze(Ljava/lang/Object;JB)V
    .registers 6

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpn:Z

    if-eqz v0, :cond_8

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzc(Ljava/lang/Object;JB)V

    return-void

    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzd(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final zzm(Ljava/lang/Object;J)Z
    .registers 5

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpn:Z

    if-eqz v0, :cond_9

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzx(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final zzn(Ljava/lang/Object;J)F
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzk(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final zzo(Ljava/lang/Object;J)D
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final zzy(Ljava/lang/Object;J)B
    .registers 5

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpn:Z

    if-eqz v0, :cond_9

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzu(Ljava/lang/Object;J)B

    move-result p1

    return p1

    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzv(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzdtt.zzb (com.google.android.gms.internal.ads.zzdtt$zzb)
.class final Lcom/google/android/gms/internal/ads/zzdtt$zzb;
.super Lcom/google/android/gms/internal/ads/zzdtt$zzd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final zza(JB)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->putByte(JB)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JD)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JF)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JZ)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final zza([BJJJ)V
    .registers 18

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/android/gms/internal/ads/zzdtt;->zzhoy:J

    add-long v4, v2, p2

    const/4 v6, 0x0

    move-object v2, p1

    move-wide v3, v4

    move-object v5, v6

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lsun/misc/Unsafe;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    return-void
.end method

.method public final zze(Ljava/lang/Object;JB)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final zzm(Ljava/lang/Object;J)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final zzn(Ljava/lang/Object;J)F
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p1

    return p1
.end method

.method public final zzo(Ljava/lang/Object;J)D
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final zzy(Ljava/lang/Object;J)B
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzdtt.zzc (com.google.android.gms.internal.ads.zzdtt$zzc)
.class final Lcom/google/android/gms/internal/ads/zzdtt$zzc;
.super Lcom/google/android/gms/internal/ads/zzdtt$zzd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzc"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final zza(JB)V
    .registers 4

    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JD)V
    .registers 12

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zza(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JF)V
    .registers 5

    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzb(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final zza(Ljava/lang/Object;JZ)V
    .registers 6

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpn:Z

    if-eqz v0, :cond_8

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzd(Ljava/lang/Object;JZ)V

    return-void

    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtt;->zze(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final zza([BJJJ)V
    .registers 8

    long-to-int p3, p2

    long-to-int p2, p6

    invoke-static {p4, p5, p1, p3, p2}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    return-void
.end method

.method public final zze(Ljava/lang/Object;JB)V
    .registers 6

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpn:Z

    if-eqz v0, :cond_8

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzc(Ljava/lang/Object;JB)V

    return-void

    :cond_8
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtt;->zzd(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final zzm(Ljava/lang/Object;J)Z
    .registers 5

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpn:Z

    if-eqz v0, :cond_9

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzw(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzx(Ljava/lang/Object;J)Z

    move-result p1

    return p1
.end method

.method public final zzn(Ljava/lang/Object;J)F
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzk(Ljava/lang/Object;J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    return p1
.end method

.method public final zzo(Ljava/lang/Object;J)D
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzl(Ljava/lang/Object;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p1

    return-wide p1
.end method

.method public final zzy(Ljava/lang/Object;J)B
    .registers 5

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzdtt;->zzhpn:Z

    if-eqz v0, :cond_9

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzu(Ljava/lang/Object;J)B

    move-result p1

    return p1

    :cond_9
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtt;->zzv(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzdtt.zzd (com.google.android.gms.internal.ads.zzdtt$zzd)
.class abstract Lcom/google/android/gms/internal/ads/zzdtt$zzd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdtt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzd"
.end annotation


# instance fields
.field zzhpq:Lsun/misc/Unsafe;


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public abstract zza(JB)V
.end method

.method public abstract zza(Ljava/lang/Object;JD)V
.end method

.method public abstract zza(Ljava/lang/Object;JF)V
.end method

.method public final zza(Ljava/lang/Object;JJ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public abstract zza(Ljava/lang/Object;JZ)V
.end method

.method public abstract zza([BJJJ)V
.end method

.method public final zzb(Ljava/lang/Object;JI)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public abstract zze(Ljava/lang/Object;JB)V
.end method

.method public final zzk(Ljava/lang/Object;J)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p1

    return p1
.end method

.method public final zzl(Ljava/lang/Object;J)J
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtt$zzd;->zzhpq:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1, p2, p3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract zzm(Ljava/lang/Object;J)Z
.end method

.method public abstract zzn(Ljava/lang/Object;J)F
.end method

.method public abstract zzo(Ljava/lang/Object;J)D
.end method

.method public abstract zzy(Ljava/lang/Object;J)B
.end method
