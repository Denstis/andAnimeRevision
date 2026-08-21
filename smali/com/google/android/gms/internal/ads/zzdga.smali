###### Class com.google.android.gms.internal.ads.zzdga (com.google.android.gms.internal.ads.zzdga)
.class public final Lcom/google/android/gms/internal/ads/zzdga;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzdep;Lcom/google/android/gms/internal/ads/zzden;)Lcom/google/android/gms/internal/ads/zzdel;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdep;",
            "Lcom/google/android/gms/internal/ads/zzden<",
            "Lcom/google/android/gms/internal/ads/zzdel;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzdel;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdgd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdgd;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Lcom/google/android/gms/internal/ads/zzdex;)V

    const-class p1, Lcom/google/android/gms/internal/ads/zzdel;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Lcom/google/android/gms/internal/ads/zzdep;Lcom/google/android/gms/internal/ads/zzden;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzdev;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdey;->zza(Lcom/google/android/gms/internal/ads/zzdev;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdel;

    return-object p0
.end method
