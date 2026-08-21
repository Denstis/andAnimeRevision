###### Class com.google.android.gms.internal.ads.zzbkf (com.google.android.gms.internal.ads.zzbkf)
.class public final Lcom/google/android/gms/internal/ads/zzbkf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbog;
.implements Lcom/google/android/gms/internal/ads/zzpj;


# instance fields
.field private final zzfbi:Lcom/google/android/gms/internal/ads/zzcvr;

.field private final zzfey:Lcom/google/android/gms/internal/ads/zzbni;

.field private final zzfez:Lcom/google/android/gms/internal/ads/zzbok;

.field private final zzffa:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzffb:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcvr;Lcom/google/android/gms/internal/ads/zzbni;Lcom/google/android/gms/internal/ads/zzbok;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzffa:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzffb:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfbi:Lcom/google/android/gms/internal/ads/zzcvr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfey:Lcom/google/android/gms/internal/ads/zzbni;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfez:Lcom/google/android/gms/internal/ads/zzbok;

    return-void
.end method

.method private final zzafk()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzffa:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfey:Lcom/google/android/gms/internal/ads/zzbni;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbni;->onAdImpression()V

    :cond_f
    return-void
.end method


# virtual methods
.method public final declared-synchronized onAdLoaded()V
    .registers 3

    nop

    :try_start_1
    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    nop

    nop

    :catchall_d
    nop

    nop

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzpk;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfbi:Lcom/google/android/gms/internal/ads/zzcvr;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcvr;->zzgiz:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzpk;->zzbnp:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbkf;->zzafk()V

    :cond_e
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzpk;->zzbnp:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzffb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkf;->zzfez:Lcom/google/android/gms/internal/ads/zzbok;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbok;->zzafz()V

    :cond_20
    return-void
.end method
