###### Class com.google.android.gms.internal.ads.zzakx (com.google.android.gms.internal.ads.zzakx)
.class public final Lcom/google/android/gms/internal/ads/zzakx;
.super Lcom/google/android/gms/internal/ads/zzakc;
.source ""


# instance fields
.field private final zzddx:Lcom/google/android/gms/internal/ads/zzaqp;

.field private final zzdeg:Lcom/google/android/gms/ads/mediation/Adapter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/mediation/Adapter;Lcom/google/android/gms/internal/ads/zzaqp;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzakc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdeg:Lcom/google/android/gms/ads/mediation/Adapter;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzddx:Lcom/google/android/gms/internal/ads/zzaqp;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzddx:Lcom/google/android/gms/internal/ads/zzaqp;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdeg:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqp;->zzan(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method

.method public final onAdClosed()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzddx:Lcom/google/android/gms/internal/ads/zzaqp;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdeg:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqp;->zzam(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzddx:Lcom/google/android/gms/internal/ads/zzaqp;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdeg:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzaqp;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;I)V

    :cond_d
    return-void
.end method

.method public final onAdImpression()V
    .registers 1

    return-void
.end method

.method public final onAdLeftApplication()V
    .registers 1

    return-void
.end method

.method public final onAdLoaded()V
    .registers 3

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    return-void
.end method

.method public final onAdOpened()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzddx:Lcom/google/android/gms/internal/ads/zzaqp;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdeg:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqp;->zzak(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final onVideoEnd()V
    .registers 1

    return-void
.end method

.method public final onVideoPause()V
    .registers 1

    return-void
.end method

.method public final onVideoPlay()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzace;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzake;)V
    .registers 2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaqv;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzddx:Lcom/google/android/gms/internal/ads/zzaqp;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdeg:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaqt;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqv;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaqv;->getAmount()I

    move-result p1

    invoke-direct {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzaqt;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaqp;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaqt;)V

    :cond_1a
    return-void
.end method

.method public final zzb(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzaqt;)V
    .registers 2

    return-void
.end method

.method public final zzcl(I)V
    .registers 2

    return-void
.end method

.method public final zzde(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final zzrw()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzddx:Lcom/google/android/gms/internal/ads/zzaqp;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdeg:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqp;->zzal(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method

.method public final zzrx()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzddx:Lcom/google/android/gms/internal/ads/zzaqp;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzakx;->zzdeg:Lcom/google/android/gms/ads/mediation/Adapter;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzaqp;->zzap(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    :cond_d
    return-void
.end method
