###### Class com.google.android.gms.internal.ads.zzdcf (com.google.android.gms.internal.ads.zzdcf)
.class abstract Lcom/google/android/gms/internal/ads/zzdcf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzdcf$zzb;,
        Lcom/google/android/gms/internal/ads/zzdcf$zzc;,
        Lcom/google/android/gms/internal/ads/zzdcf$zza;
    }
.end annotation


# static fields
.field private static final zzgqc:Ljava/util/logging/Logger;

.field private static final zzgqw:Lcom/google/android/gms/internal/ads/zzdcf$zza;


# instance fields
.field private volatile remaining:I

.field private volatile seenExceptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-class v0, Lcom/google/android/gms/internal/ads/zzdcf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdcf;->zzgqc:Ljava/util/logging/Logger;

    const/4 v1, 0x0

    :try_start_d
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdcf$zzc;

    const-class v3, Ljava/util/Set;
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_22

    const-string v4, "seenExceptions"

    :try_start_13
    invoke-static {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_22

    const-string v4, "remaining"

    :try_start_19
    invoke-static {v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzdcf$zzc;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_22

    move-object v8, v1

    goto :goto_29

    :catchall_22
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdcf$zzb;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdcf$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzdch;)V

    move-object v8, v0

    :goto_29
    sput-object v2, Lcom/google/android/gms/internal/ads/zzdcf;->zzgqw:Lcom/google/android/gms/internal/ads/zzdcf$zza;

    if-eqz v8, :cond_3a

    sget-object v3, Lcom/google/android/gms/internal/ads/zzdcf;->zzgqc:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "com.google.common.util.concurrent.AggregateFutureState"

    const-string v6, "<clinit>"

    const-string v7, "SafeAtomicHelper is broken!"

    invoke-virtual/range {v3 .. v8}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcf;->seenExceptions:Ljava/util/Set;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdcf;->remaining:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdcf;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdcf;->seenExceptions:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdcf;Ljava/util/Set;)Ljava/util/Set;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcf;->seenExceptions:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdcf;)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdcf;->remaining:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzdcf;->remaining:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdcf;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdcf;->remaining:I

    return p0
.end method


# virtual methods
.method final zzape()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcf;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdcf;->zzg(Ljava/util/Set;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdcf;->zzgqw:Lcom/google/android/gms/internal/ads/zzdcf$zza;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzdcf$zza;->zza(Lcom/google/android/gms/internal/ads/zzdcf;Ljava/util/Set;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcf;->seenExceptions:Ljava/util/Set;

    :cond_18
    return-object v0
.end method

.method final zzapf()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdcf;->zzgqw:Lcom/google/android/gms/internal/ads/zzdcf$zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdcf$zza;->zzd(Lcom/google/android/gms/internal/ads/zzdcf;)I

    move-result v0

    return v0
.end method

.method abstract zzg(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.google.android.gms.internal.ads.zzdcf.zza (com.google.android.gms.internal.ads.zzdcf$zza)
.class abstract Lcom/google/android/gms/internal/ads/zzdcf$zza;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zza"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdch;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdcf$zza;-><init>()V

    return-void
.end method


# virtual methods
.method abstract zza(Lcom/google/android/gms/internal/ads/zzdcf;Ljava/util/Set;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdcf;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract zzd(Lcom/google/android/gms/internal/ads/zzdcf;)I
.end method

###### Class com.google.android.gms.internal.ads.zzdcf.zzb (com.google.android.gms.internal.ads.zzdcf$zzb)
.class final Lcom/google/android/gms/internal/ads/zzdcf$zzb;
.super Lcom/google/android/gms/internal/ads/zzdcf$zza;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzb"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdcf$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdch;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdch;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdcf$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzdcf;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdcf;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Lcom/google/android/gms/internal/ads/zzdcf;)Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzdcf;->zza(Lcom/google/android/gms/internal/ads/zzdcf;Ljava/util/Set;)Ljava/util/Set;

    :cond_a
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p2
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzdcf;)I
    .registers 3

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcf;->zzb(Lcom/google/android/gms/internal/ads/zzdcf;)I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdcf;->zzc(Lcom/google/android/gms/internal/ads/zzdcf;)I

    move-result v0

    monitor-exit p1

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzdcf.zzc (com.google.android.gms.internal.ads.zzdcf$zzc)
.class final Lcom/google/android/gms/internal/ads/zzdcf$zzc;
.super Lcom/google/android/gms/internal/ads/zzdcf$zza;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzc"
.end annotation


# instance fields
.field private final zzgra:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lcom/google/android/gms/internal/ads/zzdcf;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzgrb:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lcom/google/android/gms/internal/ads/zzdcf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdcf$zza;-><init>(Lcom/google/android/gms/internal/ads/zzdch;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcf$zzc;->zzgra:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcf$zzc;->zzgrb:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzdcf;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdcf;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcf$zzc;->zzgra:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzdcf;)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcf$zzc;->zzgrb:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
