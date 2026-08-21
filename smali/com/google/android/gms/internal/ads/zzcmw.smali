###### Class com.google.android.gms.internal.ads.zzcmw (com.google.android.gms.internal.ads.zzcmw)
.class final Lcom/google/android/gms/internal/ads/zzcmw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Lcom/google/android/gms/internal/ads/zzbkk;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgdg:Lcom/google/android/gms/internal/ads/zzcms;

.field private final synthetic zzgdh:Lcom/google/android/gms/internal/ads/zzbtl;

.field private final synthetic zzgdi:Lcom/google/android/gms/internal/ads/zzcmu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmu;Lcom/google/android/gms/internal/ads/zzcms;Lcom/google/android/gms/internal/ads/zzbtl;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmw;->zzgdi:Lcom/google/android/gms/internal/ads/zzcmu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmw;->zzgdg:Lcom/google/android/gms/internal/ads/zzcms;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmw;->zzgdh:Lcom/google/android/gms/internal/ads/zzbtl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmw;->zzgdi:Lcom/google/android/gms/internal/ads/zzcmu;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmw;->zzgdg:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzcms;->onSuccess(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmw;->zzgdh:Lcom/google/android/gms/internal/ads/zzbtl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtl;->zzacb()Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccu;->zzd(Ljava/lang/Throwable;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbmz;->onAdFailedToLoad(I)V

    const-string v0, "NativeAdLoader.onFailure"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzcwj;->zzc(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmw;->zzgdg:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcms;->zzalq()V

    return-void
.end method
