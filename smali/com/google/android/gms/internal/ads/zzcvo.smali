###### Class com.google.android.gms.internal.ads.zzcvo (com.google.android.gms.internal.ads.zzcvo)
.class final Lcom/google/android/gms/internal/ads/zzcvo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcms;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcms<",
        "Lcom/google/android/gms/internal/ads/zzbyz;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgiw:Lcom/google/android/gms/internal/ads/zzcvl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvo;->zzgiw:Lcom/google/android/gms/internal/ads/zzcvl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbyz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvo;->zzgiw:Lcom/google/android/gms/internal/ads/zzcvl;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvo;->zzgiw:Lcom/google/android/gms/internal/ads/zzcvl;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcvl;->zza(Lcom/google/android/gms/internal/ads/zzcvl;Lcom/google/android/gms/internal/ads/zzbyz;)Lcom/google/android/gms/internal/ads/zzbyz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvo;->zzgiw:Lcom/google/android/gms/internal/ads/zzcvl;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcvl;->zza(Lcom/google/android/gms/internal/ads/zzcvl;)Lcom/google/android/gms/internal/ads/zzbyz;

    move-result-object p1

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

.method public final zzalq()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvo;->zzgiw:Lcom/google/android/gms/internal/ads/zzcvl;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvo;->zzgiw:Lcom/google/android/gms/internal/ads/zzcvl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcvl;->zza(Lcom/google/android/gms/internal/ads/zzcvl;Lcom/google/android/gms/internal/ads/zzbyz;)Lcom/google/android/gms/internal/ads/zzbyz;

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
