###### Class com.google.android.gms.internal.ads.zzcmf (com.google.android.gms.internal.ads.zzcmf)
.class final Lcom/google/android/gms/internal/ads/zzcmf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdcz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdcz<",
        "Lcom/google/android/gms/internal/ads/zzbii;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgch:Lcom/google/android/gms/internal/ads/zzbie;

.field private final synthetic zzgci:Lcom/google/android/gms/internal/ads/zzcma;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzbie;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgch:Lcom/google/android/gms/internal/ads/zzbie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbii;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcma;->zza(Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcma;->zzgby:Lcom/google/android/gms/internal/ads/zzbii;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzcma;->zzgby:Lcom/google/android/gms/internal/ads/zzbii;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbkk;->destroy()V

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzcma;->zzgby:Lcom/google/android/gms/internal/ads/zzbii;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcma;->zza(Lcom/google/android/gms/internal/ads/zzcma;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcma;->zza(Lcom/google/android/gms/internal/ads/zzcma;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbii;->zzaeu()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzq;->zzkl()Lcom/google/android/gms/internal/ads/zzaur;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzaur;->zzvr()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcma;->zza(Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzbii;)Lcom/google/android/gms/ads/internal/overlay/zzq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcma;->zzb(Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzbii;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbii;->zzaev()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/ads/internal/overlay/zzq;->zzae(Z)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcma;->zza(Lcom/google/android/gms/internal/ads/zzcma;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcma;->zzc(Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzbii;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcma;->zza(Lcom/google/android/gms/internal/ads/zzcma;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcma;->zzb(Lcom/google/android/gms/internal/ads/zzcma;)Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzua;->heightPixels:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcma;->zza(Lcom/google/android/gms/internal/ads/zzcma;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcma;->zzb(Lcom/google/android/gms/internal/ads/zzcma;)Lcom/google/android/gms/internal/ads/zzua;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzua;->widthPixels:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setMinimumWidth(I)V
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_99

    :try_start_7d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcma;->zzc(Lcom/google/android/gms/internal/ads/zzcma;)Lcom/google/android/gms/internal/ads/zzqx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbik;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzbik;-><init>(Lcom/google/android/gms/internal/ads/zzbii;Lcom/google/android/gms/internal/ads/zzvl;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzqx;->zza(Lcom/google/android/gms/internal/ads/zzqw;)V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_8d} :catch_8e
    .catchall {:try_start_7d .. :try_end_8d} :catchall_99

    goto :goto_94

    :catch_8e
    move-exception v1

    :try_start_8f
    const-string v2, "RemoteException when onAppOpenAdLoaded is called"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaxi;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_94
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbkk;->zzafa()V

    monitor-exit v0

    return-void

    :catchall_99
    move-exception p1

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_8f .. :try_end_9b} :catchall_99

    throw p1
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgci:Lcom/google/android/gms/internal/ads/zzcma;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcma;->zza(Lcom/google/android/gms/internal/ads/zzcma;Lcom/google/android/gms/internal/ads/zzddi;)Lcom/google/android/gms/internal/ads/zzddi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmf;->zzgch:Lcom/google/android/gms/internal/ads/zzbie;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbie;->zzacb()Lcom/google/android/gms/internal/ads/zzbmz;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccu;->zzd(Ljava/lang/Throwable;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbmz;->onAdFailedToLoad(I)V

    const-string v1, "AppOpenAdManagerShim.onFailure"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzcwj;->zzc(Ljava/lang/Throwable;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method
