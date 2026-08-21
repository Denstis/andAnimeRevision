###### Class com.google.android.gms.ads.internal.overlay.zzn (com.google.android.gms.ads.internal.overlay.zzn)
.class public final Lcom/google/android/gms/ads/internal/overlay/zzn;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V
    .registers 6

    iget v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdid:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-nez v0, :cond_1b

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcbs:Lcom/google/android/gms/internal/ads/zztp;

    if-eqz p2, :cond_10

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zztp;->onAdClicked()V

    :cond_10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkh()Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object p2, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhx:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzb;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z

    return-void

    :cond_1b
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzblk:Lcom/google/android/gms/internal/ads/zzaxl;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzaxl;->zzdwg:Z

    const-string v2, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zza(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result p1

    if-nez p1, :cond_41

    const/high16 p1, 0x80000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_41
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_4a

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkj()Lcom/google/android/gms/internal/ads/zzaul;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaul;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
