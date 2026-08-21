###### Class com.google.android.gms.internal.ads.zzse (com.google.android.gms.internal.ads.zzse)
.class public final Lcom/google/android/gms/internal/ads/zzse;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzrp;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzrp;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzrv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzrv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzrv;->zzb(Lcom/google/android/gms/internal/ads/zzrp;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
