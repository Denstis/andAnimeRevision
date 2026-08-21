###### Class com.google.android.gms.internal.ads.zzbjz (com.google.android.gms.internal.ads.zzbjz)
.class public final Lcom/google/android/gms/internal/ads/zzbjz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzfeo:Lcom/google/android/gms/internal/ads/zzada;

.field private final zzfep:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzada;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfeo:Lcom/google/android/gms/internal/ads/zzada;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfep:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final zzafh()Lcom/google/android/gms/internal/ads/zzada;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfeo:Lcom/google/android/gms/internal/ads/zzada;

    return-object v0
.end method

.method public final zzafi()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbjz;->zzfep:Ljava/lang/Runnable;

    return-object v0
.end method
