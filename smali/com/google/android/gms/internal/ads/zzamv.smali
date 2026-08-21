###### Class com.google.android.gms.internal.ads.zzamv (com.google.android.gms.internal.ads.zzamv)
.class final Lcom/google/android/gms/internal/ads/zzamv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzdfe:Lcom/google/android/gms/internal/ads/zzamt;

.field private final synthetic zzdfm:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamt;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdfe:Lcom/google/android/gms/internal/ads/zzamt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdfm:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzki()Lcom/google/android/gms/ads/internal/overlay/zzn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdfe:Lcom/google/android/gms/internal/ads/zzamt;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamt;->zzb(Lcom/google/android/gms/internal/ads/zzamt;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdfm:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    return-void
.end method
