###### Class com.google.android.gms.internal.ads.zzajl (com.google.android.gms.internal.ads.zzajl)
.class final Lcom/google/android/gms/internal/ads/zzajl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaez;


# instance fields
.field private final zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzaxv<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final synthetic zzdbq:Lcom/google/android/gms/internal/ads/zzajj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajj;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzaxv<",
            "TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbq:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_d

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaim;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzaim;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaim;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaim;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method

.method public final zzc(Lorg/json/JSONObject;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbq:Lcom/google/android/gms/internal/ads/zzajj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzajj;->zza(Lcom/google/android/gms/internal/ads/zzajj;)Lcom/google/android/gms/internal/ads/zzair;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzair;->zzd(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_f} :catch_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajl;->zzdbn:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    :catch_16
    return-void
.end method
