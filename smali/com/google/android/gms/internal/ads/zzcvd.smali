###### Class com.google.android.gms.internal.ads.zzcvd (com.google.android.gms.internal.ads.zzcvd)
.class final Lcom/google/android/gms/internal/ads/zzcvd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Lcom/google/android/gms/internal/ads/zzbyz;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgdg:Lcom/google/android/gms/internal/ads/zzcms;

.field private final synthetic zzgih:Lcom/google/android/gms/internal/ads/zzcvb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvb;Lcom/google/android/gms/internal/ads/zzcms;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvd;->zzgih:Lcom/google/android/gms/internal/ads/zzcvb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvd;->zzgdg:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbyz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvd;->zzgih:Lcom/google/android/gms/internal/ads/zzcvb;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvd;->zzgdg:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzcms;->onSuccess(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvd;->zzgih:Lcom/google/android/gms/internal/ads/zzcvb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcvb;->zza(Lcom/google/android/gms/internal/ads/zzcvb;)Lcom/google/android/gms/internal/ads/zzcui;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcui;->onAdMetadataChanged()V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvd;->zzgih:Lcom/google/android/gms/internal/ads/zzcvb;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvd;->zzgih:Lcom/google/android/gms/internal/ads/zzcvb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcvb;->zzb(Lcom/google/android/gms/internal/ads/zzcvb;)Lcom/google/android/gms/internal/ads/zzcud;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcud;->zzamt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbzc;->zzacb()Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccu;->zzd(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbmz;->onAdFailedToLoad(I)V

    const-string v1, "RewardedAdLoader.onFailure"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcwj;->zzc(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvd;->zzgdg:Lcom/google/android/gms/internal/ads/zzcms;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcms;->zzalq()V

    monitor-exit v0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method
