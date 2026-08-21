###### Class com.google.android.gms.internal.ads.zznl (com.google.android.gms.internal.ads.zznl)
.class public final Lcom/google/android/gms/internal/ads/zznl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzbfm:Ljava/util/concurrent/ExecutorService;

.field private zzbfn:Lcom/google/android/gms/internal/ads/zznn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zznn<",
            "+",
            "Lcom/google/android/gms/internal/ads/zznq;",
            ">;"
        }
    .end annotation
.end field

.field private zzbfo:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzof;->zzbf(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfm:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zznl;)Lcom/google/android/gms/internal/ads/zznn;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfn:Lcom/google/android/gms/internal/ads/zznn;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zznl;Lcom/google/android/gms/internal/ads/zznn;)Lcom/google/android/gms/internal/ads/zznn;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfn:Lcom/google/android/gms/internal/ads/zznn;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zznl;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfo:Ljava/io/IOException;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zznl;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfm:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method


# virtual methods
.method public final isLoading()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfn:Lcom/google/android/gms/internal/ads/zznn;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznq;Lcom/google/android/gms/internal/ads/zzno;I)J
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/ads/zznq;",
            ">(TT;",
            "Lcom/google/android/gms/internal/ads/zzno<",
            "TT;>;I)J"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznr;->checkState(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zznn;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zznn;-><init>(Lcom/google/android/gms/internal/ads/zznl;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zznq;Lcom/google/android/gms/internal/ads/zzno;IJ)V

    const-wide/16 p1, 0x0

    invoke-virtual {v10, p1, p2}, Lcom/google/android/gms/internal/ads/zznn;->zzee(J)V

    return-wide v8
.end method

.method public final zza(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfn:Lcom/google/android/gms/internal/ads/zznn;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zznn;->zzk(Z)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfm:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfm:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final zzbb(I)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfo:Ljava/io/IOException;

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfn:Lcom/google/android/gms/internal/ads/zznn;

    if-eqz p1, :cond_d

    iget v0, p1, Lcom/google/android/gms/internal/ads/zznn;->zzbft:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zznn;->zzbb(I)V

    :cond_d
    return-void

    :cond_e
    throw p1
.end method

.method public final zzie()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznl;->zzbfn:Lcom/google/android/gms/internal/ads/zznn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zznn;->zzk(Z)V

    return-void
.end method
