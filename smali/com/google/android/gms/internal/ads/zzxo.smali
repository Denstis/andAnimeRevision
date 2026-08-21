###### Class com.google.android.gms.internal.ads.zzxo (com.google.android.gms.internal.ads.zzxo)
.class final Lcom/google/android/gms/internal/ads/zzxo;
.super Lcom/google/android/gms/internal/ads/zzvc;
.source ""


# instance fields
.field final synthetic zzcff:Lcom/google/android/gms/internal/ads/zzxm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzxm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxo;->zzcff:Lcom/google/android/gms/internal/ads/zzxm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvc;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzxm;Lcom/google/android/gms/internal/ads/zzxp;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(Lcom/google/android/gms/internal/ads/zzxm;)V

    return-void
.end method


# virtual methods
.method public final getMediationAdapterClassName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zztx;I)V
    .registers 3

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzes(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzawy;->zzzb:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzxr;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzxr;-><init>(Lcom/google/android/gms/internal/ads/zzxo;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zztx;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzxo;->zza(Lcom/google/android/gms/internal/ads/zztx;I)V

    return-void
.end method

.method public final zzju()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
