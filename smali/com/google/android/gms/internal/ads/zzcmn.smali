###### Class com.google.android.gms.internal.ads.zzcmn (com.google.android.gms.internal.ads.zzcmn)
.class final Lcom/google/android/gms/internal/ads/zzcmn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Lcom/google/android/gms/internal/ads/zzbrs;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgcv:Lcom/google/android/gms/internal/ads/zzbso;

.field private final synthetic zzgcw:Lcom/google/android/gms/internal/ads/zzcmk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmk;Lcom/google/android/gms/internal/ads/zzbso;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzgcw:Lcom/google/android/gms/internal/ads/zzcmk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzgcv:Lcom/google/android/gms/internal/ads/zzbso;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzgcw:Lcom/google/android/gms/internal/ads/zzcmk;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzgcw:Lcom/google/android/gms/internal/ads/zzcmk;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcmk;->zza(Lcom/google/android/gms/internal/ads/zzcmk;Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzgcw:Lcom/google/android/gms/internal/ads/zzcmk;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcmk;->zza(Lcom/google/android/gms/internal/ads/zzcmk;Lcom/google/android/gms/internal/ads/zzbrs;)Lcom/google/android/gms/internal/ads/zzbrs;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkk;->zzafa()V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzgcw:Lcom/google/android/gms/internal/ads/zzcmk;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzgcw:Lcom/google/android/gms/internal/ads/zzcmk;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcmk;->zza(Lcom/google/android/gms/internal/ads/zzcmk;Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmn;->zzgcv:Lcom/google/android/gms/internal/ads/zzbso;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbso;->zzacb()Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccu;->zzd(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbmz;->onAdFailedToLoad(I)V

    const-string v1, "InterstitialAdManagerShim.onFailure"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcwj;->zzc(Ljava/lang/Throwable;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method
