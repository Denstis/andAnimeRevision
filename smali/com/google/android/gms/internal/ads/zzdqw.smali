###### Class com.google.android.gms.internal.ads.zzdqw (com.google.android.gms.internal.ads.zzdqw)
.class public abstract Lcom/google/android/gms/internal/ads/zzdqw;
.super Lcom/google/android/gms/internal/ads/zzdpf;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdqw$zzc;,
        Lcom/google/android/gms/internal/ads/zzdqw$zze;,
        Lcom/google/android/gms/internal/ads/zzdqw$zzb;,
        Lcom/google/android/gms/internal/ads/zzdqw$zza;,
        Lcom/google/android/gms/internal/ads/zzdqw$zzd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzdqw<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzdqw$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzdpf<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static zzhkt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

.field private zzhks:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkt:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpf;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdtq;->zzbbx()Lcom/google/android/gms/internal/ads/zzdtq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkr:Lcom/google/android/gms/internal/ads/zzdtq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhks:I

    return-void
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzdqw;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzdpm;",
            ")TT;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqj;->zzaza()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzb(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzb(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzdpm;",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdpm;->zzaxp()Lcom/google/android/gms/internal/ads/zzdpy;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdpy;Lcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_0 .. :try_end_8} :catch_13

    const/4 p2, 0x0

    :try_start_9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdpy;->zzfp(I)V
    :try_end_c
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_9 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p1

    :try_start_e
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzdrg;->zzo(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p0

    throw p0
    :try_end_13
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_e .. :try_end_13} :catch_13

    :catch_13
    move-exception p0

    throw p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdpy;Lcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "TT;*>;>(TT;",
            "Lcom/google/android/gms/internal/ads/zzdpy;",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            ")TT;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhky:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdqw;

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqd;->zza(Lcom/google/android/gms/internal/ads/zzdpy;)Lcom/google/android/gms/internal/ads/zzdqd;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsw;Lcom/google/android/gms/internal/ads/zzdqj;)V

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzak(Ljava/lang/Object;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1b} :catch_2d
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzdrg;

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdrg;

    throw p0

    :cond_2c
    throw p0

    :catch_2d
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzdrg;

    if-eqz p2, :cond_3d

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdrg;

    throw p0

    :cond_3d
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdrg;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzdrg;->zzo(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzdqw;[B)Lcom/google/android/gms/internal/ads/zzdqw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    array-length v0, p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqj;->zzaza()Lcom/google/android/gms/internal/ads/zzdqj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdqw;[BIILcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzb(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdqw;[BIILcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "TT;*>;>(TT;[BII",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            ")TT;"
        }
    .end annotation

    sget p2, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhky:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdqw;

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object p2

    const/4 v3, 0x0

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdpl;

    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/zzdpl;-><init>(Lcom/google/android/gms/internal/ads/zzdqj;)V

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzdpl;)V

    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzak(Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzdpf;->zzhfq:I

    if-nez p1, :cond_26

    return-object p0

    :cond_26
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2c} :catch_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_2c} :catch_2c

    :catch_2c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzdrg;->zzo(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p0

    throw p0

    :catch_35
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzdrg;

    if-eqz p2, :cond_45

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdrg;

    throw p0

    :cond_45
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdrg;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzdrg;->zzo(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p0

    throw p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzdqw;[BLcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "TT;*>;>(TT;[B",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            ")TT;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdqw;[BIILcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdqw;->zzb(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzdrb;)Lcom/google/android/gms/internal/ads/zzdrb;
    .registers 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    shl-int/lit8 v0, v0, 0x1

    :goto_b
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzdrb;->zzgo(I)Lcom/google/android/gms/internal/ads/zzdrb;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzdrd;)Lcom/google/android/gms/internal/ads/zzdrd;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzdrd<",
            "TE;>;)",
            "Lcom/google/android/gms/internal/ads/zzdrd<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_b

    :cond_9
    shl-int/lit8 v0, v0, 0x1

    :goto_b
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzdrd;->zzfl(I)Lcom/google/android/gms/internal/ads/zzdrd;

    move-result-object p0

    return-object p0
.end method

.method protected static zza(Lcom/google/android/gms/internal/ads/zzdsg;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdst;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdst;-><init>(Lcom/google/android/gms/internal/ads/zzdsg;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static varargs zza(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    check-cast p0, Ljava/lang/Error;

    throw p0

    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static zza(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdqw;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkt:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected static final zza(Lcom/google/android/gms/internal/ads/zzdqw;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhkv:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    return v2

    :cond_11
    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzaw(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2d

    sget p1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhkw:I

    if-eqz v0, :cond_29

    move-object v2, p0

    goto :goto_2a

    :cond_29
    move-object v2, v1

    :goto_2a
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    return v0
.end method

.method protected static zzazv()Lcom/google/android/gms/internal/ads/zzdrb;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqy;->zzbab()Lcom/google/android/gms/internal/ads/zzdqy;

    move-result-object v0

    return-object v0
.end method

.method protected static zzazw()Lcom/google/android/gms/internal/ads/zzdrd;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzdrd<",
            "TE;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsu;->zzbbi()Lcom/google/android/gms/internal/ads/zzdsu;

    move-result-object v0

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1c

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdto;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdto;-><init>(Lcom/google/android/gms/internal/ads/zzdsg;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrg;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzdrg;->zzo(Lcom/google/android/gms/internal/ads/zzdsg;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p0

    throw p0

    :cond_1c
    :goto_1c
    return-object p0
.end method

.method static zzf(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdqw;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkt:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    if-nez v0, :cond_28

    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1f

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkt:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    goto :goto_28

    :catch_1f
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_28
    :goto_28
    if-nez v0, :cond_47

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdtt;->zzj(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhla:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    if-eqz v0, :cond_41

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdqw;->zzhkt:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_47

    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_47
    :goto_47
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhla:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 p1, 0x0

    return p1

    :cond_19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdsv;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpf;->zzhfq:I

    if-eqz v0, :cond_5

    return v0

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsv;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdpf;->zzhfq:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdpf;->zzhfq:I

    return v0
.end method

.method public final isInitialized()Z
    .registers 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdqw;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzdsh;->zza(Lcom/google/android/gms/internal/ads/zzdsg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method final zzaxh()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhks:I

    return v0
.end method

.method public final synthetic zzazs()Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhla:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    return-object v0
.end method

.method protected final zzazt()Lcom/google/android/gms/internal/ads/zzdqw$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lcom/google/android/gms/internal/ads/zzdqw<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lcom/google/android/gms/internal/ads/zzdqw$zza<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhkz:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw$zza;

    return-object v0
.end method

.method public final zzazu()I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhks:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzau(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhks:I

    :cond_13
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhks:I

    return v0
.end method

.method public final synthetic zzazx()Lcom/google/android/gms/internal/ads/zzdsf;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhkz:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw$zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    return-object v0
.end method

.method public final synthetic zzazy()Lcom/google/android/gms/internal/ads/zzdsf;
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhkz:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw$zza;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdqf;)V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqg;->zza(Lcom/google/android/gms/internal/ads/zzdqf;)Lcom/google/android/gms/internal/ads/zzdqg;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzduk;)V

    return-void
.end method

.method final zzfi(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdqw;->zzhks:I

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdqw.zza (com.google.android.gms.internal.ads.zzdqw$zza)
.class public Lcom/google/android/gms/internal/ads/zzdqw$zza;
.super Lcom/google/android/gms/internal/ads/zzdpe;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzdqw<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzdqw$zza<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzdpe<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final zzhko:Lcom/google/android/gms/internal/ads/zzdqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field private zzhkq:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzdqw;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdpe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhko:Lcom/google/android/gms/internal/ads/zzdqw;

    sget v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhky:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkq:Z

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdqw;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdsv;->zzf(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzdpy;Lcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw$zza;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdpy;",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazn()V

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdqd;->zza(Lcom/google/android/gms/internal/ads/zzdpy;)Lcom/google/android/gms/internal/ads/zzdqd;

    move-result-object p1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdsw;Lcom/google/android/gms/internal/ads/zzdqj;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_27

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_27
    throw p1
.end method

.method private final zzb([BIILcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw$zza;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/google/android/gms/internal/ads/zzdqj;",
            ")TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazn()V

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdpl;

    invoke-direct {v6, p4}, Lcom/google/android/gms/internal/ads/zzdpl;-><init>(Lcom/google/android/gms/internal/ads/zzdqj;)V

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzdsv;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzdpl;)V
    :try_end_1b
    .catch Lcom/google/android/gms/internal/ads/zzdrg; {:try_start_3 .. :try_end_1b} :catch_2a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_1b} :catch_25
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1b} :catch_1c

    return-object p0

    :catch_1c
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdrg;->zzbac()Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    throw p1

    :catch_2a
    move-exception p1

    throw p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhko:Lcom/google/android/gms/internal/ads/zzdqw;

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhkz:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazq()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(Lcom/google/android/gms/internal/ads/zzdqw;Z)Z

    move-result v0

    return v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/internal/ads/zzdpf;)Lcom/google/android/gms/internal/ads/zzdpe;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdpy;Lcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdpe;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzb(Lcom/google/android/gms/internal/ads/zzdpy;Lcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza([BIILcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdpe;
    .registers 5

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzb([BIILcom/google/android/gms/internal/ads/zzdqj;)Lcom/google/android/gms/internal/ads/zzdqw$zza;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdqw;)Lcom/google/android/gms/internal/ads/zzdqw$zza;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdqw;)V

    return-object p0
.end method

.method public final synthetic zzaxf()Lcom/google/android/gms/internal/ads/zzdpe;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw$zza;

    return-object v0
.end method

.method protected final zzazn()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkq:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhky:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzdqw;->zza(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zza(Lcom/google/android/gms/internal/ads/zzdqw;Lcom/google/android/gms/internal/ads/zzdqw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkq:Z

    :cond_19
    return-void
.end method

.method public zzazo()Lcom/google/android/gms/internal/ads/zzdqw;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkq:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsr;->zzbbf()Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdsr;->zzax(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdsv;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzdsv;->zzak(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkq:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhkp:Lcom/google/android/gms/internal/ads/zzdqw;

    return-object v0
.end method

.method public final zzazp()Lcom/google/android/gms/internal/ads/zzdqw;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazq()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdto;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzdto;-><init>(Lcom/google/android/gms/internal/ads/zzdsg;)V

    throw v1
.end method

.method public synthetic zzazq()Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazo()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object v0

    return-object v0
.end method

.method public synthetic zzazr()Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazp()Lcom/google/android/gms/internal/ads/zzdqw;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzazs()Lcom/google/android/gms/internal/ads/zzdsg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzhko:Lcom/google/android/gms/internal/ads/zzdqw;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzdqw.zzb (com.google.android.gms.internal.ads.zzdqw$zzb)
.class public abstract Lcom/google/android/gms/internal/ads/zzdqw$zzb;
.super Lcom/google/android/gms/internal/ads/zzdqw;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdsi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzdqw$zzb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdqw<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/zzdsi;"
    }
.end annotation


# instance fields
.field protected zzhku:Lcom/google/android/gms/internal/ads/zzdqm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdqm<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqw;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdqm;->zzazc()Lcom/google/android/gms/internal/ads/zzdqm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zzb;->zzhku:Lcom/google/android/gms/internal/ads/zzdqm;

    return-void
.end method


# virtual methods
.method final zzazz()Lcom/google/android/gms/internal/ads/zzdqm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdqm<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zzb;->zzhku:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zzb;->zzhku:Lcom/google/android/gms/internal/ads/zzdqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zzb;->zzhku:Lcom/google/android/gms/internal/ads/zzdqm;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqw$zzb;->zzhku:Lcom/google/android/gms/internal/ads/zzdqm;

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzdqw.zzc (com.google.android.gms.internal.ads.zzdqw$zzc)
.class public final Lcom/google/android/gms/internal/ads/zzdqw$zzc;
.super Lcom/google/android/gms/internal/ads/zzdph;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/ads/zzdqw<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/ads/zzdph<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzhko:Lcom/google/android/gms/internal/ads/zzdqw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdqw;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdph;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqw$zzc;->zzhko:Lcom/google/android/gms/internal/ads/zzdqw;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdqw.zzd (com.google.android.gms.internal.ads.zzdqw$zzd)
.class public final Lcom/google/android/gms/internal/ads/zzdqw$zzd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzhkv:I = 0x1

.field public static final enum zzhkw:I = 0x2

.field public static final enum zzhkx:I = 0x3

.field public static final enum zzhky:I = 0x4

.field public static final enum zzhkz:I = 0x5

.field public static final enum zzhla:I = 0x6

.field public static final enum zzhlb:I = 0x7

.field private static final synthetic zzhlc:[I

.field public static final enum zzhld:I = 0x1

.field public static final enum zzhle:I = 0x2

.field private static final synthetic zzhlf:[I

.field public static final enum zzhlg:I = 0x1

.field public static final enum zzhlh:I = 0x2

.field private static final synthetic zzhli:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x7

    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhkv:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhkw:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhkx:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhky:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhkz:I

    const/4 v5, 0x4

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhla:I

    const/4 v5, 0x5

    aput v1, v0, v5

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlb:I

    const/4 v5, 0x6

    aput v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlc:[I

    new-array v0, v4, [I

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhld:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhle:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlf:[I

    new-array v0, v4, [I

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlg:I

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlh:I

    aput v1, v0, v3

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhli:[I

    return-void
.end method

.method public static zzbaa()[I
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdqw$zzd;->zzhlc:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

###### Class com.google.android.gms.internal.ads.zzdqw.zze (com.google.android.gms.internal.ads.zzdqw$zze)
.class public final Lcom/google/android/gms/internal/ads/zzdqw$zze;
.super Lcom/google/android/gms/internal/ads/zzdqh;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdqw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/android/gms/internal/ads/zzdsg;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdqh<",
        "TContainingType;TType;>;"
    }
.end annotation
