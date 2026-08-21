###### Class com.google.android.gms.internal.ads.zzaew (com.google.android.gms.internal.ads.zzaew)
.class final Lcom/google/android/gms/internal/ads/zzaew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaez;


# instance fields
.field private final synthetic zzcyd:Lcom/google/android/gms/internal/ads/zzaxv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaew;->zzcyd:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->zzcyd:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaim;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaim;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzc(Lorg/json/JSONObject;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaew;->zzcyd:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z

    return-void
.end method
