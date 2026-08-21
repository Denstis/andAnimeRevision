###### Class com.google.android.gms.internal.ads.zzczd (com.google.android.gms.internal.ads.zzczd)
.class public final Lcom/google/android/gms/internal/ads/zzczd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# direct methods
.method public static zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbo$zza;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzczc;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzczc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1388

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzczc;->zzdk(I)Lcom/google/android/gms/internal/ads/zzbo$zza;

    move-result-object p0

    return-object p0
.end method
