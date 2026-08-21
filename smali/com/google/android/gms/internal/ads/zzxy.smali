###### Class com.google.android.gms.internal.ads.zzxy (com.google.android.gms.internal.ads.zzxy)
.class public final Lcom/google/android/gms/internal/ads/zzxy;
.super Lcom/google/android/gms/internal/ads/zzaqe;
.source ""


# instance fields
.field private zzcfk:Lcom/google/android/gms/internal/ads/zzaqi;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaqe;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzxy;)Lcom/google/android/gms/internal/ads/zzaqi;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzxy;->zzcfk:Lcom/google/android/gms/internal/ads/zzaqi;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .registers 1

    return-void
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .registers 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoaded()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .registers 1

    return-void
.end method

.method public final resume()V
    .registers 1

    return-void
.end method

.method public final setAppPackageName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final setCustomData(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .registers 2

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final show()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzapz;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxy;->zzcfk:Lcom/google/android/gms/internal/ads/zzaqi;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqo;)V
    .registers 3

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzawy;->zzzb:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzyb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzyb;-><init>(Lcom/google/android/gms/internal/ads/zzxy;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzvo;)V
    .registers 2

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method

.method public final zzn(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method

.method public final zzpl()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
