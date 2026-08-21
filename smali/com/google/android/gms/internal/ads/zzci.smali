###### Class com.google.android.gms.internal.ads.zzci (com.google.android.gms.internal.ads.zzci)
.class final Lcom/google/android/gms/internal/ads/zzci;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zznt:Z = false

.field private static zznu:Ljava/security/MessageDigest;

.field private static final zznv:Ljava/lang/Object;

.field private static final zznw:Ljava/lang/Object;

.field static zznx:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzci;->zznv:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzci;->zznw:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzci;->zznx:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzbo$zza$zzd;)Lcom/google/android/gms/internal/ads/zzbo$zza;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbo$zza;->zzal()Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzd;->zzab()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;->zzau(J)Lcom/google/android/gms/internal/ads/zzbo$zza$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbo$zza;

    return-object p0
.end method

.method static zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzci;->zzb(Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzcg;->zza([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/4 p0, 0x7

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/ads/zzci;->zznu:Ljava/security/MessageDigest;

    return-object p0
.end method

.method private static zza([BI)Ljava/util/Vector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Vector<",
            "[B>;"
        }
    .end annotation

    const/4 p1, 0x0

    if-eqz p0, :cond_2c

    array-length v0, p0

    if-gtz v0, :cond_7

    goto :goto_2c

    :cond_7
    array-length v0, p0

    const/16 v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v0, :cond_2b

    mul-int/lit16 v4, v3, 0xff

    :try_start_18
    array-length v5, p0

    sub-int/2addr v5, v4

    if-le v5, v1, :cond_1f

    add-int/lit16 v5, v4, 0xff

    goto :goto_20

    :cond_1f
    array-length v5, p0

    :goto_20
    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_27} :catch_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catch_2a
    return-object p1

    :cond_2b
    return-object v2

    :cond_2c
    :goto_2c
    return-object p1
.end method

.method private static zza([BLjava/lang/String;Z)[B
    .registers 8

    if-eqz p2, :cond_5

    const/16 v0, 0xef

    goto :goto_7

    :cond_5
    const/16 v0, 0xff

    :goto_7
    array-length v1, p0

    if-le v1, v0, :cond_14

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbo$zza$zzd;->zziu:Lcom/google/android/gms/internal/ads/zzbo$zza$zzd;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzci;->zza(Lcom/google/android/gms/internal/ads/zzbo$zza$zzd;)Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object p0

    :cond_14
    array-length v1, p0

    if-ge v1, v0, :cond_39

    array-length v1, p0

    sub-int v1, v0, v1

    new-array v1, v1, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v2, p0

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_49

    :cond_39
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p0

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const/16 v0, 0x100

    if-eqz p2, :cond_65

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzci;->zzb([B)[B

    move-result-object p2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    :cond_65
    new-array p2, v0, [B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcj;-><init>()V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzvl:[Lcom/google/android/gms/internal/ads/zzcl;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_71
    if-ge v3, v1, :cond_7b

    aget-object v4, v0, v3

    invoke-interface {v4, p0, p2}, Lcom/google/android/gms/internal/ads/zzcl;->zza([B[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    :cond_7b
    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_9d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_8f

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_8f
    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdpc;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzdpc;-><init>([B)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdpc;->zzx([B)V

    :cond_9d
    return-object p2
.end method

.method private static zzb(Ljava/lang/String;Ljava/lang/String;Z)[B
    .registers 7

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbo$zzc;->zzav()Lcom/google/android/gms/internal/ads/zzbo$zzc$zza;

    move-result-object p2

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_8
    .catch Ljava/security/GeneralSecurityException; {:try_start_4 .. :try_end_8} :catch_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_8} :catch_41

    const-string v1, "ISO-8859-1"

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_13

    :try_start_e
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_17

    :cond_13
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzcg;->zza(Ljava/lang/String;Z)[B

    move-result-object p0

    :goto_17
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzbo$zzc$zza;->zzg(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzbo$zzc$zza;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, v3, :cond_29

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_2d

    :cond_29
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzcg;->zza(Ljava/lang/String;Z)[B

    move-result-object p0

    :goto_2d
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzbo$zzc$zza;->zzh(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzbo$zzc$zza;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbo$zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object p0
    :try_end_40
    .catch Ljava/security/GeneralSecurityException; {:try_start_e .. :try_end_40} :catch_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_40} :catch_41

    return-object p0

    :catch_41
    const/4 p0, 0x0

    return-object p0
.end method

.method public static zzb([B)[B
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzci;->zznv:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzci;->zzby()Ljava/security/MessageDigest;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzci;->zznu:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_17
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Cannot compute hash"

    invoke-direct {p0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method static zzbx()V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzci;->zznw:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzci;->zznt:Z

    if-nez v1, :cond_18

    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/internal/ads/zzci;->zznt:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzck;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzck;-><init>(Lcom/google/android/gms/internal/ads/zzch;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private static zzby()Ljava/security/MessageDigest;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzci;->zzbx()V

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzci;->zznx:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x0

    if-nez v0, :cond_13

    return-object v1

    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzci;->zznu:Ljava/security/MessageDigest;

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    return-object v0
.end method

.method static zzj(Lcom/google/android/gms/internal/ads/zzbo$zza;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzza;->zzcni:Lcom/google/android/gms/internal/ads/zzyp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzon()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzyw;->zzd(Lcom/google/android/gms/internal/ads/zzyp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4e

    sget-object v0, Lcom/google/android/gms/internal/ads/zzed;->zzyo:Lcom/google/android/gms/internal/ads/zzdel;

    if-eqz v0, :cond_48

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_25

    :cond_23
    new-array p1, v1, [B

    :goto_25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzed;->zzyo:Lcom/google/android/gms/internal/ads/zzdel;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdel;->zzc([B[B)[B

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbo$zzg;->zzbj()Lcom/google/android/gms/internal/ads/zzbo$zzg$zza;

    move-result-object p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbo$zzg$zza;->zzm(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzbo$zzg$zza;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbv;->zzkq:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbo$zzg$zza;->zza(Lcom/google/android/gms/internal/ads/zzbv;)Lcom/google/android/gms/internal/ads/zzbo$zzg$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p0

    :goto_41
    check-cast p0, Lcom/google/android/gms/internal/ads/zzbo$zzg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object p0

    goto :goto_9b

    :cond_48
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0}, Ljava/security/GeneralSecurityException;-><init>()V

    throw p0

    :cond_4e
    const/16 v0, 0xff

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzci;->zza([BI)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_5d

    goto :goto_8d

    :cond_5d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbo$zzg;->zzbj()Lcom/google/android/gms/internal/ads/zzbo$zzg$zza;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4, p1, v1}, Lcom/google/android/gms/internal/ads/zzci;->zza([BLjava/lang/String;Z)[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbo$zzg$zza;->zzm(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzbo$zzg$zza;

    goto :goto_65

    :cond_7d
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzci;->zzb([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdpm;->zzy([B)Lcom/google/android/gms/internal/ads/zzdpm;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/zzbo$zzg$zza;->zzn(Lcom/google/android/gms/internal/ads/zzdpm;)Lcom/google/android/gms/internal/ads/zzbo$zzg$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p0

    goto :goto_41

    :cond_8d
    :goto_8d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbo$zza$zzd;->zziu:Lcom/google/android/gms/internal/ads/zzbo$zza$zzd;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzci;->zza(Lcom/google/android/gms/internal/ads/zzbo$zza$zzd;)Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object p0

    invoke-static {p0, p1, v2}, Lcom/google/android/gms/internal/ads/zzci;->zza([BLjava/lang/String;Z)[B

    move-result-object p0

    :goto_9b
    invoke-static {p0, v2}, Lcom/google/android/gms/internal/ads/zzcg;->zza([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
