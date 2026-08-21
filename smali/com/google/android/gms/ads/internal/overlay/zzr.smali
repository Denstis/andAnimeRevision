###### Class com.google.android.gms.ads.internal.overlay.zzr (com.google.android.gms.ads.internal.overlay.zzr)
.class public final Lcom/google/android/gms/ads/internal/overlay/zzr;
.super Lcom/google/android/gms/ads/internal/overlay/zzc;
.source ""


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    const-string p1, "AdOverlayParcel is null or does not contain valid overlay type."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaug;->zzdy(Ljava/lang/String;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzdhe:I

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzc;->zzzr:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
