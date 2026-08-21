###### Class com.google.android.gms.ads.AdActivity (com.google.android.gms.ads.AdActivity)
.class public final Lcom/google/android/gms/ads/AdActivity;
.super Landroid/app/Activity;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.AdActivity"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "AdActivity"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# instance fields
.field private zzaaw:Lcom/google/android/gms/internal/ads/zzano;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final zzda()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    if-eqz v0, :cond_e

    :try_start_4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzano;->zzda()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzano;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onBackPressed()V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzano;->zzsp()Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_12
    if-eqz v0, :cond_17

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_17
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzano;->zzag(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzuv;->zzok()Lcom/google/android/gms/internal/ads/zzug;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzug;->zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzano;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    const-string v1, "#007 Could not call remote method."

    if-nez v0, :cond_1b

    const/4 p1, 0x0

    :goto_14
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1b
    :try_start_1b
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzano;->onCreate(Landroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p1

    goto :goto_14
.end method

.method protected final onDestroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzano;->onDestroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected final onPause()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzano;->onPause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_13
    :goto_13
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected final onRestart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzano;->onRestart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzano;->onResume()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzano;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_13
    :goto_13
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onStart()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzano;->onStart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected final onStop()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzaaw:Lcom/google/android/gms/internal/ads/zzano;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzano;->onStop()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxi;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_13
    :goto_13
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final setContentView(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzda()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzda()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzda()V

    return-void
.end method
