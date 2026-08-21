###### Class com.google.android.gms.internal.ads.zzrx (com.google.android.gms.internal.ads.zzrx)
.class final Lcom/google/android/gms/internal/ads/zzrx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field private final synthetic zzbrq:Lcom/google/android/gms/internal/ads/zzrp;

.field private final synthetic zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

.field final synthetic zzbrs:Lcom/google/android/gms/internal/ads/zzrv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrv;Lcom/google/android/gms/internal/ads/zzrp;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrs:Lcom/google/android/gms/internal/ads/zzrv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrq:Lcom/google/android/gms/internal/ads/zzrp;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .registers 7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrs:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrv;->zzb(Lcom/google/android/gms/internal/ads/zzrv;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrs:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrv;->zzc(Lcom/google/android/gms/internal/ads/zzrv;)Z

    move-result v0

    if-eqz v0, :cond_11

    monitor-exit p1

    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrs:Lcom/google/android/gms/internal/ads/zzrv;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Lcom/google/android/gms/internal/ads/zzrv;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrs:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrv;->zzd(Lcom/google/android/gms/internal/ads/zzrv;)Lcom/google/android/gms/internal/ads/zzrq;

    move-result-object v0

    if-nez v0, :cond_21

    monitor-exit p1

    return-void

    :cond_21
    sget-object v1, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwi:Lcom/google/android/gms/internal/ads/zzddl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsa;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrq:Lcom/google/android/gms/internal/ads/zzrp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzsa;-><init>(Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzrq;Lcom/google/android/gms/internal/ads/zzrp;Lcom/google/android/gms/internal/ads/zzaxv;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzddl;->zzf(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/ads/zzddi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzrz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrr:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzrz;-><init>(Lcom/google/android/gms/internal/ads/zzaxv;Ljava/util/concurrent/Future;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzaxn;->zzdwn:Lcom/google/android/gms/internal/ads/zzddl;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    monitor-exit p1

    return-void

    :catchall_40
    move-exception v0

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .registers 2

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzrz (com.google.android.gms.internal.ads.zzrz)
.class final synthetic Lcom/google/android/gms/internal/ads/zzrz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbrt:Lcom/google/android/gms/internal/ads/zzaxv;

.field private final zzbru:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaxv;Ljava/util/concurrent/Future;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbrt:Lcom/google/android/gms/internal/ads/zzaxv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbru:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbrt:Lcom/google/android/gms/internal/ads/zzaxv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrz;->zzbru:Ljava/util/concurrent/Future;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaxv;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_e
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzsa (com.google.android.gms.internal.ads.zzsa)
.class final synthetic Lcom/google/android/gms/internal/ads/zzsa;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbrv:Lcom/google/android/gms/internal/ads/zzrx;

.field private final zzbrw:Lcom/google/android/gms/internal/ads/zzrq;

.field private final zzbrx:Lcom/google/android/gms/internal/ads/zzrp;

.field private final zzbry:Lcom/google/android/gms/internal/ads/zzaxv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrx;Lcom/google/android/gms/internal/ads/zzrq;Lcom/google/android/gms/internal/ads/zzrp;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbrv:Lcom/google/android/gms/internal/ads/zzrx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbrw:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbrx:Lcom/google/android/gms/internal/ads/zzrp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbry:Lcom/google/android/gms/internal/ads/zzaxv;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbrv:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbrw:Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbrx:Lcom/google/android/gms/internal/ads/zzrp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbry:Lcom/google/android/gms/internal/ads/zzaxv;

    :try_start_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzrq;->zzml()Lcom/google/android/gms/internal/ads/zzru;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzru;->zza(Lcom/google/android/gms/internal/ads/zzrp;)Lcom/google/android/gms/internal/ads/zzro;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzro;->zzmi()Z

    move-result v2

    if-nez v2, :cond_26

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No entry contents."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrs:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Lcom/google/android/gms/internal/ads/zzrv;)V

    return-void

    :cond_26
    new-instance v2, Lcom/google/android/gms/internal/ads/zzsc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzro;->zzmj()Ljava/io/InputStream;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzsc;-><init>(Lcom/google/android/gms/internal/ads/zzrx;Ljava/io/InputStream;I)V

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3e

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    return-void

    :cond_3e
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to read from cache."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_46} :catch_48
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_46} :catch_46

    :catch_46
    move-exception v1

    goto :goto_49

    :catch_48
    move-exception v1

    :goto_49
    const-string v2, "Unable to obtain a cache service instance."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrs:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Lcom/google/android/gms/internal/ads/zzrv;)V

    return-void
.end method
