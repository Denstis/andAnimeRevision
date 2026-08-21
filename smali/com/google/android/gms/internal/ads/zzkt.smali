###### Class com.google.android.gms.internal.ads.zzkt (com.google.android.gms.internal.ads.zzkt)
.class public final Lcom/google/android/gms/internal/ads/zzkt;
.super Ljava/lang/Exception;
.source ""


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "Failed to query underlying media codecs"

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzkr;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
