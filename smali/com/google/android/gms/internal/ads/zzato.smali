###### Class com.google.android.gms.internal.ads.zzato (com.google.android.gms.internal.ads.zzato)
.class final Lcom/google/android/gms/internal/ads/zzato;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzdqa:Lcom/google/android/gms/internal/ads/zzaxv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaxv;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzato;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzato;->zzdqa:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzato;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzato;->zzdqa:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->set(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_12
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_b} :catch_10
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_b} :catch_e
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    goto :goto_13

    :catch_e
    move-exception v0

    goto :goto_13

    :catch_10
    move-exception v0

    goto :goto_13

    :catch_12
    move-exception v0

    :goto_13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzato;->zzdqa:Lcom/google/android/gms/internal/ads/zzaxv;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxv;->setException(Ljava/lang/Throwable;)Z

    const-string v1, "Exception while getting advertising Id info"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
