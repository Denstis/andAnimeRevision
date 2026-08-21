###### Class com.google.android.gms.internal.ads.zzry (com.google.android.gms.internal.ads.zzry)
.class final Lcom/google/android/gms/internal/ads/zzry;
.super Lcom/google/android/gms/internal/ads/zzaxv;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzaxv<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbrs:Lcom/google/android/gms/internal/ads/zzrv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrv;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzry;->zzbrs:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaxv;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzry;->zzbrs:Lcom/google/android/gms/internal/ads/zzrv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrv;->zza(Lcom/google/android/gms/internal/ads/zzrv;)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->cancel(Z)Z

    move-result p1

    return p1
.end method
