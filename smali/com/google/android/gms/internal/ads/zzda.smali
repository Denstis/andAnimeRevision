###### Class com.google.android.gms.internal.ads.zzda (com.google.android.gms.internal.ads.zzda)
.class public Lcom/google/android/gms/internal/ads/zzda;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzvp:Landroid/os/ConditionVariable;

.field protected static volatile zzvq:Lcom/google/android/gms/internal/ads/zzsi;

.field private static volatile zzvs:Ljava/util/Random;


# instance fields
.field private zzvo:Lcom/google/android/gms/internal/ads/zzdx;

.field protected volatile zzvr:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzda;->zzvp:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzda;->zzvq:Lcom/google/android/gms/internal/ads/zzsi;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzda;->zzvs:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdx;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzda;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdx;->zzce()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcz;-><init>(Lcom/google/android/gms/internal/ads/zzda;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzda;)Lcom/google/android/gms/internal/ads/zzdx;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzda;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    return-object p0
.end method

.method public static zzbz()I
    .registers 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_f

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v0

    return v0

    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzda;->zzca()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_17} :catch_18

    return v0

    :catch_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzda;->zzca()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method private static zzca()Ljava/util/Random;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzda;->zzvs:Ljava/util/Random;

    if-nez v0, :cond_17

    const-class v0, Lcom/google/android/gms/internal/ads/zzda;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzda;->zzvs:Ljava/util/Random;

    if-nez v1, :cond_12

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzda;->zzvs:Ljava/util/Random;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/google/android/gms/internal/ads/zzda;->zzvs:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic zzcb()Landroid/os/ConditionVariable;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzda;->zzvp:Landroid/os/ConditionVariable;

    return-object v0
.end method


# virtual methods
.method public final zza(IIJ)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzda;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final zza(IIJLjava/lang/String;)V
    .registers 13

    const/4 v2, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzda;->zza(IIJLjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final zza(IIJLjava/lang/String;Ljava/lang/Exception;)V
    .registers 9

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzda;->zzvp:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzda;->zzvr:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzda;->zzvq:Lcom/google/android/gms/internal/ads/zzsi;

    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbi$zza;->zzr()Lcom/google/android/gms/internal/ads/zzbi$zza$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzda;->zzvo:Lcom/google/android/gms/internal/ads/zzdx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdx;->zzlk:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbi$zza$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbi$zza$zza;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzbi$zza$zza;->zzc(J)Lcom/google/android/gms/internal/ads/zzbi$zza$zza;

    move-result-object p3

    if-eqz p5, :cond_2a

    invoke-virtual {p3, p5}, Lcom/google/android/gms/internal/ads/zzbi$zza$zza;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbi$zza$zza;

    :cond_2a
    if-eqz p6, :cond_4c

    new-instance p4, Ljava/io/StringWriter;

    invoke-direct {p4}, Ljava/io/StringWriter;-><init>()V

    new-instance p5, Ljava/io/PrintWriter;

    invoke-direct {p5, p4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p6, p5}, Lcom/google/android/gms/internal/ads/zzdoy;->zza(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    invoke-virtual {p4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzbi$zza$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbi$zza$zza;

    move-result-object p4

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/ads/zzbi$zza$zza;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbi$zza$zza;

    :cond_4c
    sget-object p4, Lcom/google/android/gms/internal/ads/zzda;->zzvq:Lcom/google/android/gms/internal/ads/zzsi;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdqw$zza;->zzazr()Lcom/google/android/gms/internal/ads/zzdsg;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzdqw;

    check-cast p3, Lcom/google/android/gms/internal/ads/zzbi$zza;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdpf;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/google/android/gms/internal/ads/zzsi;->zzf([B)Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzsm;->zzbq(I)Lcom/google/android/gms/internal/ads/zzsm;

    const/4 p1, -0x1

    if-eq p2, p1, :cond_67

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzsm;->zzbp(I)Lcom/google/android/gms/internal/ads/zzsm;

    :cond_67
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzsm;->zzdh()V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6a

    :catch_6a
    :cond_6a
    return-void
.end method
