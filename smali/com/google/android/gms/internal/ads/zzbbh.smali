###### Class com.google.android.gms.internal.ads.zzbbh (com.google.android.gms.internal.ads.zzbbh)
.class public final Lcom/google/android/gms/internal/ads/zzbbh;
.super Lcom/google/android/gms/internal/ads/zzbax;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzazj;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbax;-><init>(Lcom/google/android/gms/internal/ads/zzazj;)V

    return-void
.end method


# virtual methods
.method public final abort()V
    .registers 1

    return-void
.end method

.method public final zzfd(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbax;->zzedf:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzazj;

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbax;->zzfe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzazj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbax;)V

    :cond_11
    const-string v0, "VideoStreamNoopCache is doing nothing."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzeu(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbax;->zzfe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noop"

    const-string v2, "Noop cache is a noop."

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbax;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
