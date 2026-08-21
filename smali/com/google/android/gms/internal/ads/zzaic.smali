###### Class com.google.android.gms.internal.ads.zzaic (com.google.android.gms.internal.ads.zzaic)
.class final Lcom/google/android/gms/internal/ads/zzaic;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaxz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaxz<",
        "Lcom/google/android/gms/internal/ads/zzail;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdal:Lcom/google/android/gms/internal/ads/zzaia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaia;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzdal:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;)V
    .registers 2

    const-string p1, "Releasing engine reference."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaic;->zzdal:Lcom/google/android/gms/internal/ads/zzaia;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaia;->zza(Lcom/google/android/gms/internal/ads/zzaia;)Lcom/google/android/gms/internal/ads/zzaie;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaie;->zzrh()V

    return-void
.end method
