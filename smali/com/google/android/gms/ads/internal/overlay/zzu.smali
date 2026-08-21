###### Class com.google.android.gms.ads.internal.overlay.zzu (com.google.android.gms.ads.internal.overlay.zzu)
.class public final Lcom/google/android/gms/ads/internal/overlay/zzu;
.super Lcom/google/android/gms/internal/ads/zzann;
.source ""


# instance fields
.field private zzdhb:Z

.field private zzdii:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private zzdij:Z

.field private zzzr:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzann;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdhb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdij:Z

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdii:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzzr:Landroid/app/Activity;

    return-void
.end method

.method private final declared-synchronized zzsz()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdij:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdii:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdii:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzsi()V

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdij:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public final onBackPressed()V
    .registers 1

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdii:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v2, :cond_17

    :goto_11
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzzr:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_17
    if-eqz v1, :cond_1a

    goto :goto_11

    :cond_1a
    if-nez p1, :cond_42

    iget-object p1, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzcbs:Lcom/google/android/gms/internal/ads/zztp;

    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zztp;->onAdClicked()V

    :cond_23
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzzr:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzzr:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "shouldCallOnOverlayOpened"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdii:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz p1, :cond_42

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzsj()V

    :cond_42
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkh()Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzzr:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdii:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhx:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdic:Lcom/google/android/gms/ads/internal/overlay/zzt;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/ads/internal/overlay/zzb;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzt;)Z

    move-result p1

    if-nez p1, :cond_58

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzzr:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_58
    return-void
.end method

.method public final onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzsz()V

    :cond_b
    return-void
.end method

.method public final onPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdii:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->onPause()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzsz()V

    :cond_14
    return-void
.end method

.method public final onRestart()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdhb:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdhb:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdii:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzdhy:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->onResume()V

    :cond_16
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzdhb:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .registers 1

    return-void
.end method

.method public final onStop()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzzr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzsz()V

    :cond_b
    return-void
.end method

.method public final zzag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method

.method public final zzda()V
    .registers 1

    return-void
.end method

.method public final zzsp()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
