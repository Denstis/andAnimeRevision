###### Class com.google.android.gms.internal.ads.zzsc (com.google.android.gms.internal.ads.zzsc)
.class final Lcom/google/android/gms/internal/ads/zzsc;
.super Ljava/io/PushbackInputStream;
.source ""


# instance fields
.field private final synthetic zzbrz:Lcom/google/android/gms/internal/ads/zzrx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrx;Ljava/io/InputStream;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbrz:Lcom/google/android/gms/internal/ads/zzrx;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsc;->zzbrz:Lcom/google/android/gms/internal/ads/zzrx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrx;->zzbrs:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Lcom/google/android/gms/internal/ads/zzrv;)V

    invoke-super {p0}, Ljava/io/PushbackInputStream;->close()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
